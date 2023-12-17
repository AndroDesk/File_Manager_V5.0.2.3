.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

.field public final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 4
    invoke-static {p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 3
    return-object p0
.end method

.method private newInputStream(I)Ljava/io/InputStream;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p0, :cond_25

    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 14
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_16

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2b

    .line 22
    return-object v2

    .line 23
    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;

    .line 25
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 27
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_21} :catch_23
    .catchall {:try_start_16 .. :try_end_21} :catchall_2b

    .line 34
    :try_start_21
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :catch_23
    monitor-exit v0

    .line 37
    return-object v2

    .line 38
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 43
    throw p1

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    .line 46
    throw p1
.end method


# virtual methods
.method public abort()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2100(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 7
    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    :try_start_4
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    .line 8
    :catch_7
    :cond_7
    return-void
.end method

.method public commit()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2100(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 7
    iput-boolean v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 9
    return-void
.end method

.method public getFile(I)Ljava/io/File;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p0, :cond_35

    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 14
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_18

    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 22
    const/4 v2, 0x1

    .line 23
    aput-boolean v2, v1, p1

    .line 25
    :cond_18
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 27
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 30
    move-result-object p1

    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 33
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_33

    .line 43
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 45
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_33
    monitor-exit v0

    .line 53
    return-object p1

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 59
    throw p1

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    .line 62
    throw p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    return-object p1
.end method

.method public set(ILjava/lang/String;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    new-instance p1, Ljava/io/OutputStreamWriter;

    .line 13
    sget-object v2, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    invoke-direct {p1, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 18
    :try_start_11
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 21
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p2

    .line 26
    move-object v0, p1

    .line 27
    goto :goto_1c

    .line 28
    :catchall_1b
    move-exception p2

    .line 29
    :goto_1c
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 32
    throw p2
.end method
