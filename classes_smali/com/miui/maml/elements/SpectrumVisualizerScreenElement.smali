.class public Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "SpectrumVisualizerScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SpectrumVisualizer"


# instance fields
.field private mAlphaWidthNum:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDotbar:Ljava/lang/String;

.field private mPanel:Landroid/graphics/Bitmap;

.field private mPanelSrc:Ljava/lang/String;

.field private mResDensity:I

.field private mShadow:Ljava/lang/String;

.field private mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 7
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "panelSrc"

    .line 6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    .line 12
    const-string v0, "dotbarSrc"

    .line 14
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 20
    const-string v0, "shadowSrc"

    .line 22
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setSoftDrawEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 47
    invoke-virtual {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 50
    const/4 v0, -0x1

    .line 51
    const-string v1, "alphaWidthNum"

    .line 53
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    .line 59
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 29
    :cond_1c
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 32
    return-void
.end method

.method public enableUpdate(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 6
    return-void
.end method

.method public getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 15
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 18
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 25
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 27
    iget v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 32
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 34
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 37
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 39
    return-object p1
.end method

.method public init()V
    .registers 6

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    move-object v0, v1

    .line 14
    goto :goto_1a

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 21
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 26
    move-result-object v0

    .line 27
    :goto_1a
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 29
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_26

    .line 37
    move-object v0, v1

    .line 38
    goto :goto_32

    .line 39
    :cond_26
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 45
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object v0

    .line 51
    :goto_32
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3b

    .line 59
    goto :goto_47

    .line 60
    :cond_3b
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 66
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 71
    move-result-object v1

    .line 72
    :goto_47
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getWidth()F

    .line 75
    move-result v2

    .line 76
    float-to-int v2, v2

    .line 77
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getHeight()F

    .line 80
    move-result v3

    .line 81
    float-to-int v3, v3

    .line 82
    const-string v4, "SpectrumVisualizer"

    .line 84
    if-lez v2, :cond_57

    .line 86
    if-gtz v3, :cond_65

    .line 88
    :cond_57
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 90
    if-eqz v2, :cond_9f

    .line 92
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 95
    move-result v2

    .line 96
    iget-object v3, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 101
    move-result v3

    .line 102
    :cond_65
    if-nez v0, :cond_6d

    .line 104
    const-string v0, "no dotbar"

    .line 106
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 110
    :cond_6d
    iget-object v4, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 112
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 115
    iget v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    .line 117
    if-ltz v1, :cond_7b

    .line 119
    iget-object v4, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 121
    invoke-virtual {v4, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setAlphaNum(I)V

    .line 124
    :cond_7b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    .line 127
    move-result v0

    .line 128
    iput v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 130
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 136
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 138
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 141
    move-result-object v0

    .line 142
    iget v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 147
    new-instance v1, Landroid/graphics/Canvas;

    .line 149
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    iput-object v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 154
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 156
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 159
    return-void

    .line 160
    :cond_9f
    const-string v0, "no panel or size"

    .line 162
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method
