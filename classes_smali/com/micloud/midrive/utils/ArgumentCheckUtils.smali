.class public Lcom/micloud/midrive/utils/ArgumentCheckUtils;
.super Ljava/lang/Object;
.source "ArgumentCheckUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "private constructor of ArgumentCheckUtils"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static checkFloatInRange(FFFLjava/lang/String;)F
    .registers 4

    .line 1
    cmpl-float p2, p0, p2

    .line 3
    if-gtz p2, :cond_9

    .line 5
    cmpg-float p1, p0, p1

    .line 7
    if-ltz p1, :cond_9

    .line 9
    return p0

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-direct {p0, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public static checkIntEqual(IILjava/lang/String;)V
    .registers 3

    .line 1
    if-ne p0, p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public static checkIntGreaterThanZero(ILjava/lang/String;)I
    .registers 2

    .line 1
    if-lez p0, :cond_3

    .line 3
    return p0

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public static checkIntInRange(IIILjava/lang/String;)F
    .registers 6

    .line 1
    if-gt p0, p2, :cond_6

    .line 3
    if-lt p0, p1, :cond_6

    .line 5
    int-to-float p0, p0

    .line 6
    return p0

    .line 7
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p3, "["

    .line 19
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, ":"

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, "] value:"

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method public static checkListNotNullOrEmpty(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 1
    if-eqz p0, :cond_9

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public static checkNotEmpty(Ljava/lang/String;)V
    .registers 2

    const-string v0, "The validated string is empty"

    .line 3
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/ArgumentCheckUtils;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .registers 2

    const-string v0, "The validated object is null"

    .line 1
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/ArgumentCheckUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
