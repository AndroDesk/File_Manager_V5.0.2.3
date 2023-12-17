.class public Lcom/miui/maml/MamlAdaptiveIconDrawable;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "MamlAdaptiveIconDrawable.java"


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "MamlAdaptiveIconDrawable"


# instance fields
.field private volatile mLayerFancyDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/FancyDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLayerQuietDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockFancy:Ljava/lang/Object;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p3, p4}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->init(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    return-void
.end method

.method private addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_16

    .line 3
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 5
    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {p1}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 10
    invoke-virtual {p1}, Lcom/miui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/miui/maml/FancyDrawable;

    .line 16
    if-eqz p1, :cond_16

    .line 18
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_16
    return-void
.end method

.method private init(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .registers 6

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager;

    .line 9
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 15
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    const-string v0, "den"

    .line 23
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 38
    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 45
    const-string v0, "quietImage.png"

    .line 47
    invoke-virtual {p2, p1, v0}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    if-eqz p1, :cond_4a

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 64
    move-result p2

    .line 65
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    :cond_4a
    return-void
.end method

.method private prepareLayerFancyDrawables()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/miui/maml/AnimatingDrawable;

    .line 19
    if-eqz v1, :cond_19

    .line 21
    check-cast v0, Lcom/miui/maml/AnimatingDrawable;

    .line 23
    invoke-direct {p0, v0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 32
    if-eqz v1, :cond_3a

    .line 34
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 36
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_28
    if-ge v2, v1, :cond_3a

    .line 43
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v3

    .line 47
    instance-of v4, v3, Lcom/miui/maml/AnimatingDrawable;

    .line 49
    if-eqz v4, :cond_37

    .line 51
    check-cast v3, Lcom/miui/maml/AnimatingDrawable;

    .line 53
    invoke-direct {p0, v3}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V

    .line 56
    :cond_37
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_28

    .line 59
    :cond_3a
    return-void
.end method

.method private prepareLayerQuietDrawables()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/miui/maml/AnimatingDrawable;

    .line 19
    if-eqz v1, :cond_1f

    .line 21
    iget-object v1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 23
    check-cast v0, Lcom/miui/maml/AnimatingDrawable;

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 36
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 38
    if-eqz v1, :cond_46

    .line 40
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_2e
    if-ge v2, v1, :cond_46

    .line 49
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object v3

    .line 53
    instance-of v4, v3, Lcom/miui/maml/AnimatingDrawable;

    .line 55
    if-eqz v4, :cond_43

    .line 57
    iget-object v4, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 59
    check-cast v3, Lcom/miui/maml/AnimatingDrawable;

    .line 61
    invoke-virtual {v3}, Lcom/miui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_43
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_2e

    .line 71
    :cond_46
    return-void
.end method


# virtual methods
.method public getLayerFancyDrawables()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/FancyDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_f

    .line 5
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    invoke-direct {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->prepareLayerFancyDrawables()V

    .line 11
    monitor-exit v0

    .line 12
    goto :goto_f

    .line 13
    :catchall_c
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    .line 15
    throw v1

    .line 16
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 18
    return-object v0
.end method

.method public getLayerQuietDrawables()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_f

    .line 5
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    invoke-direct {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->prepareLayerQuietDrawables()V

    .line 11
    monitor-exit v0

    .line 12
    goto :goto_f

    .line 13
    :catchall_c
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    .line 15
    throw v1

    .line 16
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 18
    return-object v0
.end method

.method public getTopQuietDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method
