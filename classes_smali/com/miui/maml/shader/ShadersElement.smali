.class public final Lcom/miui/maml/shader/ShadersElement;
.super Ljava/lang/Object;
.source "ShadersElement.java"


# static fields
.field public static final FILL_TAG_NAME:Ljava/lang/String; = "FillShaders"

.field public static final STROKE_TAG_NAME:Ljava/lang/String; = "StrokeShaders"


# instance fields
.field private mShaderElement:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShadersElement;->loadShaderElements(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 7
    return-void
.end method

.method private loadShaderElements(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 7

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_64

    .line 12
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v2, v3, :cond_17

    .line 23
    goto :goto_61

    .line 24
    :cond_17
    check-cast v1, Lorg/w3c/dom/Element;

    .line 26
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const-string v3, "LinearGradient"

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2d

    .line 38
    new-instance v2, Lcom/miui/maml/shader/LinearGradientElement;

    .line 40
    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/LinearGradientElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 43
    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 45
    goto :goto_5c

    .line 46
    :cond_2d
    const-string v3, "RadialGradient"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3d

    .line 54
    new-instance v2, Lcom/miui/maml/shader/RadialGradientElement;

    .line 56
    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/RadialGradientElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 59
    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 61
    goto :goto_5c

    .line 62
    :cond_3d
    const-string v3, "SweepGradient"

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_4d

    .line 70
    new-instance v2, Lcom/miui/maml/shader/SweepGradientElement;

    .line 72
    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/SweepGradientElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 75
    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 77
    goto :goto_5c

    .line 78
    :cond_4d
    const-string v3, "BitmapShader"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_5c

    .line 86
    new-instance v2, Lcom/miui/maml/shader/BitmapShaderElement;

    .line 88
    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/BitmapShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 91
    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 93
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 95
    if-eqz v1, :cond_61

    .line 97
    goto :goto_64

    .line 98
    :cond_61
    :goto_61
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_5

    .line 101
    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement;->getShader()Landroid/graphics/Shader;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public updateShader()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement;->updateShader()V

    .line 8
    :cond_7
    return-void
.end method
