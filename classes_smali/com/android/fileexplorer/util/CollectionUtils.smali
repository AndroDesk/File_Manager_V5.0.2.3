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
.field public static final DEFAULT_GROUPING_NUM:I = 0x64

.field public static final TAG:Ljava/lang/String; = "CollectionUtils"


# direct methods
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

    .line 1
    if-eqz p0, :cond_20

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_20

    .line 10
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    sget v1, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 16
    mul-int/lit8 v2, v1, 0x64

    .line 18
    if-ge v0, v2, :cond_16

    .line 20
    const/16 p0, 0x64

    .line 22
    return p0

    .line 23
    :cond_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    move-result p0

    .line 27
    mul-int/lit8 v1, v1, 0x2

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    div-int/2addr p0, v1

    .line 32
    return p0

    .line 33
    :cond_20
    :goto_20
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method private static synthetic lambda$partitionTask$0(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/List;

    .line 7
    if-eqz p2, :cond_b

    .line 9
    invoke-interface {p2, p0}, Lcom/android/fileexplorer/util/CollectionUtils$Task;->run(Ljava/util/List;)V

    .line 12
    :cond_b
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 15
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

    .line 1
    if-eqz p0, :cond_3b

    .line 3
    if-lez p1, :cond_33

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_e
    move-object v2, v1

    .line 16
    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2d

    .line 22
    if-nez v2, :cond_1c

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    move-result v3

    .line 40
    if-ne v3, p1, :cond_f

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_e

    .line 46
    :cond_2d
    if-eqz v2, :cond_32

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_32
    return-object v0

    .line 52
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p1, "Size must be greater than 0"

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    const-string p1, "List must not be null"

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
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

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/CollectionUtils;->getGroupNumber(Ljava/util/List;)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/CollectionUtils;->partition(Ljava/util/List;I)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "all fileItems size:"

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    move-result p0

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p0, " partition size:"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    move-result p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    const-string v1, "CollectionUtils"

    .line 40
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_2a
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    move-result v2

    .line 49
    invoke-direct {p0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 55
    move-result-object v2

    .line 56
    sget-object v3, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->IO:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    .line 58
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    .line 61
    move-result-object v2

    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    move-result v4

    .line 67
    if-ge v3, v4, :cond_4f

    .line 69
    new-instance v4, Lcom/android/fileexplorer/mirror/fragments/a;

    .line 71
    invoke-direct {v4, v0, v3, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/a;-><init>(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V

    .line 74
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_3e

    .line 80
    :cond_4f
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_52} :catch_53

    .line 83
    goto :goto_68

    .line 84
    :catch_53
    move-exception p0

    .line 85
    const-string p1, "partitionTask error:"

    .line 87
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_68
    return-void
.end method
