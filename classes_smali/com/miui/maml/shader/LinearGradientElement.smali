.class public Lcom/miui/maml/shader/LinearGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "LinearGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "LinearGradient"


# instance fields
.field private mEndX:F

.field private mEndXExp:Lcom/miui/maml/data/Expression;

.field private mEndY:F

.field private mEndYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "x1"

    .line 10
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 23
    move-result-object p2

    .line 24
    const-string v0, "y1"

    .line 26
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 36
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 38
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 41
    return-void
.end method

.method private final getEndX()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-wide/16 v0, 0x0

    .line 12
    :goto_b
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 14
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 17
    move-result v2

    .line 18
    float-to-double v2, v2

    .line 19
    mul-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    return v0
.end method

.method private final getEndY()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-wide/16 v0, 0x0

    .line 12
    :goto_b
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 14
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 17
    move-result v2

    .line 18
    float-to-double v2, v2

    .line 19
    mul-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    return v0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 4
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 10
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 12
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 16
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    .line 19
    move-result-object v6

    .line 20
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    .line 25
    move-result-object v7

    .line 26
    iget-object v8, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/high16 v4, 0x3f800000  # 1.0f

    .line 32
    const/high16 v5, 0x3f800000  # 1.0f

    .line 34
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 38
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 40
    return-void
.end method

.method public updateShaderMatrix()Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getX()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getY()F

    .line 8
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getEndX()F

    .line 12
    move-result v2

    .line 13
    invoke-direct {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getEndY()F

    .line 16
    move-result v3

    .line 17
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 19
    cmpl-float v4, v0, v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-nez v4, :cond_2b

    .line 24
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 26
    cmpl-float v4, v1, v4

    .line 28
    if-nez v4, :cond_2b

    .line 30
    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 32
    cmpl-float v4, v2, v4

    .line 34
    if-nez v4, :cond_2b

    .line 36
    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 38
    cmpl-float v4, v3, v4

    .line 40
    if-eqz v4, :cond_2a

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    return v5

    .line 44
    :cond_2b
    :goto_2b
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 46
    iput v1, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 48
    iput v2, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 50
    iput v3, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 52
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 54
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 57
    iget-object v6, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 59
    const/4 v4, 0x4

    .line 60
    new-array v7, v4, [F

    .line 62
    fill-array-data v7, :array_54

    .line 65
    const/4 v8, 0x0

    .line 66
    new-array v9, v4, [F

    .line 68
    aput v0, v9, v5

    .line 70
    const/4 v0, 0x1

    .line 71
    aput v1, v9, v0

    .line 73
    const/4 v1, 0x2

    .line 74
    aput v2, v9, v1

    .line 76
    const/4 v1, 0x3

    .line 77
    aput v3, v9, v1

    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v11, 0x2

    .line 81
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 84
    return v0

    .line 85
    :array_54
    .array-data 4
        0x0
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method
