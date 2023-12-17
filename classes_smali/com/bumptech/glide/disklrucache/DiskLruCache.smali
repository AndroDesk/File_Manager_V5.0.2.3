.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    }
.end annotation


# static fields
.field public static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field public static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field public static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field public static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field public static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field public final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 12
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 14
    const/4 v5, 0x0

    .line 15
    const/high16 v6, 0x3f400000  # 0.75f

    .line 17
    const/4 v7, 0x1

    .line 18
    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 21
    iput-object v4, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 23
    iput-wide v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 25
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 34
    new-instance v15, Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v15, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x1

    .line 42
    const-wide/16 v11, 0x3c

    .line 44
    move-object v8, v2

    .line 45
    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 48
    iput-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 50
    new-instance v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;

    .line 52
    invoke-direct {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    .line 55
    iput-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 57
    iput-object v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 59
    move/from16 v2, p2

    .line 61
    iput v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 63
    new-instance v2, Ljava/io/File;

    .line 65
    const-string v3, "journal"

    .line 67
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    iput-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 72
    new-instance v2, Ljava/io/File;

    .line 74
    const-string v3, "journal.tmp"

    .line 76
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    iput-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 81
    new-instance v2, Ljava/io/File;

    .line 83
    const-string v3, "journal.bkp"

    .line 85
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    iput-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 90
    move/from16 v1, p3

    .line 92
    iput v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 94
    move-wide/from16 v1, p4

    .line 96
    iput-wide v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 98
    return-void
.end method

.method public static synthetic access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1800(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 4
    return-void
.end method

.method public static synthetic access$502(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 3
    return p1
.end method

.method private checkNotClosed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "cache is closed"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private static closeWriter(Ljava/io/Writer;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_a

    .line 7
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 17
    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 20
    invoke-static {v1}, Landroidx/appcompat/widget/x;->i(Landroid/os/StrictMode$ThreadPolicy$Builder;)Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 31
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_25

    .line 34
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception p0

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 42
    throw p0
.end method

.method private declared-synchronized completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .registers 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p1, :cond_108

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_4d

    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_4d

    .line 21
    move v2, v1

    .line 22
    :goto_15
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 24
    if-ge v2, v3, :cond_4d

    .line 26
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z

    .line 29
    move-result-object v3

    .line 30
    aget-boolean v3, v3, v2

    .line 32
    if-eqz v3, :cond_33

    .line 34
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_30

    .line 44
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_10e

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_15

    .line 52
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 55
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v0, "Newly created entry didn\'t create value for index "

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_4d
    :goto_4d
    iget p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 80
    if-ge v1, p1, :cond_81

    .line 82
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 85
    move-result-object p1

    .line 86
    if-eqz p2, :cond_7b

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_7e

    .line 94
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 101
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    .line 104
    move-result-object p1

    .line 105
    aget-wide v3, p1, v1

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 110
    move-result-wide v5

    .line 111
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    .line 114
    move-result-object p1

    .line 115
    aput-wide v5, p1, v1

    .line 117
    iget-wide v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 119
    sub-long/2addr v7, v3

    .line 120
    add-long/2addr v7, v5

    .line 121
    iput-wide v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 123
    goto :goto_7e

    .line 124
    :cond_7b
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 127
    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    .line 129
    goto :goto_4d

    .line 130
    :cond_81
    iget p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 132
    const/4 v1, 0x1

    .line 133
    add-int/2addr p1, v1

    .line 134
    iput p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 136
    const/4 p1, 0x0

    .line 137
    invoke-static {v0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 140
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    .line 143
    move-result p1

    .line 144
    or-int/2addr p1, p2

    .line 145
    const/16 v2, 0xa

    .line 147
    const/16 v3, 0x20

    .line 149
    if-eqz p1, :cond_c9

    .line 151
    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 154
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 156
    const-string v1, "CLEAN"

    .line 158
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 161
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 163
    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 166
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 168
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 175
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 177
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 184
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 186
    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 189
    if-eqz p2, :cond_ec

    .line 191
    iget-wide p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 193
    const-wide/16 v1, 0x1

    .line 195
    add-long/2addr v1, p1

    .line 196
    iput-wide v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 198
    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1302(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J

    .line 201
    goto :goto_ec

    .line 202
    :cond_c9
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 204
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 213
    const-string p2, "REMOVE"

    .line 215
    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 218
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 220
    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 223
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 225
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 232
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 234
    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 237
    :cond_ec
    :goto_ec
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 239
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->flushWriter(Ljava/io/Writer;)V

    .line 242
    iget-wide p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 244
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 246
    cmp-long p1, p1, v0

    .line 248
    if-gtz p1, :cond_ff

    .line 250
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_106

    .line 256
    :cond_ff
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 258
    iget-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 260
    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_106
    .catchall {:try_start_33 .. :try_end_106} :catchall_10e

    .line 263
    :cond_106
    monitor-exit p0

    .line 264
    return-void

    .line 265
    :cond_108
    :try_start_108
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 267
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 270
    throw p1
    :try_end_10e
    .catchall {:try_start_108 .. :try_end_10e} :catchall_10e

    .line 271
    :catchall_10e
    move-exception p1

    .line 272
    monitor-exit p0

    .line 273
    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    new-instance p0, Ljava/io/IOException;

    .line 16
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 19
    throw p0

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 9

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1d

    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1300(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5d

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1f

    .line 5
    :cond_1d
    monitor-exit p0

    return-object v2

    :cond_1f
    if-nez v0, :cond_2c

    .line 6
    :try_start_21
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 7
    iget-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 8
    :cond_2c
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_5d

    if-eqz p2, :cond_34

    .line 9
    monitor-exit p0

    return-object v2

    .line 10
    :cond_34
    :goto_34
    :try_start_34
    new-instance p2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    invoke-direct {p2, p0, v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 11
    invoke-static {v0, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 12
    iget-object p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v0, "DIRTY"

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 13
    iget-object p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 14
    iget-object p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 15
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 16
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->flushWriter(Ljava/io/Writer;)V
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_5d

    .line 17
    monitor-exit p0

    return-object p2

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static flushWriter(Ljava/io/Writer;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_a

    .line 7
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 17
    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 20
    invoke-static {v1}, Landroidx/appcompat/widget/x;->i(Landroid/os/StrictMode$ThreadPolicy$Builder;)Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 31
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_25

    .line 34
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception p0

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 42
    throw p0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3
    sget-object v1, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 8
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private journalRebuildRequired()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 3
    const/16 v1, 0x7d0

    .line 5
    if-lt v0, v1, :cond_10

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .registers 14

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p3, v0

    .line 5
    if-lez v0, :cond_87

    .line 7
    if-lez p2, :cond_7f

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    const-string v1, "journal.bkp"

    .line 13
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2a

    .line 22
    new-instance v1, Ljava/io/File;

    .line 24
    const-string v2, "journal"

    .line 26
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_26

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 43
    :cond_2a
    :goto_2a
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 45
    move-object v3, v0

    .line 46
    move-object v4, p0

    .line 47
    move v5, p1

    .line 48
    move v6, p2

    .line 49
    move-wide v7, p3

    .line 50
    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 53
    iget-object v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6e

    .line 61
    :try_start_3c
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournal()V

    .line 64
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->processJournal()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    .line 67
    return-object v0

    .line 68
    :catch_43
    move-exception v1

    .line 69
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v4, "DiskLruCache "

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v4, " is corrupt: "

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", removing"

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->delete()V

    .line 111
    :cond_6e
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 114
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 116
    move-object v3, v0

    .line 117
    move-object v4, p0

    .line 118
    move v5, p1

    .line 119
    move v6, p2

    .line 120
    move-wide v7, p3

    .line 121
    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 124
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 127
    return-object v0

    .line 128
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 130
    const-string p1, "valueCount <= 0"

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0

    .line 136
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    const-string p1, "maxSize <= 0"

    .line 140
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p0
.end method

.method private processJournal()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_51

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 28
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_34

    .line 35
    :goto_22
    iget v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 37
    if-ge v3, v2, :cond_f

    .line 39
    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 41
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    .line 44
    move-result-object v2

    .line 45
    aget-wide v6, v2, v3

    .line 47
    add-long/2addr v4, v6

    .line 48
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_22

    .line 53
    :cond_34
    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 57
    :goto_38
    iget v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 59
    if-ge v3, v2, :cond_4d

    .line 61
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 68
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_38

    .line 78
    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 81
    goto :goto_f

    .line 82
    :cond_51
    return-void
.end method

.method private readJournal()V
    .registers 10

    .line 1
    const-string v0, ", "

    .line 3
    new-instance v1, Lcom/bumptech/glide/disklrucache/StrictLineReader;

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 9
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 17
    :try_start_10
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    const-string v7, "libcore.io.DiskLruCache"

    .line 39
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_8c

    .line 45
    const-string v7, "1"

    .line 47
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_8c

    .line 53
    iget v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_8c

    .line 65
    iget v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_8c

    .line 77
    const-string v4, ""

    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v4
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_ba

    .line 83
    if-eqz v4, :cond_8c

    .line 85
    const/4 v0, 0x0

    .line 86
    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-direct {p0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_5c} :catch_5f
    .catchall {:try_start_55 .. :try_end_5c} :catchall_ba

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_55

    .line 96
    :catch_5f
    :try_start_5f
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 98
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 101
    move-result v2

    .line 102
    sub-int/2addr v0, v2

    .line 103
    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 105
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_72

    .line 111
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 114
    goto :goto_88

    .line 115
    :cond_72
    new-instance v0, Ljava/io/BufferedWriter;

    .line 117
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 119
    new-instance v3, Ljava/io/FileOutputStream;

    .line 121
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 123
    const/4 v5, 0x1

    .line 124
    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 127
    sget-object v4, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 129
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 132
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 135
    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_ba

    .line 137
    :goto_88
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    return-void

    .line 141
    :cond_8c
    :try_start_8c
    new-instance v4, Ljava/io/IOException;

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string v8, "unexpected journal header: ["

    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, "]"

    .line 176
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    throw v4
    :try_end_ba
    .catchall {:try_start_8c .. :try_end_ba} :catchall_ba

    .line 187
    :catchall_ba
    move-exception v0

    .line 188
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 10

    .line 1
    const/16 v0, 0x20

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v1

    .line 7
    const-string v2, "unexpected journal line: "

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v1, v3, :cond_91

    .line 12
    add-int/lit8 v4, v1, 0x1

    .line 14
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 17
    move-result v0

    .line 18
    if-ne v0, v3, :cond_28

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x6

    .line 25
    if-ne v1, v5, :cond_2c

    .line 27
    const-string v5, "REMOVE"

    .line 29
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2c

    .line 35
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void

    .line 41
    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    :cond_2c
    iget-object v5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 47
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 53
    const/4 v6, 0x0

    .line 54
    if-nez v5, :cond_41

    .line 56
    new-instance v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 58
    invoke-direct {v5, p0, v4, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 61
    iget-object v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 63
    invoke-virtual {v7, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_41
    const/4 v4, 0x5

    .line 67
    if-eq v0, v3, :cond_64

    .line 69
    if-ne v1, v4, :cond_64

    .line 71
    const-string v7, "CLEAN"

    .line 73
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_64

    .line 79
    const/4 v1, 0x1

    .line 80
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    const-string v0, " "

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {v5, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 94
    invoke-static {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 97
    invoke-static {v5, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$900(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 100
    goto :goto_86

    .line 101
    :cond_64
    if-ne v0, v3, :cond_79

    .line 103
    if-ne v1, v4, :cond_79

    .line 105
    const-string v4, "DIRTY"

    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_79

    .line 113
    new-instance p1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 115
    invoke-direct {p1, p0, v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 118
    invoke-static {v5, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 121
    goto :goto_86

    .line 122
    :cond_79
    if-ne v0, v3, :cond_87

    .line 124
    const/4 v0, 0x4

    .line 125
    if-ne v1, v0, :cond_87

    .line 127
    const-string v0, "READ"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_87

    .line 135
    :goto_86
    return-void

    .line 136
    :cond_87
    new-instance v0, Ljava/io/IOException;

    .line 138
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    throw v0

    .line 146
    :cond_91
    new-instance v0, Ljava/io/IOException;

    .line 148
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 9
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    .line 11
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 13
    new-instance v2, Ljava/io/FileOutputStream;

    .line 15
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 17
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 20
    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 22
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 25
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e9

    .line 28
    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 33
    const-string v1, "\n"

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 38
    const-string v1, "1"

    .line 40
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 43
    const-string v1, "\n"

    .line 45
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 57
    const-string v1, "\n"

    .line 59
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    const-string v1, "\n"

    .line 73
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    const-string v1, "\n"

    .line 78
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 83
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v1

    .line 91
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_ad

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 103
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 106
    move-result-object v3

    .line 107
    const/16 v4, 0xa

    .line 109
    if-eqz v3, :cond_8a

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v5, "DIRTY "

    .line 118
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    goto :goto_5a

    .line 139
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v5, "CLEAN "

    .line 146
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_1b .. :try_end_ac} :catchall_e4

    .line 173
    goto :goto_5a

    .line 174
    :cond_ad
    :try_start_ad
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 177
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 182
    move-result v0

    .line 183
    const/4 v1, 0x1

    .line 184
    if-eqz v0, :cond_c0

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 188
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 190
    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 193
    :cond_c0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 195
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 197
    const/4 v3, 0x0

    .line 198
    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 201
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    new-instance v0, Ljava/io/BufferedWriter;

    .line 208
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 210
    new-instance v3, Ljava/io/FileOutputStream;

    .line 212
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 214
    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 217
    sget-object v1, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 219
    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 222
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 225
    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_e2
    .catchall {:try_start_ad .. :try_end_e2} :catchall_e9

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 229
    :catchall_e4
    move-exception v1

    .line 230
    :try_start_e5
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 233
    throw v1
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_e9

    .line 234
    :catchall_e9
    move-exception v0

    .line 235
    monitor-exit p0

    .line 236
    throw v0
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3

    .line 1
    if-eqz p2, :cond_5

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p0, Ljava/io/IOException;

    .line 15
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 18
    throw p0
.end method

.method private trimToSize()V
    .registers 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 3
    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-lez v0, :cond_22

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_22
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    .line 4
    if-nez v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 35
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_16

    .line 41
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 54
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    monitor-exit p0

    .line 64
    throw v0
.end method

.method public delete()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->close()V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 9
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 4

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized flush()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->flushWriter(Ljava/io/Writer;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_6e

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_11

    .line 16
    monitor-exit p0

    .line 17
    return-object v1

    .line 18
    :cond_11
    :try_start_11
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    .line 21
    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_6e

    .line 22
    if-nez v2, :cond_19

    .line 24
    monitor-exit p0

    .line 25
    return-object v1

    .line 26
    :cond_19
    :try_start_19
    iget-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 28
    array-length v3, v2

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_1d
    if-ge v4, v3, :cond_2c

    .line 32
    aget-object v5, v2, v4

    .line 34
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 37
    move-result v5
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_6e

    .line 38
    if-nez v5, :cond_29

    .line 40
    monitor-exit p0

    .line 41
    return-object v1

    .line 42
    :cond_29
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_1d

    .line 45
    :cond_2c
    :try_start_2c
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 51
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 53
    const-string v2, "READ"

    .line 55
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 58
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 60
    const/16 v2, 0x20

    .line 62
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 65
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 67
    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 70
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 72
    const/16 v2, 0xa

    .line 74
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 77
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_59

    .line 83
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 90
    :cond_59
    new-instance v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    .line 92
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1300(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    .line 95
    move-result-wide v3

    .line 96
    iget-object v5, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 98
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    .line 101
    move-result-object v6

    .line 102
    const/4 v7, 0x0

    .line 103
    move-object v0, v8

    .line 104
    move-object v1, p0

    .line 105
    move-object v2, p1

    .line 106
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    :try_end_6c
    .catchall {:try_start_2c .. :try_end_6c} :catchall_6e

    .line 109
    monitor-exit p0

    .line 110
    return-object v8

    .line 111
    :catchall_6e
    move-exception p1

    .line 112
    monitor-exit p0

    .line 113
    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    .line 4
    if-nez v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_8d

    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_17

    .line 22
    goto/16 :goto_8d

    .line 24
    :cond_17
    :goto_17
    iget v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 26
    if-ge v1, v2, :cond_59

    .line 28
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_43

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2c

    .line 44
    goto :goto_43

    .line 45
    :cond_2c
    new-instance p1, Ljava/io/IOException;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v1, "failed to delete "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    :cond_43
    :goto_43
    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 70
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    .line 73
    move-result-object v4

    .line 74
    aget-wide v5, v4, v1

    .line 76
    sub-long/2addr v2, v5

    .line 77
    iput-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 79
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    .line 82
    move-result-object v2

    .line 83
    const-wide/16 v3, 0x0

    .line 85
    aput-wide v3, v2, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_17

    .line 90
    :cond_59
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 92
    const/4 v1, 0x1

    .line 93
    add-int/2addr v0, v1

    .line 94
    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 98
    const-string v2, "REMOVE"

    .line 100
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 105
    const/16 v2, 0x20

    .line 107
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 112
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 117
    const/16 v2, 0xa

    .line 119
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 124
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_8b

    .line 133
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_8f

    .line 140
    :cond_8b
    monitor-exit p0

    .line 141
    return v1

    .line 142
    :cond_8d
    :goto_8d
    monitor-exit p0

    .line 143
    return v1

    .line 144
    :catchall_8f
    move-exception p1

    .line 145
    monitor-exit p0

    .line 146
    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-wide p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    iget-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized size()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method
