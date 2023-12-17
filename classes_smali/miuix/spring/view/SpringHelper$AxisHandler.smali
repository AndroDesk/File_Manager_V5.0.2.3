.class abstract Lmiuix/spring/view/SpringHelper$AxisHandler;
.super Ljava/lang/Object;
.source "SpringHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/spring/view/SpringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AxisHandler"
.end annotation


# static fields
.field private static final DRAG_RATE:F = 0.5f

.field private static final INVERSE_DRAG_RATE:F = 2.0f

.field private static final SQUARE1:F = 0.33333334f

.field private static final SQUARE2:F = 0.6666667f


# instance fields
.field public mAllDistance:F

.field public mAmount:I

.field public mAxis:I

.field public mDistance:F

.field public final synthetic this$0:Lmiuix/spring/view/SpringHelper;


# direct methods
.method public constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 8
    return-void
.end method

.method private obtainSpringBackDistance(F)F
    .registers 9

    .line 1
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result p1

    .line 11
    const/high16 v0, 0x3f000000  # 0.5f

    .line 13
    :goto_c
    mul-float/2addr p1, v0

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result p1

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr p1, v0

    .line 21
    const/high16 v1, 0x3f800000  # 1.0f

    .line 23
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 26
    move-result p1

    .line 27
    float-to-double v1, p1

    .line 28
    const-wide/high16 v3, 0x4008000000000000L  # 3.0

    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 33
    move-result-wide v5

    .line 34
    div-double/2addr v5, v3

    .line 35
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    .line 37
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 40
    move-result-wide v3

    .line 41
    sub-double/2addr v5, v3

    .line 42
    add-double/2addr v5, v1

    .line 43
    double-to-float p1, v5

    .line 44
    goto :goto_c
.end method

.method private overScrollWeight()F
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAmount:I

    .line 3
    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    div-float/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 13
    move-result v0

    .line 14
    const/high16 v1, 0x3f800000  # 1.0f

    .line 16
    sub-float/2addr v0, v1

    .line 17
    float-to-double v0, v0

    .line 18
    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 23
    move-result-wide v0

    .line 24
    neg-double v0, v0

    .line 25
    double-to-float v0, v0

    .line 26
    const/4 v1, 0x0

    .line 27
    cmpg-float v2, v0, v1

    .line 29
    if-gez v2, :cond_1f

    .line 31
    move v0, v1

    .line 32
    :cond_1f
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 34
    div-float/2addr v0, v1

    .line 35
    return v0
.end method

