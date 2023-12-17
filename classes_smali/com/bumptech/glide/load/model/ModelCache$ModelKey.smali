.class final Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<",
            "TA;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 10
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 11
    if-nez v1, :cond_11

    .line 13
    new-instance v1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 15
    invoke-direct {v1}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;-><init>()V

    .line 18
    :cond_11
    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->init(Ljava/lang/Object;II)V

    .line 21
    return-object v1

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .line 24
    throw p0
.end method

.method private init(Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    .line 5
    iput p3, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    .line 7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1e

    .line 6
    check-cast p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 8
    iget v0, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    .line 10
    iget v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    .line 12
    if-ne v0, v2, :cond_1e

    .line 14
    iget v0, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    .line 16
    iget v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    .line 18
    if-ne v0, v2, :cond_1e

    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    .line 22
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1e

    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1e
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public release()V
    .registers 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    .line 11
    throw v1
.end method
