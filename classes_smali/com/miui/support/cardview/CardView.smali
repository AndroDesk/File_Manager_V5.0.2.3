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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/support/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

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

    invoke-direct {p0, p1, p2, p3}, Lr/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    sget-object v0, Lcom/miui/support/cardview/R$styleable;->CardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/miui/support/cardview/R$styleable;->CardView_outlineStyle:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v0, :cond_39

    sget-object v0, Lcom/miui/support/cardview/R$styleable;->OutlineProvider:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/miui/support/cardview/R$styleable;->OutlineProvider_android_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-direct {p0, p1, v2, p3}, Lcom/miui/support/cardview/CardView;->setOutlineProviderFromAttribute(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_39
    sget p1, Lcom/miui/support/cardview/R$styleable;->CardView_miuix_useSmooth:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/support/cardview/CardView;->mUseSmooth:Z

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->checkNeedSmooth()Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-direct {p0, p3}, Lcom/miui/support/cardview/CardView;->setSmoothCornerEnable(Z)V

    :cond_4b
    sget p1, Lcom/miui/support/cardview/R$styleable;->CardView_miuix_strokeWidth:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/support/cardview/CardView;->setStrokeWidth(I)V

    sget p1, Lcom/miui/support/cardview/R$styleable;->CardView_miuix_strokeColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/support/cardview/CardView;->setStrokeColor(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    return-void
.end method

.method private checkNeedSmooth()Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->isCommonLiteStrategy()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/miui/support/cardview/CardView;->mUseSmooth:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private getOriginalBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawableForCardView;

    if-eqz v1, :cond_e

    check-cast v0, Lmiuix/smooth/SmoothContainerDrawableForCardView;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2;->getChildDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private isCommonLiteStrategy()Z
    .registers 2

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private setOutlineProviderFromAttribute(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_57

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_c
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_2e} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_2e} :catch_38
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_2e} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p1

    goto :goto_32

    :catch_31
    move-exception p1

    :goto_32
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_38
    :try_start_38
    new-array p1, v1, [Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_49} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_49} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_38 .. :try_end_49} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p1

    goto :goto_51

    :catch_4c
    move-exception p1

    goto :goto_51

    :catch_4e
    move-exception p1

    goto :goto_51

    :catch_50
    move-exception p1

    :goto_51
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_57
    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {p1, p2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 8

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSmoothCornerEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_2f

    :catch_18
    move-exception p1

    const-string v0, "setSmoothCornerEnabled failed:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiX.CardView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method private updateBackground()V
    .registers 3

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->getOriginalBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lmiuix/smooth/SmoothContainerDrawableForCardView;

    invoke-direct {v1}, Lmiuix/smooth/SmoothContainerDrawableForCardView;-><init>()V

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lr/a;->getRadius()F

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/miui/support/cardview/CardView;->getStrokeWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeWidth(I)V

    invoke-virtual {p0}, Lcom/miui/support/cardview/CardView;->getStrokeColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .registers 2

    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeWidth:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/support/cardview/CardView;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lr/a;->getRadius()F

    move-result v2

    invoke-virtual {p0}, Lr/a;->getRadius()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadius(F)V
    .registers 2

    invoke-super {p0, p1}, Lr/a;->setRadius(F)V

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeColor:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/miui/support/cardview/CardView;->mStrokeColor:I

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    :cond_9
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    iget v0, p0, Lcom/miui/support/cardview/CardView;->mStrokeWidth:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/miui/support/cardview/CardView;->mStrokeWidth:I

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->updateBackground()V

    :cond_9
    return-void
.end method
