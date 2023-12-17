.class public Lcom/miui/maml/shader/BitmapShaderElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "BitmapShaderElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapShader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    iget-object p2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 9
    move-result-object p2

    .line 10
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 12
    const-string v0, "src"

    .line 14
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/maml/shader/BitmapShaderElement;->resolveTileMode(Lorg/w3c/dom/Element;)V

    .line 27
    new-instance p1, Landroid/graphics/BitmapShader;

    .line 29
    iget-object p2, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    iget-object v0, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 33
    iget-object v1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 35
    invoke-direct {p1, p2, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 38
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 40
    return-void
.end method

.method private resolveTileMode(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    const-string v0, "tile"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, ","

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-gt v0, v1, :cond_17

    .line 17
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 19
    iput-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 21
    iput-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 23
    return-void

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    aget-object v0, p1, v0

    .line 27
    invoke-static {v0}, Lcom/miui/maml/shader/ShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 33
    aget-object p1, p1, v1

    .line 35
    invoke-static {p1}, Lcom/miui/maml/shader/ShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 41
    return-void
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .registers 1

    return-void
.end method

.method public updateShader()V
    .registers 1

    return-void
.end method

.method public updateShaderMatrix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
