.class public Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private k:F

.field private m:F

.field private mDamping:F

.field private mDampingExp:Lcom/miui/maml/data/Expression;

.field private mInitial:F

.field private mNeedEvaluate:Z

.field private mResponse:F

.field private mResponseExp:Lcom/miui/maml/data/Expression;

.field private r:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666  # 0.9f

    .line 2
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a  # 0.3f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000  # -1.0f

    .line 4
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 5
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    .line 20
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 21
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 22
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 24
    iput p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 25
    iput p2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666  # 0.9f

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a  # 0.3f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000  # -1.0f

    .line 11
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 12
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 13
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    if-eqz p1, :cond_2b

    .line 15
    array-length v1, p1

    if-lez v1, :cond_24

    const/4 v1, 0x0

    .line 16
    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    .line 17
    :cond_24
    array-length v1, p1

    if-le v1, v0, :cond_2b

    .line 18
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    :cond_2b
    return-void
.end method

.method private evaluate()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 3
    if-eqz v0, :cond_53

    .line 5
    const-wide v0, 0x401921fb54442d18L  # 6.283185307179586

    .line 10
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 12
    float-to-double v2, v2

    .line 13
    div-double/2addr v0, v2

    .line 14
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 19
    move-result-wide v0

    .line 20
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 22
    float-to-double v3, v2

    .line 23
    mul-double/2addr v0, v3

    .line 24
    double-to-float v0, v0

    .line 25
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->k:F

    .line 27
    const-wide v3, 0x402921fb54442d18L  # 12.566370614359172

    .line 32
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 34
    float-to-double v5, v1

    .line 35
    mul-double/2addr v5, v3

    .line 36
    float-to-double v3, v2

    .line 37
    mul-double/2addr v5, v3

    .line 38
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 40
    float-to-double v3, v1

    .line 41
    div-double/2addr v5, v3

    .line 42
    double-to-float v1, v5

    .line 43
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    .line 45
    const/high16 v3, 0x40800000  # 4.0f

    .line 47
    mul-float/2addr v2, v3

    .line 48
    mul-float/2addr v2, v0

    .line 49
    mul-float/2addr v1, v1

    .line 50
    sub-float/2addr v2, v1

    .line 51
    float-to-double v0, v2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 55
    move-result-wide v0

    .line 56
    double-to-float v0, v0

    .line 57
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 59
    const/high16 v2, 0x40000000  # 2.0f

    .line 61
    mul-float v3, v1, v2

    .line 63
    div-float/2addr v0, v3

    .line 64
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 66
    iget v3, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    .line 68
    div-float/2addr v3, v2

    .line 69
    mul-float/2addr v3, v1

    .line 70
    neg-float v1, v3

    .line 71
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    .line 73
    const/4 v2, 0x0

    .line 74
    iget v3, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    .line 76
    mul-float/2addr v1, v3

    .line 77
    sub-float/2addr v2, v1

    .line 78
    div-float/2addr v2, v0

    .line 79
    iput v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    .line 81
    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 84
    :cond_53
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    move-result-wide v2

    .line 10
    double-to-float v0, v2

    .line 11
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 13
    cmpl-float v2, v2, v0

    .line 15
    if-eqz v2, :cond_14

    .line 17
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 19
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    .line 23
    if-eqz v0, :cond_27

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 28
    move-result-wide v2

    .line 29
    double-to-float v0, v2

    .line 30
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 32
    cmpl-float v2, v2, v0

    .line 34
    if-eqz v2, :cond_27

    .line 36
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 38
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 40
    :cond_27
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->evaluate()V

    .line 43
    const-wide v0, 0x4005bf0a8b145769L  # Math.E

    .line 48
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    .line 50
    mul-float/2addr v2, p1

    .line 51
    float-to-double v2, v2

    .line 52
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 55
    move-result-wide v0

    .line 56
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    .line 58
    float-to-double v2, v2

    .line 59
    iget v4, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 61
    mul-float/2addr v4, p1

    .line 62
    float-to-double v4, v4

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 66
    move-result-wide v4

    .line 67
    mul-double/2addr v4, v2

    .line 68
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    .line 70
    float-to-double v2, v2

    .line 71
    iget v6, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 73
    mul-float/2addr v6, p1

    .line 74
    float-to-double v6, v6

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 78
    move-result-wide v6

    .line 79
    mul-double/2addr v6, v2

    .line 80
    add-double/2addr v6, v4

    .line 81
    mul-double/2addr v6, v0

    .line 82
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 84
    add-double/2addr v6, v0

    .line 85
    double-to-float p1, v6

    .line 86
    return p1
.end method
