.class public Lcom/miui/maml/elements/VirtualScreen;
.super Lcom/miui/maml/elements/ElementGroup;
.source "VirtualScreen.java"

# interfaces
.implements Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;

.field private mTicked:Z

.field private mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    .line 3
    if-eqz p1, :cond_2b

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 13
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMatrix()Landroid/graphics/Matrix;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 22
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 24
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 31
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 34
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 39
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 41
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 44
    :cond_2b
    return-void
.end method

.method public doTick(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    .line 7
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 14
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public init()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    cmpg-float v2, v0, v1

    .line 11
    if-gez v2, :cond_1a

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 16
    move-result-object v0

    .line 17
    const-string v2, "screen_width"

    .line 19
    invoke-static {v2, v0}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 26
    move-result v0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 30
    move-result v2

    .line 31
    cmpg-float v1, v2, v1

    .line 33
    if-gez v1, :cond_30

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object v1

    .line 39
    const-string v2, "screen_height"

    .line 41
    invoke-static {v2, v1}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 48
    move-result v2

    .line 49
    :cond_30
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 52
    move-result v0

    .line 53
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 56
    move-result v1

    .line 57
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 59
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 67
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getTargetDensity()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 74
    new-instance v0, Landroid/graphics/Canvas;

    .line 76
    iget-object v1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 78
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 83
    new-instance v0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 85
    iget-object v1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 87
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 92
    return-void
.end method
