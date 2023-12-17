.class public Lcom/miui/support/cardview/CardView;
.super Lr/a;
.source "CardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiX.CardView"


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mUseSmooth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/support/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/miui/support/cardview/R$attr;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/support/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lr/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    .line 6
    sget-object v0, Lcom/miui/support/cardview/R$styleable;->CardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardView_outlineStyle:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v0, :cond_39

    .line 8
    sget-object v0, Lcom/miui/support/cardview/R$styleable;->OutlineProvider:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 9
    sget v2, Lcom/miui/support/cardview/R$styleable;->OutlineProvider_android_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 11
    invoke-direct {p0, p1, v2, p3}, Lcom/miui/support/cardview/CardView;->setOutlineProviderFromAttribute(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    :cond_36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    :cond_39
    sget p1, Lcom/miui/support/cardview/R$styleable;->CardView_miuix_useSmooth:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/support/cardview/CardView;->mUseSmooth:Z

    .line 14
    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->checkNeedSmooth()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 15
    invoke-direct {p0, p3}, Lcom/miui/support/cardview/CardView;->setSmoothCornerEnable(Z)V

    .line 16
    :cond_4b
    sget p1, Lcom/miui/support/cardview/R$styleable;->CardView_miuix_strokeWidth:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/support/cardview/CardView;->setStrokeWidth(I)V

    .line 18
    sget p1, Lcom/miui/support/cardview/R$styleable;->CardView_miuix_strokeColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/support/cardview/CardView;->setStrokeColor(I)V

    .line 20
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    return-void
.end method

.method private checkNeedSmooth()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->isCommonLiteStrategy()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    iget-boolean v0, p0, Lcom/miui/support/cardview/CardView;->mUseSmooth:Z

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method private getOriginalBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawableForCardView;

    .line 7
    if-eqz v1, :cond_e

    .line 9
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawableForCardView;

    .line 11
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2;->getChildDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method private isCommonLiteStrategy()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method private setOutlineProviderFromAttribute(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/view/ViewOutlineProvider;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    move-result-object p2
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_57

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_c
    new-array v2, v0, [Ljava/lang/Class;

    .line 15
    const-class v3, Landroid/content/Context;

    .line 17
    aput-object v3, v2, v1

    .line 19
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    const/4 v4, 0x1

    .line 22
    aput-object v3, v2, v4

    .line 24
    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    move-result-object v2

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    aput-object p1, v0, v1

    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    aput-object p1, v0, v4

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/view/ViewOutlineProvider;

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_2e} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_2e} :catch_38
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_2e} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_2e} :catch_2f

    .line 47
    return-void

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    goto :goto_32

    .line 50
    :catch_31
    move-exception p1

    .line 51
    :goto_32
    new-instance p2, Ljava/lang/RuntimeException;

    .line 53
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 56
    throw p2

    .line 57
    :catch_38
    :try_start_38
    new-array p1, v1, [Ljava/lang/Class;

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 62
    move-result-object p1

    .line 63
    new-array p2, v1, [Ljava/lang/Object;

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/view/ViewOutlineProvider;

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_49} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_49} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_38 .. :try_end_49} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_49} :catch_4a

    .line 74
    return-void

    .line 75
    :catch_4a
    move-exception p1

    .line 76
    goto :goto_51

    .line 77
    :catch_4c
    move-exception p1

    .line 78
    goto :goto_51

    .line 79
    :catch_4e
    move-exception p1

    .line 80
    goto :goto_51

    .line 81
    :catch_50
    move-exception p1

    .line 82
    :goto_51
    new-instance p2, Ljava/lang/RuntimeException;

    .line 84
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    throw p2

    .line 88
    :catch_57
    new-instance p1, Ljava/lang/NoClassDefFoundError;

    .line 90
    invoke-direct {p1, p2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 8

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 3
    const-string v1, "setSmoothCornerEnabled"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v2, v5

    .line 21
    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 24
    goto :goto_2f

    .line 25
    :catch_18
    move-exception p1

    .line 26
    const-string v0, "setSmoothCornerEnabled failed:"

    .line 28
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "MiuiX.CardView"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2f
    return-void
.end method

.method private updateBackground()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->getOriginalBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/smooth/SmoothContainerDrawableForCardView;

    .line 7
    invoke-direct {v1}, Lmiuix/smooth/SmoothContainerDrawableForCardView;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0}, Lr/a;->getRadius()F

    .line 16
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/support/cardview/CardView;->getStrokeWidth()I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeWidth(I)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/support/cardview/CardView;->getStrokeColor()I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeColor(I)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeColor:I

    .line 3
    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeWidth:I

    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 15
    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 24
    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    int-to-float v1, v1

    .line 36
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 38
    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    move-result v2

    .line 48
    sub-int/2addr v1, v2

    .line 49
    int-to-float v1, v1

    .line 50
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 52
    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    .line 54
    iget-object v1, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    .line 56
    invoke-virtual {p0}, Lr/a;->getRadius()F

    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0}, Lr/a;->getRadius()F

    .line 63
    move-result v3

    .line 64
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 66
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 69
    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method public setRadius(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lr/a;->setRadius(F)V

    .line 4
    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    .line 7
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeColor:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/miui/support/cardview/CardView;->mStrokeColor:I

    .line 7
    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    .line 10
    :cond_9
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeWidth:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/miui/support/cardview/CardView;->mStrokeWidth:I

    .line 7
    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    .line 10
    :cond_9
    return-void
.end method
