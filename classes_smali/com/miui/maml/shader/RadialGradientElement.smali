.class public Lcom/miui/maml/shader/RadialGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "RadialGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "RadialGradient"


# instance fields
.field private mRx:F

.field private mRxExp:Lcom/miui/maml/data/Expression;

.field private mRy:F

.field private mRyExp:Lcom/miui/maml/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "rX"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "rY"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    return-void
.end method

.method private final getRx()F
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private final getRy()F
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .registers 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v5

    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v6

    iget-object v7, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method public updateShaderMatrix()Z
    .registers 8

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRx()F

    move-result v2

    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRy()F

    move-result v3

    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2b

    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_2b

    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_2b

    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2b
    :goto_2b
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    iput v1, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    iput v2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    iput v3, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    neg-float v5, v0

    neg-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    return v0
.end method
