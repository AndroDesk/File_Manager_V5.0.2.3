.class public Lcom/miui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Variables$VarBucket;,
        Lcom/miui/maml/data/Variables$ValueInfo;,
        Lcom/miui/maml/data/Variables$DoubleBucket;,
        Lcom/miui/maml/data/Variables$BaseVarBucket;,
        Lcom/miui/maml/data/Variables$DoubleInfo;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"

.field public static final MAX_ARRAY_SIZE:I = 0x2710


# instance fields
.field private mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

.field private mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/maml/data/Variables$VarBucket<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/miui/maml/data/Variables$DoubleBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 10
    iput-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 12
    new-instance v0, Lcom/miui/maml/data/Variables$VarBucket;

    .line 14
    invoke-direct {v0, v1}, Lcom/miui/maml/data/Variables$VarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 17
    iput-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 19
    return-void
.end method

.method public static synthetic access$000()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/data/Variables;->DBG:Z

    .line 3
    return v0
.end method

.method private static dbglog(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/miui/maml/data/Variables;->DBG:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    const-string v0, "Variables"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_9
    return-void
.end method

.method private getArrInner(II)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    .line 1
    const-string v0, " arrIndex:"

    .line 3
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [Ljava/lang/Object;

    .line 9
    if-nez v1, :cond_1f

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "getArrInner: designated object is not an array. index:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 31
    goto :goto_67

    .line 32
    :cond_1f
    invoke-static {v1, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_40

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v2, "getArrInner: designated array index is invalid. index:"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 64
    goto :goto_67

    .line 65
    :cond_40
    aget-object p1, v1, p2
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_42} :catch_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_42} :catch_43

    .line 67
    return-object p1

    .line 68
    :catch_43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v2, "getArrInner: designated index is invalid. index:"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 94
    goto :goto_67

    .line 95
    :catch_5e
    const-string p2, "getArrInner: designated object type is not correct. index:"

    .line 97
    invoke-static {p2, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 104
    :goto_67
    const/4 p1, 0x0

    .line 105
    return-object p1
.end method

.method private static isIndexValid(Ljava/lang/Object;I)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_c

    .line 4
    :try_start_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 7
    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_c

    .line 8
    if-lt p1, p0, :cond_a

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_c
    :cond_c
    :goto_c
    return v0
.end method

.method public static putValueToArr(Ljava/lang/Object;ID)Z
    .registers 9

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_11

    .line 8
    const-string p0, " designated array index is invalid. arrIndex:"

    .line 10
    invoke-static {p0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 17
    return v1

    .line 18
    :cond_11
    instance-of v0, p0, [D

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    check-cast p0, [D

    .line 25
    aput-wide p2, p0, p1

    .line 27
    goto :goto_6d

    .line 28
    :cond_1b
    instance-of v0, p0, [B

    .line 30
    if-eqz v0, :cond_27

    .line 32
    check-cast p0, [B

    .line 34
    double-to-long p2, p2

    .line 35
    long-to-int p2, p2

    .line 36
    int-to-byte p2, p2

    .line 37
    aput-byte p2, p0, p1

    .line 39
    goto :goto_6d

    .line 40
    :cond_27
    instance-of v0, p0, [C

    .line 42
    if-eqz v0, :cond_33

    .line 44
    check-cast p0, [C

    .line 46
    double-to-long p2, p2

    .line 47
    long-to-int p2, p2

    .line 48
    int-to-char p2, p2

    .line 49
    aput-char p2, p0, p1

    .line 51
    goto :goto_6d

    .line 52
    :cond_33
    instance-of v0, p0, [F

    .line 54
    if-eqz v0, :cond_3d

    .line 56
    check-cast p0, [F

    .line 58
    double-to-float p2, p2

    .line 59
    aput p2, p0, p1

    .line 61
    goto :goto_6d

    .line 62
    :cond_3d
    instance-of v0, p0, [I

    .line 64
    if-eqz v0, :cond_48

    .line 66
    check-cast p0, [I

    .line 68
    double-to-long p2, p2

    .line 69
    long-to-int p2, p2

    .line 70
    aput p2, p0, p1

    .line 72
    goto :goto_6d

    .line 73
    :cond_48
    instance-of v0, p0, [J

    .line 75
    if-eqz v0, :cond_52

    .line 77
    check-cast p0, [J

    .line 79
    double-to-long p2, p2

    .line 80
    aput-wide p2, p0, p1

    .line 82
    goto :goto_6d

    .line 83
    :cond_52
    instance-of v0, p0, [S

    .line 85
    if-eqz v0, :cond_5e

    .line 87
    check-cast p0, [S

    .line 89
    double-to-long p2, p2

    .line 90
    long-to-int p2, p2

    .line 91
    int-to-short p2, p2

    .line 92
    aput-short p2, p0, p1

    .line 94
    goto :goto_6d

    .line 95
    :cond_5e
    instance-of v0, p0, [Z

    .line 97
    if-eqz v0, :cond_6d

    .line 99
    check-cast p0, [Z

    .line 101
    const-wide/16 v3, 0x0

    .line 103
    cmpl-double p2, p2, v3

    .line 105
    if-lez p2, :cond_6b

    .line 107
    move v1, v2

    .line 108
    :cond_6b
    aput-boolean v1, p0, p1

    .line 110
    :cond_6d
    :goto_6d
    return v2
.end method


# virtual methods
.method public createArray(Ljava/lang/String;ILjava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1e

    .line 4
    if-lez p2, :cond_1e

    .line 6
    const/16 v1, 0x2710

    .line 8
    if-le p2, v1, :cond_a

    .line 10
    goto :goto_1e

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1d

    .line 21
    :try_start_14
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 24
    move-result-object p2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_1d

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :catch_1d
    :cond_1d
    return v0

    .line 31
    :cond_1e
    :goto_1e
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v1, "createArray failed: name= "

    .line 38
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, "  size="

    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    const-string p2, "Variables"

    .line 58
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v0
.end method

.method public existsArrItem(II)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    if-ltz p2, :cond_12

    .line 11
    :try_start_a
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 14
    move-result p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_12

    .line 15
    if-ge p2, p1, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    nop

    .line 19
    :catch_12
    :cond_12
    return v0
.end method

.method public existsDouble(I)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->exists(I)Z

    move-result p1

    return p1
.end method

.method public existsDouble(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->exists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public existsObj(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->exists(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArr(II)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getArrDouble(II)D
    .registers 9

    .line 1
    const-string v0, " arrIndex:"

    .line 3
    const-string v1, "getArrDouble: designated index is invalid. index:"

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v4

    .line 11
    if-nez v4, :cond_21

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v5, "getArrDouble: designated array does not exist. index:"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 33
    goto :goto_6a

    .line 34
    :cond_21
    invoke-static {v4, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_40

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 64
    goto :goto_6a

    .line 65
    :cond_40
    instance-of v5, v4, [Z

    .line 67
    if-eqz v5, :cond_4d

    .line 69
    check-cast v4, [Z

    .line 71
    aget-boolean p1, v4, p2

    .line 73
    if-eqz p1, :cond_4c

    .line 75
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 77
    :cond_4c
    return-wide v2

    .line 78
    :cond_4d
    invoke-static {v4, p2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    .line 81
    move-result-wide p1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_51} :catch_52

    .line 82
    return-wide p1

    .line 83
    :catch_52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 107
    :goto_6a
    return-wide v2
.end method

.method public getArrString(II)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    return-object p1
.end method

.method public getDouble(I)D
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVer(IZ)I
    .registers 3

    .line 1
    if-eqz p2, :cond_9

    .line 3
    iget-object p2, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 5
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->getVer(I)I

    .line 8
    move-result p1

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget-object p2, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 12
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables$VarBucket;->getVer(I)I

    .line 15
    move-result p1

    .line 16
    :goto_f
    return p1
.end method

.method public final put(ID)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/data/Variables$DoubleBucket;->put(ID)V

    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final put(Ljava/lang/String;D)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public putArr(IID)Z
    .registers 7

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const-string p2, "putArr: designated array does not exist. index:"

    .line 16
    invoke-static {p2, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    return v1

    .line 18
    :cond_11
    invoke-static {v0, p2, p3, p4}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v1
.end method

.method public putArr(IILjava/lang/Object;)Z
    .registers 8

    const-string v0, " arrIndex:"

    const-string v1, "putArr: designated array index is invalid. index:"

    .line 1
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putArr: designated array does not exist. index:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_69

    .line 3
    :cond_21
    invoke-static {v2, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_40

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_69

    .line 5
    :cond_40
    aput-object p3, v2, p2

    .line 6
    invoke-virtual {p0, p1, v2}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_45} :catch_60
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_45} :catch_47

    const/4 p1, 0x1

    return p1

    .line 7
    :catch_47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_69

    :catch_60
    const-string p2, "putArr: designated object is not an object array. index:"

    .line 8
    invoke-static {p2, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_69
    const/4 p1, 0x0

    return p1
.end method

.method public putArrDouble(IILjava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p3, Ljava/lang/Number;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    instance-of v0, p3, Ljava/lang/String;

    .line 18
    if-eqz v0, :cond_1e

    .line 20
    :try_start_13
    check-cast p3, Ljava/lang/String;

    .line 22
    invoke-static {p3}, Lcom/miui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    .line 25
    move-result-wide v0

    .line 26
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    .line 29
    move-result p1
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1d} :catch_1e

    .line 30
    return p1

    .line 31
    :catch_1e
    :cond_1e
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final putDouble(ILjava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p2, Ljava/lang/Number;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_f

    .line 6
    check-cast p2, Ljava/lang/Number;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V

    .line 15
    return v1

    .line 16
    :cond_f
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 18
    if-eqz v0, :cond_24

    .line 20
    check-cast p2, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1e

    .line 28
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const-wide/16 v2, 0x0

    .line 33
    :goto_20
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V

    .line 36
    return v1

    .line 37
    :cond_24
    instance-of v0, p2, Ljava/lang/String;

    .line 39
    if-eqz v0, :cond_32

    .line 41
    :try_start_28
    check-cast p2, Ljava/lang/String;

    .line 43
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_31} :catch_32

    .line 50
    return v1

    .line 51
    :catch_32
    :cond_32
    const/4 p1, 0x0

    .line 52
    return p1
.end method

.method public final putNum(Ljava/lang/String;D)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 4
    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->registerVariable(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public registerVariable(Ljava/lang/String;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->registerVariable(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public reset()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Variables$DoubleBucket;->reset()V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/data/Variables$VarBucket;->reset()V

    .line 11
    return-void
.end method