.method private pull(I[IZ)V
    .registers 6

    .line 1
    if-eqz p1, :cond_49

    .line 3
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->canScroll()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_49

    .line 9
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 11
    int-to-float v1, p1

    .line 12
    add-float/2addr v0, v1

    .line 13
    iput v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 15
    if-eqz p3, :cond_22

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 20
    move-result p3

    .line 21
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result v0

    .line 27
    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    .line 30
    move-result v0

    .line 31
    mul-float/2addr p3, v0

    .line 32
    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 34
    goto :goto_42

    .line 35
    :cond_22
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 37
    const/4 v0, 0x0

    .line 38
    cmpl-float p3, p3, v0

    .line 40
    if-nez p3, :cond_2c

    .line 42
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->onFlingReachEdge()V

    .line 45
    :cond_2c
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 47
    add-float/2addr p3, v1

    .line 48
    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 50
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 53
    move-result p3

    .line 54
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v0

    .line 60
    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    .line 63
    move-result v0

    .line 64
    mul-float/2addr p3, v0

    .line 65
    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 67
    :goto_42
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 69
    aget v0, p2, p3

    .line 71
    add-int/2addr v0, p1

    .line 72
    aput v0, p2, p3

    .line 74
    :cond_49
    return-void
.end method

.method private release(I[IZ)I
    .registers 10

    .line 1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 3
    iget v1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 11
    int-to-float v4, p1

    .line 12
    add-float/2addr v3, v4

    .line 13
    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 15
    if-eqz p3, :cond_2a

    .line 17
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 20
    move-result v3

    .line 21
    iget v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 23
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result v4

    .line 27
    invoke-direct {p0, v4}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    .line 30
    move-result v4

    .line 31
    mul-float/2addr v3, v4

    .line 32
    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 34
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 36
    aget v4, p2, v3

    .line 38
    sub-int v5, p1, p1

    .line 40
    add-int/2addr v5, v4

    .line 41
    aput v5, p2, v3

    .line 43
    :cond_2a
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 45
    iget v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 47
    sub-float/2addr v4, v1

    .line 48
    add-float/2addr v4, v3

    .line 49
    float-to-int v1, v4

    .line 50
    int-to-float v3, v1

    .line 51
    mul-float/2addr v2, v3

    .line 52
    const/4 v4, 0x0

    .line 53
    cmpl-float v2, v2, v4

    .line 55
    if-ltz v2, :cond_41

    .line 57
    if-nez p3, :cond_3c

    .line 59
    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 61
    :cond_3c
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 63
    aput p1, p2, v0

    .line 65
    goto :goto_4c

    .line 66
    :cond_41
    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 68
    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 70
    aget v2, p2, p1

    .line 72
    int-to-float v2, v2

    .line 73
    add-float/2addr v2, v0

    .line 74
    float-to-int v0, v2

    .line 75
    aput v0, p2, p1

    .line 77
    :goto_4c
    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 79
    cmpl-float p2, p1, v4

    .line 81
    if-nez p2, :cond_54

    .line 83
    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 85
    :cond_54
    if-nez p3, :cond_67

    .line 87
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 90
    move-result p1

    .line 91
    iget p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 93
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 96
    move-result p2

    .line 97
    invoke-direct {p0, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    .line 100
    move-result p2

    .line 101
    mul-float/2addr p1, p2

    .line 102
    iput p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 104
    :cond_67
    return v1
.end method

.method private unObtainSpringBackDistance(F)F
    .registers 10

    .line 1
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result p1

    .line 11
    const/high16 v0, 0x40000000  # 2.0f

    .line 13
    mul-float/2addr p1, v0

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result v1

    .line 19
    int-to-float v2, v0

    .line 20
    div-float/2addr v1, v2

    .line 21
    const v3, 0x3eaaaaab

    .line 24
    cmpg-float v1, v1, v3

    .line 26
    const/high16 v3, 0x40400000  # 3.0f

    .line 28
    if-gtz v1, :cond_3b

    .line 30
    int-to-double v0, v0

    .line 31
    const-wide v4, 0x3fe5555560000000L  # 0.6666666865348816

    .line 36
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 39
    move-result-wide v4

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 43
    move-result p1

    .line 44
    mul-float/2addr p1, v3

    .line 45
    sub-float/2addr v2, p1

    .line 46
    float-to-double v2, v2

    .line 47
    const-wide v6, 0x3fd5555560000000L  # 0.3333333432674408

    .line 52
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 55
    move-result-wide v2

    .line 56
    mul-double/2addr v2, v4

    .line 57
    sub-double/2addr v0, v2

    .line 58
    double-to-float p1, v0

    .line 59
    return p1

    .line 60
    :cond_3b
    mul-float/2addr p1, v3

    .line 61
    return p1
.end method


# virtual methods
.method public abstract canScroll()Z
.end method

.method public abstract getSize()I
.end method

.method public handleNestedPreScroll([I[IZ)Z
    .registers 8

    .line 1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 3
    aget v0, p1, v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_28

    .line 8
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->canScroll()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_28

    .line 14
    iget v2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 16
    const/4 v3, 0x0

    .line 17
    cmpl-float v3, v2, v3

    .line 19
    if-nez v3, :cond_15

    .line 21
    goto :goto_28

    .line 22
    :cond_15
    float-to-int v2, v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    .line 26
    move-result v2

    .line 27
    mul-int/2addr v2, v0

    .line 28
    if-lez v2, :cond_1e

    .line 30
    return v1

    .line 31
    :cond_1e
    iget v1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 33
    invoke-direct {p0, v0, p2, p3}, Lmiuix/spring/view/SpringHelper$AxisHandler;->release(I[IZ)I

    .line 36
    move-result p2

    .line 37
    aput p2, p1, v1

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_28
    :goto_28
    return v1
.end method

.method public handleNestedScroll(I[II[I)V
    .registers 5

    .line 1
    iget-object p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 3
    invoke-virtual {p2}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_10

    .line 9
    if-nez p3, :cond_c

    .line 11
    const/4 p2, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p2, 0x0

    .line 14
    :goto_d
    invoke-direct {p0, p1, p4, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->pull(I[IZ)V

    .line 17
    :cond_10
    return-void
.end method

.method public abstract onFlingReachEdge()V
.end method
