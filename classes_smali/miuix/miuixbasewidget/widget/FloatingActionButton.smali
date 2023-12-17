.class public Lmiuix/miuixbasewidget/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;,
        Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;
    }
.end annotation


# static fields
.field private static final PRESSED_MASK_COLOR:I = 0xd000000

.field private static final SHADOW_ALPHA:I = 0x19

.field private static final SHADOW_RADIUS:F = 23.0f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 6.0f


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

.field private mFabColor:I

.field private mFabShadowColor:I

.field private mHasFabColor:Z

.field private mHasFabShadowColor:Z

.field private final mIsShadowEnabled:Z

.field private mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

.field private mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;

    const/high16 v1, 0x41b80000  # 23.0f

    invoke-direct {v0, v1}, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;-><init>(F)V

    invoke-virtual {v0}, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->create()Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetXDp:F

    const/high16 v1, 0x40c00000  # 6.0f

    .line 6
    iput v1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetYDp:F

    .line 7
    sget-object v0, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton:[I

    sget v1, Lmiuix/miuixbasewidget/R$style;->Widget_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton_fabShadowEnabled:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 9
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton_fabColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_fab_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 11
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 12
    sget p1, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton_fabShadowColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabShadowColor:Z

    .line 13
    iget p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabShadowColor:I

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    new-instance p1, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_fab_empty_holder:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;-><init>(Lmiuix/miuixbasewidget/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    .line 16
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->initBackground()V

    new-array p1, v0, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 17
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, p2

    .line 18
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private computeShadowColor(I)I
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1e

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v1

    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 19
    move-result p1

    .line 20
    const/16 v2, 0x19

    .line 22
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method private createFabBackground()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 3
    new-instance v1, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;

    .line 5
    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 11
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_29

    .line 17
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 19
    iget-boolean v4, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabShadowColor:Z

    .line 21
    if-eqz v4, :cond_19

    .line 23
    iget v4, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabShadowColor:I

    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    iget v4, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 28
    invoke-direct {p0, v4}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->computeShadowColor(I)I

    .line 31
    move-result v4

    .line 32
    :goto_1f
    iput v4, v1, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowColor:I

    .line 34
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 36
    if-nez v1, :cond_33

    .line 38
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->initDropShadowHelper()V

    .line 41
    goto :goto_33

    .line 42
    :cond_29
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 44
    if-eqz v1, :cond_30

    .line 46
    invoke-virtual {v1, p0, v3, v2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->enableViewShadow(Landroid/view/View;ZI)V

    .line 49
    :cond_30
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 52
    :cond_33
    :goto_33
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 55
    move-result-object v1

    .line 56
    iget v4, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 58
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 63
    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    .line 65
    aput-object v0, v4, v3

    .line 67
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    .line 69
    const/4 v5, 0x1

    .line 70
    aput-object v0, v4, v5

    .line 72
    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 77
    new-instance v4, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;

    .line 79
    invoke-direct {v4, p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    .line 82
    invoke-direct {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 85
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 88
    move-result-object v4

    .line 89
    const/high16 v6, 0xd000000

    .line 91
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    .line 96
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 98
    aput-object v1, v2, v3

    .line 100
    aput-object v0, v2, v5

    .line 102
    invoke-direct {v4, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 105
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 107
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 110
    sget-object v2, Landroid/widget/ImageView;->PRESSED_ENABLED_STATE_SET:[I

    .line 112
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 115
    sget-object v2, Landroid/widget/ImageView;->ENABLED_SELECTED_STATE_SET:[I

    .line 117
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    sget-object v2, Landroid/widget/ImageView;->EMPTY_STATE_SET:[I

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 125
    return-object v0
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_1d

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_fab_color_light:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 24
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 32
    return-object v0
.end method

.method private initBackground()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1a

    .line 7
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 23
    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 30
    :goto_1d
    return-void
.end method

.method private initDropShadowHelper()V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 9
    invoke-direct {v0, v1, v2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;-><init>(Landroid/content/Context;Lmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    .line 12
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 14
    return-void
.end method

.method private initEmptyHolder()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v3

    .line 17
    sub-int/2addr v3, v0

    .line 18
    sub-int/2addr v3, v2

    .line 19
    div-int/lit8 v3, v3, 0x2

    .line 21
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    .line 23
    mul-int/lit8 v3, v3, 0x2

    .line 25
    add-int v4, v0, v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {v0, p1, v1}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->drawShadow(Landroid/graphics/Canvas;F)V

    .line 17
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 20
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->initEmptyHolder()V

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 6
    if-eqz p1, :cond_1c

    .line 8
    invoke-virtual {p1, p2, p3, p4, p5}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->updateShadowRect(IIII)V

    .line 11
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 13
    const/4 p2, 0x2

    .line 14
    if-eqz p1, :cond_16

    .line 16
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 18
    const/4 p3, 0x1

    .line 19
    invoke-virtual {p1, p0, p3, p2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->enableViewShadow(Landroid/view/View;ZI)V

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-virtual {p1, p0, p3, p2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->enableViewShadow(Landroid/view/View;ZI)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 3
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 5
    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 8
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 4
    if-nez p1, :cond_9

    .line 6
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 7
    if-eq v0, p1, :cond_11

    .line 9
    :cond_8
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 11
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_11
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 21
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 4
    if-nez p1, :cond_d

    .line 6
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object p1

    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    :goto_10
    return-void
.end method
