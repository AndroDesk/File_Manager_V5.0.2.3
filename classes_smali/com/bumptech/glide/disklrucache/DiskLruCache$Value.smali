.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Value"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field public final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
    .registers 7

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    .line 5
    iput-object p5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    .line 6
    iput-object p6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    .line 5
    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1700(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    .line 3
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public getLength(I)J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    .line 3
    aget-wide v1, v0, p1

    .line 5
    return-wide v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    .line 5
    aget-object p1, v1, p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
