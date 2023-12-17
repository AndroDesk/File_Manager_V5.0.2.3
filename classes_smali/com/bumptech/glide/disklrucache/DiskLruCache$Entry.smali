.class final Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field public cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

.field public dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field public final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V
    .registers 9

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 9
    :goto_2e
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_64
    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$1302(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 3
    return-object p1
.end method

.method public static synthetic access$900(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 3
    const-string v1, "unexpected journal line: "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 4
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    .line 7
    move-result v1

    .line 8
    if-ne v0, v1, :cond_20

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    :try_start_a
    array-length v1, p1

    .line 12
    if-ge v0, v1, :cond_1a

    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 16
    aget-object v2, p1, v0

    .line 18
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 21
    move-result-wide v2

    .line 22
    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void

    .line 28
    :catch_1b
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    .line 31
    move-result-object p1

    .line 32
    throw p1

    .line 33
    :cond_20
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    .line 36
    move-result-object p1

    .line 37
    throw p1
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 3
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 3
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public getLengths()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_9
    if-ge v3, v2, :cond_18

    .line 12
    aget-wide v4, v1, v3

    .line 14
    const/16 v6, 0x20

    .line 16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_9

    .line 25
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
