.class public Lcom/airbnb/lottie/manager/FontAssetManager;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/airbnb/lottie/FontAssetDelegate;

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/MutablePair<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/airbnb/lottie/model/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/MutablePair<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    .line 6
    invoke-direct {v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 25
    const-string v0, ".ttf"

    .line 27
    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 31
    instance-of p2, p1, Landroid/view/View;

    .line 33
    if-nez p2, :cond_2b

    .line 35
    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 37
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 43
    return-void

    .line 44
    :cond_2b
    check-cast p1, Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 56
    return-void
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Typeface;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 15
    if-eqz v1, :cond_14

    .line 17
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 20
    move-result-object v0

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 23
    if-eqz v1, :cond_26

    .line 25
    if-nez v0, :cond_26

    .line 27
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_26

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 35
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 38
    move-result-object v0

    .line 39
    :cond_26
    if-nez v0, :cond_3d

    .line 41
    const-string v0, "fonts/"

    .line 43
    invoke-static {v0, p1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 58
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 61
    move-result-object v0

    .line 62
    :cond_3d
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 64
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 5

    .line 1
    const-string v0, "Italic"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "Bold"

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p2

    .line 13
    if-eqz v0, :cond_12

    .line 15
    if-eqz p2, :cond_12

    .line 17
    const/4 p2, 0x3

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    if-eqz v0, :cond_16

    .line 21
    const/4 p2, 0x2

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    if-eqz p2, :cond_1a

    .line 25
    const/4 p2, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p2, 0x0

    .line 28
    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    .line 31
    move-result v0

    .line 32
    if-ne v0, p2, :cond_22

    .line 34
    return-object p1

    .line 35
    :cond_22
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/model/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/graphics/Typeface;

    .line 16
    if-eqz v0, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 31
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object p1
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 3
    return-void
.end method
