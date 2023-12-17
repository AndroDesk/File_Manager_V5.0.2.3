.class public Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "BackEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F

.field private mFactorExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 2
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 4
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    if-eqz p1, :cond_12

    .line 5
    array-length v0, p1

    if-lez v0, :cond_12

    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    :cond_12
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    .line 12
    :cond_b
    iget v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    .line 14
    const/high16 v1, 0x40000000  # 2.0f

    .line 16
    mul-float/2addr p1, v1

    .line 17
    const/high16 v2, 0x3f800000  # 1.0f

    .line 19
    cmpg-float v3, p1, v2

    .line 21
    const-wide v4, 0x3ff8666666666666L  # 1.525

    .line 26
    const/high16 v6, 0x3f000000  # 0.5f

    .line 28
    if-gez v3, :cond_28

    .line 30
    mul-float v1, p1, p1

    .line 32
    float-to-double v7, v0

    .line 33
    mul-double/2addr v7, v4

    .line 34
    double-to-float v0, v7

    .line 35
    add-float/2addr v2, v0

    .line 36
    mul-float/2addr v2, p1

    .line 37
    sub-float/2addr v2, v0

    .line 38
    mul-float/2addr v2, v1

    .line 39
    :goto_26
    mul-float/2addr v2, v6

    .line 40
    return v2

    .line 41
    :cond_28
    sub-float/2addr p1, v1

    .line 42
    mul-float v3, p1, p1

    .line 44
    float-to-double v7, v0

    .line 45
    mul-double/2addr v7, v4

    .line 46
    double-to-float v0, v7

    .line 47
    add-float/2addr v2, v0

    .line 48
    mul-float/2addr v2, p1

    .line 49
    add-float/2addr v2, v0

    .line 50
    mul-float/2addr v2, v3

    .line 51
    add-float/2addr v2, v1

    .line 52
    goto :goto_26
.end method
