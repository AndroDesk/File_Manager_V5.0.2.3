.class public Lcom/miui/maml/shader/SweepGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "SweepGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SweepGradient"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p2

    .line 8
    const-string v0, "rotation"

    .line 10
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 20
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 22
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 25
    return-void
.end method

.method private final getAngle()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 4
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 6
    iput v0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 8
    new-instance v1, Landroid/graphics/SweepGradient;

    .line 10
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 12
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 18
    invoke-virtual {v3}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 25
    iput-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 27
    return-void
.end method

.method public updateShaderMatrix()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getX()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getY()F

    .line 8
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/shader/SweepGradientElement;->getAngle()F

    .line 12
    move-result v2

    .line 13
    iget v3, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 15
    cmpl-float v3, v0, v3

    .line 17
    if-nez v3, :cond_21

    .line 19
    iget v3, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 21
    cmpl-float v3, v1, v3

    .line 23
    if-nez v3, :cond_21

    .line 25
    iget v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 27
    cmpl-float v3, v2, v3

    .line 29
    if-eqz v3, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_21
    :goto_21
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 36
    iput v1, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 38
    iput v2, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 40
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 42
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 45
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 47
    neg-float v4, v0

    .line 48
    neg-float v5, v1

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 52
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 54
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 57
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 59
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 62
    const/4 v0, 0x1

    .line 63
    return v0
.end method
