.class public Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mAmplitudeExp:Lcom/miui/maml/data/Expression;

.field private mPriod:F

.field private mPriodExp:Lcom/miui/maml/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667  # 0.45000002f

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    iput p2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667  # 0.45000002f

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    if-eqz p1, :cond_1d

    array-length v0, p1

    if-lez v0, :cond_15

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    :cond_15
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    :cond_1d
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 14

    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    :cond_b
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    :cond_16
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_1e

    return v1

    :cond_1e
    const/high16 v1, 0x3f000000  # 0.5f

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000  # 2.0f

    cmpl-float v1, p1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    cmpg-float v1, v0, v2

    const-wide v3, 0x401921fb54442d18L  # 6.283185307179586

    if-gez v1, :cond_3b

    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    const/high16 v1, 0x40800000  # 4.0f

    div-float/2addr v0, v1

    move v1, v0

    move v0, v2

    goto :goto_48

    :cond_3b
    iget v1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    float-to-double v5, v1

    div-double/2addr v5, v3

    div-float v1, v2, v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-float v1, v7

    :goto_48
    cmpg-float v5, p1, v2

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    if-gez v5, :cond_6a

    const/high16 v5, -0x41000000  # -0.5f

    float-to-double v8, v0

    const/high16 v0, 0x41200000  # 10.0f

    sub-float/2addr p1, v2

    mul-float/2addr v0, p1

    float-to-double v10, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v8

    sub-float/2addr p1, v1

    float-to-double v0, p1

    mul-double/2addr v0, v3

    iget p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    float-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float p1, v0

    mul-float/2addr p1, v5

    return p1

    :cond_6a
    float-to-double v8, v0

    const/high16 v0, -0x3ee00000  # -10.0f

    sub-float/2addr p1, v2

    mul-float/2addr v0, p1

    float-to-double v10, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v8

    sub-float/2addr p1, v1

    float-to-double v0, p1

    mul-double/2addr v0, v3

    iget p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    float-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
