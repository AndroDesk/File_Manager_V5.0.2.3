.class public Lcom/miui/maml/AnimatingDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;
    }
.end annotation


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "Maml.AnimatingDrawable"

.field public static final TIME_FANCY_CACHE:I


# instance fields
.field private final mAnimIndex:I

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFancyDrawable:Lcom/miui/maml/FancyDrawable;

.field private final mLayerIndex:I

.field private final mLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private final mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mUseFancyWhenStatic:Z

.field private mUseQuietWhenAnim:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .registers 16

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;I)V
    .registers 17

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;II)V
    .registers 18

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .registers 11

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 8
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 11
    iput p6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 12
    iput p7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    .line 13
    iput-boolean p8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 14
    iput-boolean p9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 15
    invoke-direct {p0}, Lcom/miui/maml/AnimatingDrawable;->init()V

    return-void
.end method

.method private init()V
    .registers 12

    .line 1
    new-instance v10, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 11
    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 13
    iget v6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 15
    iget v7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    .line 17
    iget-boolean v8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 19
    iget-boolean v9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 21
    move-object v0, v10

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    .line 25
    iput-object v10, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 27
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 29
    const-string v1, "window"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/WindowManager;

    .line 37
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 43
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 51
    const-string v2, "den"

    .line 53
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v2

    .line 57
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 73
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object v1

    .line 79
    const-string v2, "quietImage.png"

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    if-eqz v0, :cond_85

    .line 89
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 92
    move-result v0

    .line 93
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 98
    move-result v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 102
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 113
    move-result v1

    .line 114
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 119
    move-result v2

    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 126
    if-eqz v0, :cond_9c

    .line 128
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 133
    goto :goto_9c

    .line 134
    :cond_85
    const-string v0, "mQuietDrwable is null! package/class="

    .line 136
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "/"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 152
    const-string v2, "Maml.AnimatingDrawable"

    .line 154
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_9c
    :goto_9c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 6
    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    .line 18
    throw v1
.end method

.method public drawIcon(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    const-string v0, "Maml.AnimatingDrawable"

    .line 3
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 15
    move-result-object v2

    .line 16
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object v3

    .line 23
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 25
    int-to-float v3, v3

    .line 26
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mWidth:I

    .line 31
    int-to-float v2, v2

    .line 32
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 34
    int-to-float v3, v3

    .line 35
    div-float/2addr v2, v3

    .line 36
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mHeight:I

    .line 38
    int-to-float v3, v3

    .line 39
    iget v4, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 41
    int-to-float v4, v4

    .line 42
    div-float/2addr v3, v4

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 47
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_36} :catch_37

    .line 55
    goto :goto_4e

    .line 56
    :catch_37
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto :goto_4e

    .line 68
    :catch_43
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_4e
    return-void
.end method

.method public getAnimIndex()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-le v0, v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 9
    return v0
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 6
    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 7
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 9
    if-eqz v1, :cond_10

    .line 11
    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_13
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    .line 22
    throw v1
.end method

.method public isOnlyFancyWork()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 3
    return v0
.end method

.method public isOnlyQuietWork()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 3
    return v0
.end method

.method public prepareFancyDrawable()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 11
    if-eqz v1, :cond_e

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 17
    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 19
    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 21
    const-wide/16 v5, 0x0

    .line 23
    iget-object v7, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 25
    iget v8, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 27
    invoke-static/range {v2 .. v8}, Lcom/miui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/miui/maml/FancyDrawable;

    .line 33
    if-eqz v2, :cond_40

    .line 35
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    if-nez v2, :cond_37

    .line 39
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 41
    if-lez v2, :cond_2e

    .line 43
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 45
    if-gtz v2, :cond_37

    .line 47
    :cond_2e
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 49
    iget v3, v2, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 51
    iget v2, v2, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 53
    invoke-virtual {p0, v3, v2}, Lcom/miui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 56
    :cond_37
    check-cast v1, Lcom/miui/maml/FancyDrawable;

    .line 58
    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 60
    iget-object v2, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 62
    invoke-virtual {v1, v2}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    :cond_40
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    .line 69
    throw v1
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/maml/MamlDrawable;->setBounds(IIII)V

    .line 4
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    const-string v0, "Maml.AnimatingDrawable"

    .line 6
    const-string v1, "setColorFilter"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    invoke-virtual {v0, p1}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 32
    :cond_1f
    return-void
.end method

.method public useFancyWhenStatic()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 3
    return v0
.end method

.method public useQuietWhenAnim()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 3
    return v0
.end method
