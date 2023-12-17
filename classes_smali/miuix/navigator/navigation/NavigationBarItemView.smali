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

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiuix/navigator/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->initialized:Z

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPosition:I

    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    iput p2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemLayoutResId()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_active_indicator_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_icon_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    sget p1, Lmiuix/navigator/R$id;->miuix_navigation_bar_item_label_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemBackgroundResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemDefaultMarginResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingBottom:I

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateLayout()V

    new-array p1, v1, [Landroid/view/View;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemFolmeInvoke:Lmiuix/animation/IFolme;

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, p2, v0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-interface {p1, v3, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v4, p2, v0

    invoke-interface {p1, v3, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const p2, 0x3f19999a  # 0.6f

    new-array v5, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, v5, v0

    invoke-interface {p1, p2, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v4, p2, v0

    invoke-interface {p1, v3, p2}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

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

    sub-float v0, p1, p2

    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->shiftAmount:F

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->scaleUpFactor:F

    mul-float/2addr p1, v0

    div-float/2addr p1, p2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->scaleDownFactor:F

    return-void
.end method

.method private getIconOrContainer()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    :goto_7
    return-object v0
.end method

.method private getItemVisiblePosition()I
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v2, v1, :cond_21

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v5, :cond_1e

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1e

    add-int/lit8 v3, v3, 0x1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_21
    return v3
.end method

.method private getSuggestedIconHeight()I
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method private getSuggestedIconWidth()I
    .registers 5

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private hasBadge()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isActiveIndicatorResizeableAndUnlabeled()Z
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private synthetic lambda$setChecked$0(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextViewTypeFace(Z)V

    return-void
.end method

.method private refreshChecked()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_b
    return-void
.end method

.method private refreshItemBackground()V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDefaultFocusHighlightEnabled(Z)V

    :cond_1b
    return-void
.end method

.method private static setTextAppearanceWithoutFontScaling(Landroid/widget/TextView;I)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lmiuix/internal/util/MiuixResources;->getUnscaledTextSize(Landroid/content/Context;II)I

    move-result p1

    if-eqz p1, :cond_12

    int-to-float p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_12
    return-void
.end method

.method private setTextViewTypeFace(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-static {p1}, Lmiuix/navigator/navigation/Typography;->setTextViewMiSansMediumBold(Landroid/widget/TextView;)V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-static {p1}, Lmiuix/navigator/navigation/Typography;->setTextViewMiSansNormal(Landroid/widget/TextView;)V

    :goto_d
    return-void
.end method

.method private static setViewScaleValues(Landroid/view/View;FFI)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static setViewTopMarginAndGravity(Landroid/view/View;II)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    instance-of p1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_13

    move-object p1, v0

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static setViewVerticalMargin(Landroid/view/View;II)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateActiveIndicatorLayoutParams(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->isActiveIndicatorResizeableAndUnlabeled()Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, p1

    goto :goto_22

    :cond_20
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    :goto_22
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static updateViewPaddingBottom(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->initialized:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResId()I
    .registers 2

    sget v0, Lmiuix/navigator/R$drawable;->miuix_base_navigation_bar_item_background:I

    return v0
.end method

.method public getItemData()Lmiuix/appcompat/view/menu/MenuItemImpl;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemDefaultMarginResId()I
    .registers 2

    sget v0, Lmiuix/navigator/R$dimen;->miuix_base_navigation_bar_item_default_margin:I

    return v0
.end method

.method public abstract getItemLayoutResId()I
.end method

.method public getItemPosition()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPosition:I

    return v0
.end method

.method public getLayoutStyle()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getSuggestedIconHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    return v2
.end method

.method public getSuggestedMinimumWidth()I
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getSuggestedIconWidth()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setChecked(Z)V

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3d

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3d
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_45

    const/4 p1, 0x0

    goto :goto_47

    :cond_45
    const/16 p1, 0x8

    :goto_47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->initialized:Z

    return-void
.end method

.method public isLayoutWideLandStyle()Z
    .registers 3

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lmiuix/navigator/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1d
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemVisiblePosition()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Ln0/c$d;->a(IIIIZZ)Ln0/c$d;

    move-result-object v0

    iget-object v0, v0, Ln0/c$d;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object v0, Ln0/c$a;->e:Ln0/c$a;

    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$string;->miuix_item_view_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemFolmeInvoke:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeBadge(Lmiuix/appcompat/widget/BadgeDrawable;)V
    .registers 3

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    return-void
.end method

.method public setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    return-void
.end method

.method public setActiveIndicatorEnabled(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    const/16 p1, 0x8

    :goto_f
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_15
    return-void
.end method

.method public setActiveIndicatorHeight(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    return-void
.end method

.method public setActiveIndicatorMarginHorizontal(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    return-void
.end method

.method public setActiveIndicatorResizeable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorResizeable:Z

    return-void
.end method

.method public setActiveIndicatorWidth(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    return-void
.end method

.method public setBadge(Lmiuix/appcompat/widget/BadgeDrawable;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->isLayoutWideLandStyle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2, v1}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    goto :goto_33

    :cond_28
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_33

    invoke-virtual {p1, v0, v2, v1}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeAnchorView:Landroid/view/View;

    :cond_33
    :goto_33
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    return-void
.end method

.method public setCheckable(Z)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 9

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lmiuix/navigator/navigation/a;

    invoke-direct {v0, p0, p1}, Lmiuix/navigator/navigation/a;-><init>(Lmiuix/navigator/navigation/NavigationBarItemView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :cond_25
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextViewTypeFace(Z)V

    :goto_28
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_31

    move v0, v3

    goto :goto_32

    :cond_31
    move v0, v4

    :goto_32
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eq v1, v5, :cond_d7

    if-eqz v1, :cond_97

    if-eq v1, v3, :cond_5c

    if-eq v1, v2, :cond_40

    goto/16 :goto_151

    :cond_40
    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_53

    :cond_4a
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-static {v0, v1, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_53
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_151

    :cond_5c
    if-eqz p1, :cond_7d

    if-eqz v0, :cond_68

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_76

    :cond_68
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    int-to-float v1, v1

    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_76
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_151

    :cond_7d
    if-eqz v0, :cond_87

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_90

    :cond_87
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_90
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_151

    :cond_97
    if-eqz p1, :cond_bd

    if-eqz v0, :cond_a8

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_b6

    :cond_a8
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_b6
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_151

    :cond_bd
    if-eqz v0, :cond_c7

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_d0

    :cond_c7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-static {v0, v1, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_d0
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_151

    :cond_d7
    iget-boolean v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->isShifting:Z

    if-eqz v1, :cond_119

    if-eqz p1, :cond_fb

    if-eqz v0, :cond_e7

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_f0

    :cond_e7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_f0
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_151

    :cond_fb
    if-eqz v0, :cond_105

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_10e

    :cond_105
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-static {v0, v1, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_10e
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_151

    :cond_119
    if-eqz p1, :cond_139

    if-eqz v0, :cond_125

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_133

    :cond_125
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    int-to-float v1, v1

    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_133
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_151

    :cond_139
    if-eqz v0, :cond_143

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    goto :goto_14c

    :cond_143
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-static {v0, v1, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setViewVerticalMargin(Landroid/view/View;II)V

    :goto_14c
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_151
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Lm0/z$a;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-static {p0, p1}, Lm0/g0$k;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    goto :goto_21

    :cond_1d
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lm0/g0;->o(Landroid/view/View;Lm0/z;)V

    :goto_21
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_21
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public setItemBackground(I)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_c
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_14
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingBottom:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingBottom:I

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_9
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_9
    return-void
.end method

.method public setItemPosition(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemPosition:I

    return-void
.end method

.method public setItemTouchColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemTouchColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemFolmeInvoke:Lmiuix/animation/IFolme;

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemTouchColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->setTint(I)Lmiuix/animation/ITouchStyle;

    :cond_13
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshItemBackground()V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->labelVisibilityMode:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_10
    return-void
.end method

.method public setLayoutStyle(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->layoutStyle:I

    return-void
.end method

.method public setShifting(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->isShifting:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->isShifting:Z

    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_9
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextAppearanceWithoutFontScaling(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

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

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarItemView;->isLayoutWideLandStyle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    const/16 v1, 0x11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40c00000  # 6.0f

    invoke-static {v3, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v3

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_2f

    :cond_29
    const/4 v1, 0x1

    const/16 v3, 0x31

    move v5, v3

    move v3, v1

    move v1, v5

    :goto_2f
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method
