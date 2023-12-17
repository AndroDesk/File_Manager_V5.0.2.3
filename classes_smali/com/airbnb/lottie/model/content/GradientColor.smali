.class public Lcom/airbnb/lottie/model/content/GradientColor;
.super Ljava/lang/Object;
.source "GradientColor.java"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 8
    return-void
.end method


# virtual methods
.method public getColors()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 3
    return-object v0
.end method

.method public getPositions()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V
    .registers 8

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 6
    array-length v1, v1

    .line 7
    if-ne v0, v1, :cond_32

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_9
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 12
    array-length v1, v1

    .line 13
    if-ge v0, v1, :cond_31

    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 17
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 19
    aget v2, v2, v0

    .line 21
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 23
    aget v3, v3, v0

    .line 25
    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 28
    move-result v2

    .line 29
    aput v2, v1, v0

    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 33
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 35
    aget v2, v2, v0

    .line 37
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 39
    aget v3, v3, v0

    .line 41
    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 44
    move-result v2

    .line 45
    aput v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_9

    .line 50
    :cond_31
    return-void

    .line 51
    :cond_32
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string v0, "Cannot interpolate between gradients. Lengths vary ("

    .line 55
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v0

    .line 59
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 61
    array-length p1, p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string p1, " vs "

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object p1, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 72
    array-length p1, p1

    .line 73
    const-string p2, ")"

    .line 75
    invoke-static {v0, p1, p2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p3
.end method
