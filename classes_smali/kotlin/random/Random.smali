.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Default;
    }
.end annotation


# static fields
.field public static final Default:Lkotlin/random/Random$Default;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/random/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlin/random/Random$Default;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(Li3/e;)V

    .line 7
    sput-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 9
    sget-object v0, Ld3/b;->a:Ld3/a;

    .line 11
    invoke-virtual {v0}, Ld3/a;->b()Lkotlin/random/Random;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lkotlin/random/Random;->a:Lkotlin/random/Random;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getDefaultRandom$cp()Lkotlin/random/Random;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/random/Random;->a:Lkotlin/random/Random;

    .line 3
    return-object v0
.end method

.method public static synthetic nextBytes$default(Lkotlin/random/Random;[BIIILjava/lang/Object;)[B
    .registers 6

    .line 1
    if-nez p5, :cond_11

    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 5
    if-eqz p5, :cond_7

    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_7
    and-int/lit8 p4, p4, 0x4

    .line 10
    if-eqz p4, :cond_c

    .line 12
    array-length p3, p1

    .line 13
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/random/Random;->nextBytes([BII)[B

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: nextBytes"

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0
.end method


# virtual methods
.method public abstract nextBits(I)I
.end method

.method public nextBoolean()Z
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public nextBytes(I)[B
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lkotlin/random/Random;->nextBytes([B)[B

    move-result-object p1

    return-object p1
.end method

.method public nextBytes([B)[B
    .registers 4
    .param p1  # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkotlin/random/Random;->nextBytes([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public nextBytes([BII)[B
    .registers 10
    .param p1  # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ll3/c;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ll3/c;-><init>(II)V

    invoke-virtual {v0, p2}, Ll3/c;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    new-instance v0, Ll3/c;

    array-length v3, p1

    invoke-direct {v0, v2, v3}, Ll3/c;-><init>(II)V

    invoke-virtual {v0, p3}, Ll3/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    const-string v3, "fromIndex ("

    if-eqz v0, :cond_90

    if-gt p2, p3, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    if-eqz v1, :cond_6a

    sub-int v0, p3, p2

    .line 2
    div-int/lit8 v0, v0, 0x4

    move v1, v2

    :goto_31
    if-ge v1, v0, :cond_54

    .line 3
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v3

    int-to-byte v4, v3

    .line 4
    aput-byte v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 5
    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x2

    ushr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    .line 6
    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x3

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    .line 7
    aput-byte v3, p1, v4

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_54
    sub-int/2addr p3, p2

    mul-int/lit8 v0, p3, 0x8

    .line 8
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    :goto_5b
    if-ge v2, p3, :cond_69

    add-int v1, p2, v2

    mul-int/lit8 v3, v2, 0x8

    ushr-int v3, v0, v3

    int-to-byte v3, v3

    .line 9
    aput-byte v3, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_69
    return-object p1

    .line 10
    :cond_6a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be not greater than toIndex ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_90
    const-string v0, ") or toIndex ("

    const-string v1, ") are out of range: 0.."

    .line 11
    invoke-static {v3, p2, v0, p3, v1}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12
    array-length p1, p1

    const/16 p3, 0x2e

    .line 13
    invoke-static {p2, p1, p3}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public nextDouble()D
    .registers 6

    const/16 v0, 0x1a

    .line 1
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lkotlin/random/Random;->nextBits(I)I

    move-result v2

    int-to-long v3, v0

    shl-long v0, v3, v1

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4340000000000000L  # 9.007199254740992E15

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .registers 5

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1, p2}, Lkotlin/random/Random;->nextDouble(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextDouble(DD)D
    .registers 11

    cmpl-double v0, p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-eqz v0, :cond_54

    sub-double v3, p3, p1

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    if-eqz v0, :cond_43

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    if-eqz v1, :cond_43

    .line 4
    invoke-virtual {p0}, Lkotlin/random/Random;->nextDouble()D

    move-result-wide v0

    const/4 v2, 0x2

    int-to-double v2, v2

    div-double v4, p3, v2

    div-double v2, p1, v2

    sub-double/2addr v4, v2

    mul-double/2addr v4, v0

    add-double/2addr p1, v4

    add-double/2addr p1, v4

    goto :goto_49

    .line 5
    :cond_43
    invoke-virtual {p0}, Lkotlin/random/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v3

    add-double/2addr p1, v0

    :goto_49
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_53

    const-wide/high16 p1, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    .line 6
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide p1

    :cond_53
    return-wide p1

    .line 7
    :cond_54
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lj3/c;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public nextFloat()F
    .registers 3

    .line 1
    const/16 v0, 0x18

    .line 3
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x4b800000  # 1.6777216E7f

    .line 10
    div-float/2addr v0, v1

    .line 11
    return v0
.end method

.method public nextInt()I
    .registers 2

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lkotlin/random/Random;->nextInt(II)I

    move-result p1

    return p1
.end method

.method public nextInt(II)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-eqz v2, :cond_3f

    sub-int v2, p2, p1

    if-gtz v2, :cond_20

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_12

    goto :goto_20

    .line 3
    :cond_12
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v2

    if-gt p1, v2, :cond_1c

    if-ge v2, p2, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v3, v0

    :goto_1d
    if-eqz v3, :cond_12

    return v2

    :cond_20
    :goto_20
    neg-int p2, v2

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_2f

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x1f

    .line 5
    invoke-virtual {p0, p2}, Lkotlin/random/Random;->nextBits(I)I

    move-result p2

    goto :goto_3d

    .line 6
    :cond_2f
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result p2

    ushr-int/2addr p2, v1

    .line 7
    rem-int v0, p2, v2

    sub-int/2addr p2, v0

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, p2

    if-ltz v3, :cond_2f

    move p2, v0

    :goto_3d
    add-int/2addr p1, p2

    return p1

    .line 8
    :cond_3f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lj3/c;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public nextLong()J
    .registers 5

    .line 1
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(J)J
    .registers 5

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1, p2}, Lkotlin/random/Random;->nextLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public nextLong(JJ)J
    .registers 14

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-eqz v0, :cond_75

    sub-long v3, p3, p1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_63

    neg-long p3, v3

    and-long/2addr p3, v3

    cmp-long p3, p3, v3

    if-nez p3, :cond_4f

    long-to-int p3, v3

    const/16 p4, 0x20

    ushr-long v0, v3, p4

    long-to-int v0, v0

    const-wide v3, 0xffffffffL

    if-eqz p3, :cond_31

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x1f

    .line 4
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->nextBits(I)I

    move-result p3

    goto :goto_37

    :cond_31
    if-ne v0, v2, :cond_3a

    .line 5
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result p3

    :goto_37
    int-to-long p3, p3

    and-long/2addr p3, v3

    goto :goto_61

    .line 6
    :cond_3a
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x1f

    .line 7
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->nextBits(I)I

    move-result p3

    int-to-long v0, p3

    shl-long p3, v0, p4

    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-long/2addr p3, v0

    goto :goto_61

    .line 8
    :cond_4f
    invoke-virtual {p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide p3

    ushr-long/2addr p3, v2

    .line 9
    rem-long v0, p3, v3

    sub-long/2addr p3, v0

    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    add-long/2addr v7, p3

    cmp-long p3, v7, v5

    if-ltz p3, :cond_4f

    move-wide p3, v0

    :goto_61
    add-long/2addr p1, p3

    return-wide p1

    .line 10
    :cond_63
    invoke-virtual {p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gtz v0, :cond_71

    cmp-long v0, v3, p3

    if-gez v0, :cond_71

    move v0, v2

    goto :goto_72

    :cond_71
    move v0, v1

    :goto_72
    if-eqz v0, :cond_63

    return-wide v3

    .line 11
    :cond_75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lj3/c;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
