.class public Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;
.super Lmiuix/navigator/navigation/NavigationBarMenuView;
.source "BottomNavigationMenuView.java"


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemMargin:I

.field private final itemMarginDp:I

.field private paddingHorizontal:I

.field private final paddingHorizontalDefaultDp:I

.field private final tempChildWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xb

    iput p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMarginDp:I

    const/16 p1, 0x8

    iput p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->paddingHorizontalDefaultDp:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_item_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_item_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_active_item_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_active_item_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    return-void
.end method


# virtual methods
.method public createNavigationBarItemView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarItemView;
    .registers 4

    new-instance v0, Lmiuix/navigator/bottomnavigation/BottomNavigationItemView;

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public filterLeftoverView(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public hasBackgroundView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasBlurBackgroundView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_9
    if-ge p3, p1, :cond_42

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    goto :goto_3f

    :cond_18
    if-lez p3, :cond_1d

    iget v2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    add-int/2addr v0, v2

    :cond_1d
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    sub-int v2, p4, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_3a

    :cond_32
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    :goto_3a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_3f
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_42
    return-void
.end method

.method public onMeasure(II)V
    .registers 13

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getMenu()Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41300000  # 11.0f

    invoke-static {v3, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    iget-object v4, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isLayoutInWideStyle()Z

    move-result v4

    if-eqz v4, :cond_53

    const-wide v3, 0x3f8999999999999aL  # 0.0125

    int-to-double v5, v0

    mul-double/2addr v3, v5

    mul-double/2addr v3, v5

    const-wide v7, 0x3fbf5c28f5c28f5cL  # 0.1225

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    const-wide v5, 0x3fd6b851eb851eb8L  # 0.355

    add-double/2addr v3, v5

    int-to-double v5, p1

    mul-double/2addr v3, v5

    double-to-int v3, v3

    goto :goto_59

    :cond_53
    const/high16 v4, 0x41000000  # 8.0f

    invoke-static {v3, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v3

    :goto_59
    iput v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->paddingHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    iget v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, v3

    sub-int/2addr p1, v4

    int-to-float v3, p1

    const/high16 v4, 0x3f800000  # 1.0f

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000  # 2.0f

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v6

    invoke-virtual {p0, v6, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isShifting(II)Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_d5

    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v7, :cond_9c

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v8, v5}, Landroid/view/View;->measure(II)V

    :cond_9c
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_a4

    const/4 v6, 0x1

    goto :goto_a5

    :cond_a4
    move v6, v1

    :goto_a5
    sub-int/2addr v0, v6

    mul-int v6, v0, v3

    sub-int/2addr p1, v3

    mul-int/2addr v0, v6

    sub-int/2addr p1, v0

    move v0, v1

    :goto_ac
    if-ge v0, v2, :cond_fa

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v7, :cond_c8

    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemPosition()I

    move-result v8

    if-ne v0, v8, :cond_c0

    move v8, v3

    goto :goto_c1

    :cond_c0
    move v8, v6

    :goto_c1
    if-lez p1, :cond_c9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_c9

    :cond_c8
    move v8, v1

    :cond_c9
    :goto_c9
    iget-object v9, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    :cond_d5
    mul-int/2addr v0, v3

    sub-int/2addr p1, v0

    move v0, v1

    :goto_d8
    if-ge v0, v2, :cond_fa

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_ed

    if-lez p1, :cond_eb

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_ee

    :cond_eb
    move v6, v3

    goto :goto_ee

    :cond_ed
    move v6, v1

    :goto_ee
    iget-object v8, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    :cond_fa
    move p1, v1

    :goto_fb
    if-ge v1, v2, :cond_133

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_108

    goto :goto_130

    :cond_108
    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    if-lez v1, :cond_12f

    iget p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    add-int/2addr v0, p1

    :cond_12f
    move p1, v0

    :goto_130
    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    :cond_133
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return-void
.end method
