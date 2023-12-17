.class public abstract Lmiuix/navigator/navigation/NavigationBarItemView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarItemView.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final INVALID_ITEM_POSITION:I = -0x1

.field private static final LABEL_WIDE_STYLE_MARGIN_START_DP:I = 0x6


# instance fields
.field private activeIndicatorDesiredHeight:I

.field private activeIndicatorDesiredWidth:I

.field private activeIndicatorEnabled:Z

.field private activeIndicatorMarginHorizontal:I

.field private activeIndicatorResizeable:Z

.field private activeIndicatorView:Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private icon:Landroid/widget/ImageView;

.field private iconContainer:Landroid/widget/FrameLayout;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private initialized:Z

.field private isShifting:Z

.field public itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

.field private itemFolmeInvoke:Lmiuix/animation/IFolme;

.field private itemPaddingBottom:I

.field private itemPaddingTop:I

.field private itemPosition:I

.field private itemTouchColor:Landroid/content/res/ColorStateList;

.field private label:Landroid/widget/TextView;

.field private labelVisibilityMode:I

.field public layoutStyle:I

.field private mBadgeAnchorView:Landroid/view/View;

.field private mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

.field private originalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleDownFactor:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private scaleUpFactor:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private shiftAmount:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private wrappedIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lmiuix/navigator/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->initialized:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPosition:I

    .line 5
    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    .line 6
    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    .line 7
    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    .line 8
    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    .line 9
    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    .line 10
    iput p2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemLayoutResId()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    .line 13
    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_active_indicator_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 14
    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_icon_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 15
    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_label_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemBackgroundResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemDefaultMarginResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 18
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingBottom:I

    .line 19
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 p2, 0x2

    .line 20
    invoke-static {p1, p2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateLayout()V

    new-array p1, v1, [Landroid/view/View;

    aput-object p0, p1, v0

    .line 23
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemFolmeInvoke:Lmiuix/animation/IFolme;

    .line 24
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, p2, v0

    const/high16 v3, 0x3f800000  # 1.0f

    .line 25
    invoke-interface {p1, v3, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v4, p2, v0

    .line 26
    invoke-interface {p1, v3, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const p2, 0x3f19999a  # 0.6f

    new-array v5, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, v5, v0

    .line 27
    invoke-interface {p1, p2, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v4, p2, v0

    .line 28
    invoke-interface {p1, v3, p2}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    .line 29
    invoke-interface {p1, p0, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 30
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemFolmeInvoke:Lmiuix/animation/IFolme;

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/navigation/NavigationBarItemView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->lambda$setChecked$0(Z)V

    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sub-float v0, p1, p2

    .line 3
    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->shiftAmount:F

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    mul-float v1, p2, v0

    .line 9
    div-float/2addr v1, p1

    .line 10
    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->scaleUpFactor:F

    .line 12
    mul-float/2addr p1, v0

    .line 13
    div-float/2addr p1, p2

    .line 14
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->scaleDownFactor:F

    .line 16
    return-void
.end method

.method private getIconOrContainer()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 8
    :goto_7
    return-object v0
.end method

.method private getItemVisiblePosition()I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    if-ge v2, v1, :cond_21

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v4

    .line 19
    instance-of v5, v4, Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 21
    if-eqz v5, :cond_1e

    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1e

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 31
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_c

    .line 34
    :cond_21
    return v3
.end method

.method private getSuggestedIconHeight()I
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, v0

    .line 25
    add-int/2addr v2, v1

    .line 26
    return v2
.end method

.method private getSuggestedIconWidth()I
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v1

    .line 18
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    move-result v3

    .line 24
    add-int/2addr v3, v1

    .line 25
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 27
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, v3

    .line 32
    return v0
.end method

.method private hasBadge()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method private isActiveIndicatorResizeableAndUnlabeled()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method private synthetic lambda$setChecked$0(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextViewTypeFace(Z)V

    .line 4
    return-void
.end method

.method private refreshChecked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method private refreshItemBackground()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    .line 5
    if-eqz v1, :cond_c

    .line 7
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 13
    :cond_c
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-static {p0, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    const/16 v1, 0x1a

    .line 22
    if-lt v0, v1, :cond_1b

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDefaultFocusHighlightEnabled(Z)V

    .line 28
    :cond_1b
    return-void
.end method

.method private static setTextAppearanceWithoutFontScaling(Landroid/widget/TextView;I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p1, v1}, Lmiuix/internal/util/MiuixResources;->getUnscaledTextSize(Landroid/content/Context;II)I

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_12

    .line 15
    int-to-float p1, p1

    .line 16
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    :cond_12
    return-void
.end method

.method private setTextViewTypeFace(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 5
    invoke-static {p1}, Lmiuix/navigator/navigation/Typography;->setTextViewMiSansMediumBold(Landroid/widget/TextView;)V

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 11
    invoke-static {p1}, Lmiuix/navigator/navigation/Typography;->setTextViewMiSansNormal(Landroid/widget/TextView;)V

    .line 14
    :goto_d
    return-void
.end method

.method private static setViewScaleValues(Landroid/view/View;FFI)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 7
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    return-void
.end method

.method private static setViewTopMarginAndGravity(Landroid/view/View;II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    instance-of p1, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    if-eqz p1, :cond_13

    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    :cond_13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
.end method

.method private static setViewVerticalMargin(Landroid/view/View;II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    return-void
.end method

.method private updateActiveIndicatorLayoutParams(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    .line 8
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    .line 10
    mul-int/lit8 v1, v1, 0x2

    .line 12
    sub-int/2addr p1, v1

    .line 13
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 25
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->isActiveIndicatorResizeableAndUnlabeled()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_20

    .line 31
    move v1, p1

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    .line 35
    :goto_22
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 37
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 39
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method

.method private static updateViewPaddingBottom(Landroid/view/View;I)V
    .registers 5

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
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->initialized:Z

    .line 7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getItemBackgroundResId()I
    .registers 2

    .line 1
    sget v0, Lmiuix/navigator/R$drawable;->miuix_base_navigation_bar_item_background:I

    .line 3
    return v0
.end method

.method public getItemData()Lmiuix/appcompat/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public getItemDefaultMarginResId()I
    .registers 2

    .line 1
    sget v0, Lmiuix/navigator/R$dimen;->miuix_base_navigation_bar_item_default_margin:I

    .line 3
    return v0
.end method

.method public abstract getItemLayoutResId()I
.end method

.method public getItemPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPosition:I

    .line 3
    return v0
.end method

.method public getLayoutStyle()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    .line 3
    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getSuggestedIconHeight()I

    .line 12
    move-result v1

    .line 13
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 25
    add-int/2addr v2, v0

    .line 26
    return v2
.end method

.method public getSuggestedMinimumWidth()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 11
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    add-int/2addr v2, v0

    .line 21
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getSuggestedIconWidth()I

    .line 24
    move-result v0

    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setCheckable(Z)V

    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 17
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setEnabled(Z)V

    .line 24
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 41
    move-result p2

    .line 42
    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 45
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_3d

    .line 55
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    :cond_3d
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_45

    .line 68
    const/4 p1, 0x0

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    const/16 p1, 0x8

    .line 72
    :goto_47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->initialized:Z

    .line 78
    return-void
.end method

.method public isLayoutWideLandStyle()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1d

    .line 17
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    sget-object v0, Lmiuix/navigator/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    .line 27
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 30
    :cond_1d
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemVisiblePosition()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 15
    move-result v5

    .line 16
    invoke-static/range {v0 .. v5}, Ln0/c$d;->a(IIIIZZ)Ln0/c$d;

    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Ln0/c$d;->a:Ljava/lang/Object;

    .line 22
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2d

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 37
    sget-object v0, Ln0/c$a;->e:Ln0/c$a;

    .line 39
    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    .line 41
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 46
    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 50
    sget v1, Lmiuix/navigator/R$string;->miuix_item_view_role_description:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 59
    move-result-object p1

    .line 60
    const-string v1, "AccessibilityNodeInfo.roleDescription"

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemFolmeInvoke:Lmiuix/animation/IFolme;

    .line 3
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeBadge(Lmiuix/appcompat/widget/BadgeDrawable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->hasBadge()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 15
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable(Landroid/view/View;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 23
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    .line 25
    return-void
.end method

.method public setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    .line 12
    return-void
.end method

.method public setActiveIndicatorEnabled(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    .line 3
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    .line 6
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 8
    if-eqz v0, :cond_15

    .line 10
    if-eqz p1, :cond_d

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/16 p1, 0x8

    .line 16
    :goto_f
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    :cond_15
    return-void
.end method

.method public setActiveIndicatorHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    .line 10
    return-void
.end method

.method public setActiveIndicatorMarginHorizontal(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    .line 10
    return-void
.end method

.method public setActiveIndicatorResizeable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    .line 3
    return-void
.end method

.method public setActiveIndicatorWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    .line 10
    return-void
.end method

.method public setBadge(Lmiuix/appcompat/widget/BadgeDrawable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 13
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->isLayoutWideLandStyle()Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eqz v0, :cond_28

    .line 21
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 23
    if-eqz v0, :cond_28

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_28

    .line 31
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1, v0, v2, v1}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    .line 36
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    .line 40
    goto :goto_33

    .line 41
    :cond_28
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 43
    if-eqz v0, :cond_33

    .line 45
    invoke-virtual {p1, v0, v2, v1}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    .line 48
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    .line 52
    :cond_33
    :goto_33
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 54
    return-void
.end method

.method public setCheckable(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4
    return-void
.end method

.method public setChecked(Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    div-int/2addr v1, v2

    .line 9
    int-to-float v1, v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 13
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_25

    .line 29
    new-instance v0, Lmiuix/navigator/navigation/a;

    .line 31
    invoke-direct {v0, p0, p1}, Lmiuix/navigator/navigation/a;-><init>(Lmiuix/navigator/navigation/NavigationBarItemView;Z)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    goto :goto_28

    .line 38
    :cond_25
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextViewTypeFace(Z)V

    .line 41
    :goto_28
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    .line 43
    const/4 v1, 0x3

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    if-ne v0, v1, :cond_31

    .line 48
    move v0, v3

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v0, v4

    .line 51
    :goto_32
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    .line 53
    const/4 v5, -0x1

    .line 54
    const/4 v6, 0x4

    .line 55
    if-eq v1, v5, :cond_d7

    .line 57
    if-eqz v1, :cond_97

    .line 59
    if-eq v1, v3, :cond_5c

    .line 61
    if-eq v1, v2, :cond_40

    .line 63
    goto/16 :goto_151

    .line 65
    :cond_40
    if-eqz v0, :cond_4a

    .line 67
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 74
    goto :goto_53

    .line 75
    :cond_4a
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 78
    move-result-object v0

    .line 79
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 81
    invoke-static {v0, v1, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 84
    :goto_53
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 86
    const/16 v1, 0x8

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    goto/16 :goto_151

    .line 93
    :cond_5c
    if-eqz p1, :cond_7d

    .line 95
    if-eqz v0, :cond_68

    .line 97
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 104
    goto :goto_76

    .line 105
    :cond_68
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 108
    move-result-object v0

    .line 109
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 111
    int-to-float v1, v1

    .line 112
    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->shiftAmount:F

    .line 114
    add-float/2addr v1, v2

    .line 115
    float-to-int v1, v1

    .line 116
    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 119
    :goto_76
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 124
    goto/16 :goto_151

    .line 126
    :cond_7d
    if-eqz v0, :cond_87

    .line 128
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 135
    goto :goto_90

    .line 136
    :cond_87
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 139
    move-result-object v0

    .line 140
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 142
    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 145
    :goto_90
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 150
    goto/16 :goto_151

    .line 152
    :cond_97
    if-eqz p1, :cond_bd

    .line 154
    if-eqz v0, :cond_a8

    .line 156
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 163
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 165
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 168
    goto :goto_b6

    .line 169
    :cond_a8
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 172
    move-result-object v0

    .line 173
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 175
    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 178
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 180
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 183
    :goto_b6
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 185
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    goto/16 :goto_151

    .line 190
    :cond_bd
    if-eqz v0, :cond_c7

    .line 192
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 199
    goto :goto_d0

    .line 200
    :cond_c7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 203
    move-result-object v0

    .line 204
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 206
    invoke-static {v0, v1, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 209
    :goto_d0
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 211
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 214
    goto/16 :goto_151

    .line 216
    :cond_d7
    iget-boolean v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->isShifting:Z

    .line 218
    if-eqz v1, :cond_119

    .line 220
    if-eqz p1, :cond_fb

    .line 222
    if-eqz v0, :cond_e7

    .line 224
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 231
    goto :goto_f0

    .line 232
    :cond_e7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 235
    move-result-object v0

    .line 236
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 238
    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 241
    :goto_f0
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 243
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 246
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 248
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 251
    goto :goto_151

    .line 252
    :cond_fb
    if-eqz v0, :cond_105

    .line 254
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 257
    move-result-object v0

    .line 258
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 261
    goto :goto_10e

    .line 262
    :cond_105
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 265
    move-result-object v0

    .line 266
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 268
    invoke-static {v0, v1, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 271
    :goto_10e
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 273
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 276
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 278
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 281
    goto :goto_151

    .line 282
    :cond_119
    if-eqz p1, :cond_139

    .line 284
    if-eqz v0, :cond_125

    .line 286
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 289
    move-result-object v0

    .line 290
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 293
    goto :goto_133

    .line 294
    :cond_125
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 297
    move-result-object v0

    .line 298
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 300
    int-to-float v1, v1

    .line 301
    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->shiftAmount:F

    .line 303
    add-float/2addr v1, v2

    .line 304
    float-to-int v1, v1

    .line 305
    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 308
    :goto_133
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 310
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 313
    goto :goto_151

    .line 314
    :cond_139
    if-eqz v0, :cond_143

    .line 316
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 319
    move-result-object v0

    .line 320
    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 323
    goto :goto_14c

    .line 324
    :cond_143
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    .line 327
    move-result-object v0

    .line 328
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 330
    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    .line 333
    :goto_14c
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 335
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 338
    :goto_151
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 341
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 344
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    if-eqz p1, :cond_1d

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0x3ea

    .line 22
    invoke-static {p1, v0}, Lm0/z$a;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Lm0/g0$k;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    invoke-static {p0, p1}, Lm0/g0;->o(Landroid/view/View;Lm0/z;)V

    .line 34
    :goto_21
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz p1, :cond_21

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 21
    :goto_14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 13
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 14
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    :cond_12
    return-void
.end method

.method public setItemBackground(I)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    :goto_c
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    :cond_14
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingBottom:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingBottom:I

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    .line 10
    :cond_9
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    .line 10
    :cond_9
    return-void
.end method

.method public setItemPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPosition:I

    .line 3
    return-void
.end method

.method public setItemTouchColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemTouchColor:Landroid/content/res/ColorStateList;

    .line 3
    if-eqz p1, :cond_13

    .line 5
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemFolmeInvoke:Lmiuix/animation/IFolme;

    .line 7
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemTouchColor:Landroid/content/res/ColorStateList;

    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 16
    move-result v0

    .line 17
    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->setTint(I)Lmiuix/animation/ITouchStyle;

    .line 20
    :cond_13
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    .line 23
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result p1

    .line 11
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    .line 14
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    .line 17
    :cond_10
    return-void
.end method

.method public setLayoutStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    .line 3
    return-void
.end method

.method public setShifting(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->isShifting:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->isShifting:Z

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    .line 10
    :cond_9
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 3
    invoke-static {v0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextAppearanceWithoutFontScaling(Landroid/widget/TextView;I)V

    .line 6
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 8
    if-eqz v0, :cond_13

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_16

    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    :cond_16
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateLayout()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->isLayoutWideLandStyle()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_29

    .line 16
    const/16 v1, 0x11

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    move-result-object v3

    .line 30
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 32
    const/high16 v4, 0x40c00000  # 6.0f

    .line 34
    invoke-static {v3, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 37
    move-result v3

    .line 38
    move v5, v3

    .line 39
    move v3, v2

    .line 40
    move v2, v5

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    const/4 v1, 0x1

    .line 43
    const/16 v3, 0x31

    .line 45
    move v5, v3

    .line 46
    move v3, v1

    .line 47
    move v1, v5

    .line 48
    :goto_2f
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 51
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 62
    return-void
.end method
