.class public Lcom/android/fileexplorer/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/CollectionUtils$Task;
    }
.end annotation


# static fields
.field public static final DEFAULT_GROUPING_NUM:I

.field public static final TAG:Ljava/lang/String; = "CollectionUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/CollectionUtils;->DEFAULT_GROUPING_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/CollectionUtils;->lambda$partitionTask$0(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static getGroupNumber(Ljava/util/List;)I
    .registers 4

    if-eqz p0, :cond_20

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_20

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    mul-int/lit8 v2, v1, 0x64

    if-ge v0, v2, :cond_16

    const/16 p0, 0x64

    return p0

    :cond_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    div-int/2addr p0, v1

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$partitionTask$0(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p2, :cond_b

    invoke-interface {p2, p0}, Lcom/android/fileexplorer/util/CollectionUtils$Task;->run(Ljava/util/List;)V

    :cond_b
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static partition(Ljava/util/List;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_3b

    if-lez p1, :cond_33

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_e
    move-object v2, v1

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    if-nez v2, :cond_1c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2d
    if-eqz v2, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    return-object v0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static partitionTask(Ljava/util/List;Lcom/android/fileexplorer/util/CollectionUtils$Task;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/fileexplorer/util/CollectionUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/fileexplorer/util/CollectionUtils;->getGroupNumber(Ljava/util/List;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/CollectionUtils;->partition(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "all fileItems size:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " partition size:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CollectionUtils"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2a
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object v2

    sget-object v3, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->IO:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    new-instance v4, Lcom/android/fileexplorer/mirror/fragments/a;

    invoke-direct {v4, v0, v3, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/a;-><init>(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_4f
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_52} :catch_53

    goto :goto_68

    :catch_53
    move-exception p0

    const-string p1, "partitionTask error:"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    return-void
.end method
