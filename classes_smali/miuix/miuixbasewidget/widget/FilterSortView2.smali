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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/miuixbasewidget/R$attr;->filterSortView2Style:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 7
    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 8
    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2:[I

    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortView2_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_filterSortViewBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 10
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 11
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_layoutConfig:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->initContentView()V

    .line 14
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    const/4 p1, 0x2

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method private addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .registers 3

    const/4 v0, -0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    return-void
.end method

.method private addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .registers 4

    .line 6
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    .line 7
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    .line 9
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

    .line 1
    instance-of p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 3
    if-eqz p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v0, "Illegal View! Only support TabView!"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method private inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/miuixbasewidget/R$layout;->layout_filter_tab_view2:I

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 18
    return-object v0
.end method

.method private initContentView()V
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    new-instance v1, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 28
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 30
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method private refreshTabState()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1d

    .line 10
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 18
    if-eqz v2, :cond_1a

    .line 20
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 22
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 24
    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1d
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    return-object p1
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    .line 4
    invoke-virtual {v0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->initView(Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .registers 6

    .line 1
    if-eqz p1, :cond_26

    .line 3
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 5
    const/4 v1, -0x2

    .line 6
    if-gt p2, v0, :cond_15

    .line 8
    if-gez p2, :cond_a

    .line 10
    goto :goto_15

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 13
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {v0, p1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 21
    goto :goto_20

    .line 22
    :cond_15
    :goto_15
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 24
    const/4 v0, -0x1

    .line 25
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {p2, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :goto_20
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 37
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 39
    :cond_26
    return-void
.end method

.method public addTabViewChildId(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_10

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_c

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 4
    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 5
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 7
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    if-ne v0, p1, :cond_8

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->checkView(Landroid/view/View;)V

    .line 10
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    :goto_10
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearTabViewChildIds()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    return-void
.end method

.method public getEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 3
    return v0
.end method

.method public getTabCount()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 3
    return v0
.end method

.method public getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-gt p1, v1, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 14
    sub-int/2addr v1, v2

    .line 15
    add-int/2addr v1, p1

    .line 16
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    instance-of v1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 24
    if-eqz v1, :cond_1c

    .line 26
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 28
    return-object p1

    .line 29
    :cond_1c
    return-object v0
.end method

.method public onMeasure(II)V
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 19
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    .line 21
    const/16 v3, 0x29e

    .line 23
    const/4 v4, 0x2

    .line 24
    const/high16 v5, 0x3f800000  # 1.0f

    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    if-nez v2, :cond_3a

    .line 30
    int-to-float v0, v0

    .line 31
    mul-float/2addr v0, v5

    .line 32
    div-float/2addr v0, v1

    .line 33
    float-to-int v0, v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 44
    int-to-float v2, v2

    .line 45
    mul-float/2addr v2, v5

    .line 46
    div-float/2addr v2, v1

    .line 47
    float-to-int v1, v2

    .line 48
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    .line 50
    if-ne v2, v4, :cond_5a

    .line 52
    const/16 v2, 0x19a

    .line 54
    if-le v0, v2, :cond_5a

    .line 56
    if-le v1, v3, :cond_5a

    .line 58
    goto :goto_54

    .line 59
    :cond_3a
    if-ne v2, v6, :cond_51

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 68
    move-result-object v0

    .line 69
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 71
    int-to-float v0, v0

    .line 72
    mul-float/2addr v0, v5

    .line 73
    div-float/2addr v0, v1

    .line 74
    float-to-int v0, v0

    .line 75
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    .line 77
    if-ne v1, v4, :cond_5a

    .line 79
    if-le v0, v3, :cond_5a

    .line 81
    goto :goto_54

    .line 82
    :cond_51
    const/4 v0, 0x3

    .line 83
    if-ne v2, v0, :cond_56

    .line 85
    :goto_54
    move v4, v6

    .line 86
    goto :goto_5b

    .line 87
    :cond_56
    const/4 v0, 0x4

    .line 88
    if-ne v2, v0, :cond_5a

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move v4, v7

    .line 92
    :goto_5b
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 94
    invoke-virtual {v0, v4}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->setTabViewLayoutMode(I)V

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 100
    return-void
.end method

.method public removeAllTabViews()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1c

    .line 11
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 13
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 19
    if-eqz v3, :cond_19

    .line 21
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_2

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->clearTabViewChildIds()V

    .line 32
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 34
    return-void
.end method

.method public removeTabViewAt(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gt p1, v0, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 13
    if-eqz v0, :cond_20

    .line 15
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->removeTabViewChildId(I)V

    .line 33
    :cond_20
    return-void
.end method

.method public removeTabViewChildId(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 6
    if-eq v0, p1, :cond_c

    .line 8
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 10
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->refreshTabState()V

    .line 13
    :cond_c
    return-void
.end method

.method public setFilteredTab(I)V
    .registers 4

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 6
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_14
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    .line 9
    :cond_18
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_e
    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    .line 4
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setLayoutConfig(I)V
    .registers 3
    .param p1  # I
        .annotation build Lmiuix/miuixbasewidget/widget/FilterSortView2LayoutConfig;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setParentApplyBlur(Z)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 3
    if-eq v0, p1, :cond_6

    .line 5
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 7
    :cond_6
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 9
    if-eqz v0, :cond_21

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    if-ge v2, v1, :cond_21

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 24
    if-eqz v4, :cond_1e

    .line 26
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 28
    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 31
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_f

    .line 34
    :cond_21
    return-void
.end method

.method public setTabIndicatorVisibility(I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1b

    .line 10
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 18
    if-eqz v2, :cond_18

    .line 20
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 22
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setIndicatorVisibility(I)V

    .line 25
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1b
    return-void
.end method

.method public updateChildIdsFromXml()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_30

    .line 9
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    if-ge v1, v0, :cond_2d

    .line 18
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 20
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v2

    .line 24
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 26
    if-eqz v3, :cond_2a

    .line 28
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 30
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_f

    .line 46
    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 49
    :cond_30
    return-void
.end method
