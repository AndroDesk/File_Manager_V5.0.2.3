.class public Lmiuix/miuixbasewidget/widget/FilterSortView2;
.super Landroid/widget/HorizontalScrollView;
.source "FilterSortView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    }
.end annotation


# instance fields
.field private final mDeviceType:I

.field private mEnabled:Z

.field private mFilteredId:I

.field public mIsParentApplyBlur:Z

.field private mLayoutConfig:I
    .annotation build Lmiuix/miuixbasewidget/widget/FilterSortView2LayoutConfig;
    .end annotation
.end field

.field private mTabCount:I

.field private final mTabViewChildIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/miuixbasewidget/R$attr;->filterSortView2Style:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2:[I

    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortView2_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_filterSortViewBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_layoutConfig:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->initContentView()V

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method private addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    return-void
.end method

.method private addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkView(Landroid/view/View;)V
    .registers 3

    instance-of p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal View! Only support TabView!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/miuixbasewidget/R$layout;->layout_filter_tab_view2:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    return-object v0
.end method

.method private initContentView()V
    .registers 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;)V

    return-void
.end method

.method private refreshTabState()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v2, :cond_1a

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    return-object p1
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 4

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    invoke-virtual {v0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->initView(Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .registers 6

    if-eqz p1, :cond_26

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    const/4 v1, -0x2

    if-gt p2, v0, :cond_15

    if-gez p2, :cond_a

    goto :goto_15

    :cond_a
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    :cond_15
    :goto_15
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_20
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    :cond_26
    return-void
.end method

.method public addTabViewChildId(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    if-ne v0, p1, :cond_8

    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_8
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->checkView(Landroid/view/View;)V

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    :goto_10
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearTabViewChildIds()V
    .registers 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    return v0
.end method

.method public getTabCount()I
    .registers 2

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    return v0
.end method

.method public getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-gt p1, v1, :cond_5

    return-object v0

    :cond_5
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v1, :cond_1c

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    return-object p1

    :cond_1c
    return-object v0
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    const/16 v3, 0x29e

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3a

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    if-ne v2, v4, :cond_5a

    const/16 v2, 0x19a

    if-le v0, v2, :cond_5a

    if-le v1, v3, :cond_5a

    goto :goto_54

    :cond_3a
    if-ne v2, v6, :cond_51

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    if-ne v1, v4, :cond_5a

    if-le v0, v3, :cond_5a

    goto :goto_54

    :cond_51
    const/4 v0, 0x3

    if-ne v2, v0, :cond_56

    :goto_54
    move v4, v6

    goto :goto_5b

    :cond_56
    const/4 v0, 0x4

    if-ne v2, v0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v4, v7

    :goto_5b
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0, v4}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->setTabViewLayoutMode(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public removeAllTabViews()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->clearTabViewChildIds()V

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    return-void
.end method

.method public removeTabViewAt(I)V
    .registers 3

    const/4 v0, -0x1

    if-gt p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->removeTabViewChildId(I)V

    :cond_20
    return-void
.end method

.method public removeTabViewChildId(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    if-eq v0, p1, :cond_c

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->refreshTabState()V

    :cond_c
    return-void
.end method

.method public setFilteredTab(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    if-eqz p1, :cond_18

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_14
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    :cond_18
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .registers 4

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_e
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setLayoutConfig(I)V
    .registers 3
    .param p1  # I
        .annotation build Lmiuix/miuixbasewidget/widget/FilterSortView2LayoutConfig;
        .end annotation
    .end param

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setParentApplyBlur(Z)V
    .registers 7

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    :cond_6
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_21

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v4, :cond_1e

    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    return-void
.end method

.method public setTabIndicatorVisibility(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v2, :cond_18

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setIndicatorVisibility(I)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public updateChildIdsFromXml()V
    .registers 5

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2d

    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v3, :cond_2a

    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_30
    return-void
.end method
