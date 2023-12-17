.class public Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;
.super Ljava/lang/Object;
.source "BackEaseOutInterpolater.java"

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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 4
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    if-eqz p1, :cond_12

    .line 5
    array-length v0, p1

    if-lez v0, :cond_12

    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    :cond_12
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    .line 12
    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    .line 14
    sub-float/2addr p1, v0

    .line 15
    mul-float v1, p1, p1

    .line 17
    iget v2, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    .line 19
    add-float v3, v2, v0

    .line 21
    mul-float/2addr v3, p1

    .line 22
    add-float/2addr v3, v2

    .line 23
    mul-float/2addr v3, v1

    .line 24
    add-float/2addr v3, v0

    .line 25
    return v3
.end method
