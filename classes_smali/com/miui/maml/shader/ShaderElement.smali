.class public abstract Lcom/miui/maml/shader/ShaderElement;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/shader/ShaderElement$GradientStops;,
        Lcom/miui/maml/shader/ShaderElement$GradientStop;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShaderElement"


# instance fields
.field public mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field public mShader:Landroid/graphics/Shader;

.field public mShaderMatrix:Landroid/graphics/Matrix;

.field public mTileMode:Landroid/graphics/Shader$TileMode;

.field public mX:F

.field public mXExp:Lcom/miui/maml/data/Expression;

.field public mY:F

.field public mYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 13
    invoke-direct {v0, p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;-><init>(Lcom/miui/maml/shader/ShaderElement;)V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 18
    iput-object p2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "x"

    .line 26
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mXExp:Lcom/miui/maml/data/Expression;

    .line 36
    const-string v1, "y"

    .line 38
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mYExp:Lcom/miui/maml/data/Expression;

    .line 48
    const-string v0, "tile"

    .line 50
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/miui/maml/shader/ShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    const-string v1, "BitmapShader"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_4a

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;->loadGradientStops(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 75
    :cond_4a
    return-void
.end method

.method public static getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 9
    return-object p0

    .line 10
    :cond_9
    const-string v0, "mirror"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_14

    .line 18
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 20
    return-object p0

    .line 21
    :cond_14
    const-string v0, "repeat"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1f

    .line 29
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 31
    return-object p0

    .line 32
    :cond_1f
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 34
    return-object p0
.end method

.method private loadGradientStops(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 7

    .line 1
    const-string v0, "GradientStop"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_7
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_20

    .line 14
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lorg/w3c/dom/Element;

    .line 20
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 22
    new-instance v3, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 24
    invoke-direct {v3, p0, v1, p2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;-><init>(Lcom/miui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 27
    invoke-virtual {v2, v3}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 32
    goto :goto_7

    .line 33
    :cond_20
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 35
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 38
    move-result p1

    .line 39
    if-gtz p1, :cond_30

    .line 41
    const-string p1, "ShaderElement"

    .line 43
    const-string p2, "lost gradient stop."

    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 49
    :cond_30
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 51
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->init()V

    .line 54
    return-void
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 3
    return-object v0
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getX()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mXExp:Lcom/miui/maml/data/Expression;

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

.method public getY()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mYExp:Lcom/miui/maml/data/Expression;

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

.method public abstract onGradientStopsChanged()V
.end method

.method public updateShader()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->updateShaderMatrix()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_12

    .line 12
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 19
    :cond_12
    return-void
.end method

.method public abstract updateShaderMatrix()Z
.end method
