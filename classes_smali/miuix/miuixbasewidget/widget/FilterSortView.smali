.class public Lmiuix/miuixbasewidget/widget/FilterSortView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    }
.end annotation


# static fields
.field public static final GONE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "miuix:FilterSortView"

.field public static final VISIBLE:I


# instance fields
.field private mAnimExecuted:Z

.field private mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field private mEnabled:Z

.field private mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

.field private mFilteredId:I

.field private mFilteredUpdated:Z

.field private mHoverBgView:Landroid/view/View;

.field private mNeedAnim:Z

.field private mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

.field private final mPadding:I

.field private mTabCount:I

.field private mTabViewChildIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 8
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 9
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 10
    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 11
    new-instance v2, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 12
    new-instance v2, Lmiuix/miuixbasewidget/widget/FilterSortView$2;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$2;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 13
    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView:[I

    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortView_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_filterSortViewBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 15
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_filterSortTabViewCoverBg:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 16
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_android_enabled:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->initHoverBgView()V

    .line 21
    invoke-direct {p0, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->initCoverBg(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->lambda$updateFiltered$0(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    return-void
.end method

.method public static synthetic access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/miuixbasewidget/widget/FilterSortView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lmiuix/miuixbasewidget/widget/FilterSortView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lmiuix/miuixbasewidget/widget/FilterSortView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 3
    return p0
.end method

.method public static synthetic access$502(Lmiuix/miuixbasewidget/widget/FilterSortView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 3
    return p1
.end method

.method public static synthetic access$602(Lmiuix/miuixbasewidget/widget/FilterSortView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/miuixbasewidget/widget/FilterSortView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 3
    return p0
.end method

.method private inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
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
    sget v1, Lmiuix/miuixbasewidget/R$layout;->layout_filter_tab_view:I

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 18
    return-object v0
.end method

.method private initCoverBg(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 12
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/ImageView;

    .line 15
    move-result-object p1

    .line 16
    const/16 v0, 0x8

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 23
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 32
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 38
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 40
    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 43
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method private initHoverBgView()V
    .registers 5

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 7
    new-instance v1, Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 23
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 30
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 32
    sget v1, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_filter_sort_hover_bg:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 43
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    new-instance v0, Landroidx/constraintlayout/widget/c;

    .line 50
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 56
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x3

    .line 67
    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/c;->f(IIII)V

    .line 70
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 75
    move-result v1

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 79
    move-result v2

    .line 80
    const/4 v3, 0x4

    .line 81
    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/c;->f(IIII)V

    .line 84
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 89
    move-result v1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 93
    move-result v2

    .line 94
    const/4 v3, 0x6

    .line 95
    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/c;->f(IIII)V

    .line 98
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 103
    move-result v1

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 107
    move-result v2

    .line 108
    const/4 v3, 0x7

    .line 109
    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/c;->f(IIII)V

    .line 112
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 115
    return-void
.end method

.method private synthetic lambda$updateFiltered$0(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    return-void
.end method

.method private refreshTabState()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_19

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 14
    if-eqz v2, :cond_16

    .line 16
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 18
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 20
    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 23
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_19
    return-void
.end method

.method private updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 23
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 28
    move-result p1

    .line 29
    invoke-virtual {v1, p1}, Landroid/view/View;->setX(F)V

    .line 32
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 34
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 36
    int-to-float v1, v1

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 40
    new-instance p1, Landroidx/appcompat/app/s;

    .line 42
    const/16 v1, 0xa

    .line 44
    invoke-direct {p1, v1, p0, v0}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object p1

    return-object p1
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .registers 6

    .line 2
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 4
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 5
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 7
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 10
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Landroidx/constraintlayout/widget/c;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 12
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 13
    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateTabViews(Landroidx/constraintlayout/widget/c;)V

    .line 14
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 15
    invoke-virtual {v0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;I)V
    .registers 5

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 5
    if-gt p2, v0, :cond_15

    .line 7
    if-gez p2, :cond_9

    .line 9
    goto :goto_15

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 16
    sub-int/2addr v0, v1

    .line 17
    add-int/2addr v0, p2

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    :goto_15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    :goto_18
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 29
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 31
    :cond_1e
    return-void
.end method

.method public addTabViewChildId(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public checkBackgroundTabViewAdded()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_14

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 15
    if-ne v2, v3, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_2

    .line 21
    :cond_14
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 26
    return-void
.end method

.method public clearTabViewChildIds()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    return-void
.end method

.method public getEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 3
    return v0
.end method

.method public getFilterHoverListener()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 3
    return-object v0
.end method

.method public getOnFilteredListener()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 3
    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 3
    return v0
.end method

.method public getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 12
    sub-int/2addr v1, v2

    .line 13
    add-int/2addr v1, p1

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    instance-of v1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 20
    if-eqz v1, :cond_18

    .line 22
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 24
    return-object p1

    .line 25
    :cond_18
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result p1

    .line 10
    const/16 p2, 0x8

    .line 12
    if-eq p1, p2, :cond_28

    .line 14
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 19
    move-result p1

    .line 20
    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 22
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 24
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    move-result p3

    .line 28
    add-int/2addr p3, p1

    .line 29
    iget-object p4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 31
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    move-result p4

    .line 35
    add-int/2addr p4, p2

    .line 36
    iget-object p5, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 38
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 41
    :cond_28
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    .line 43
    const/4 p2, -0x1

    .line 44
    if-eq p1, p2, :cond_45

    .line 46
    iget-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 48
    if-nez p2, :cond_45

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 56
    if-eqz p1, :cond_45

    .line 58
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 64
    move-result p1

    .line 65
    if-lez p1, :cond_45

    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 70
    :cond_45
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 4
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    .line 6
    const/4 p2, -0x1

    .line 7
    if-eq p1, p2, :cond_36

    .line 9
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result p1

    .line 15
    const/16 p2, 0x8

    .line 17
    if-eq p1, p2, :cond_36

    .line 19
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 27
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    move-result p1

    .line 33
    const/high16 v0, 0x40000000  # 2.0f

    .line 35
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 45
    mul-int/lit8 v2, v2, 0x2

    .line 47
    sub-int/2addr v1, v2

    .line 48
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 55
    :cond_36
    return-void
.end method

.method public removeAllTabViews()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_16

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    instance-of v2, v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 15
    if-eqz v2, :cond_13

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 20
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_2

    .line 23
    :cond_16
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 25
    return-void
.end method

.method public removeTabViewAt(I)V
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gt p1, v0, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 11
    sub-int/2addr v0, v1

    .line 12
    add-int/2addr v0, p1

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    instance-of p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 19
    if-eqz p1, :cond_17

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 24
    :cond_17
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 28
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 30
    return-void
.end method

.method public removeTabViewChildId(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 6
    if-eq v0, p1, :cond_c

    .line 8
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 10
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->refreshTabState()V

    .line 13
    :cond_c
    return-void
.end method

.method public setFilteredTab(I)V
    .registers 6

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 10
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_23

    .line 11
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v3

    :goto_18
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 12
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    goto :goto_29

    .line 14
    :cond_23
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    if-eqz v0, :cond_29

    .line 15
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 16
    :cond_29
    :goto_29
    invoke-static {p1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 17
    :cond_2c
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1d

    .line 2
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v3

    :goto_12
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 3
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    goto :goto_23

    .line 5
    :cond_1d
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    if-eqz v0, :cond_23

    .line 6
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 7
    :cond_23
    :goto_23
    invoke-static {p1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 8
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredUpdated(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 3
    return-void
.end method

.method public setNeedAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 6
    return-void
.end method

.method public setTabIncatorVisibility(I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_17

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 14
    if-eqz v2, :cond_14

    .line 16
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 18
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setIndicatorVisibility(I)V

    .line 21
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_17
    return-void
.end method

.method public updateChildIdsFromXml()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4d

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    if-ge v1, v0, :cond_3f

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 22
    if-eqz v3, :cond_3c

    .line 24
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 35
    move-result v4

    .line 36
    if-eq v3, v4, :cond_3c

    .line 38
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 40
    invoke-virtual {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 43
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 48
    move-result v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 58
    invoke-virtual {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V

    .line 61
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_d

    .line 64
    :cond_3f
    new-instance v0, Landroidx/constraintlayout/widget/c;

    .line 66
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 69
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 72
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateTabViews(Landroidx/constraintlayout/widget/c;)V

    .line 75
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 78
    :cond_4d
    return-void
.end method

.method public updateTabViews(Landroidx/constraintlayout/widget/c;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    const/4 v8, 0x0

    .line 6
    move v9, v8

    .line 7
    :goto_6
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    if-ge v9, v1, :cond_cc

    .line 15
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 17
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v10

    .line 27
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/widget/c;->j(I)Landroidx/constraintlayout/widget/c$a;

    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 33
    iput v8, v1, Landroidx/constraintlayout/widget/c$b;->c:I

    .line 35
    const/4 v1, -0x2

    .line 36
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/widget/c;->j(I)Landroidx/constraintlayout/widget/c$a;

    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 42
    iput v1, v2, Landroidx/constraintlayout/widget/c$b;->d:I

    .line 44
    const/high16 v1, 0x3f800000  # 1.0f

    .line 46
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/widget/c;->j(I)Landroidx/constraintlayout/widget/c$a;

    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 52
    iput v1, v2, Landroidx/constraintlayout/widget/c$b;->V:F

    .line 54
    if-nez v9, :cond_39

    .line 56
    move v11, v8

    .line 57
    goto :goto_48

    .line 58
    :cond_39
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 60
    add-int/lit8 v2, v9, -0x1

    .line 62
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v1

    .line 72
    move v11, v1

    .line 73
    :goto_48
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    move-result v1

    .line 79
    add-int/lit8 v1, v1, -0x1

    .line 81
    if-ne v9, v1, :cond_54

    .line 83
    move v12, v8

    .line 84
    goto :goto_63

    .line 85
    :cond_54
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 87
    add-int/lit8 v2, v9, 0x1

    .line 89
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v1

    .line 99
    move v12, v1

    .line 100
    :goto_63
    const/4 v13, 0x4

    .line 101
    const/high16 v14, 0x3f000000  # 0.5f

    .line 103
    const/4 v3, 0x3

    .line 104
    const/4 v15, 0x0

    .line 105
    const/16 v16, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v5, 0x3

    .line 109
    const/4 v6, 0x0

    .line 110
    move-object/from16 v1, p1

    .line 112
    move v2, v10

    .line 113
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->g(IIIII)V

    .line 116
    const/4 v3, 0x4

    .line 117
    move/from16 v4, v16

    .line 119
    move v5, v13

    .line 120
    move v6, v15

    .line 121
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->g(IIIII)V

    .line 124
    iget-object v1, v7, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 126
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroidx/constraintlayout/widget/c$a;

    .line 136
    if-eqz v1, :cond_8d

    .line 138
    iget-object v1, v1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 140
    iput v14, v1, Landroidx/constraintlayout/widget/c$b;->y:F

    .line 142
    :cond_8d
    const/4 v3, 0x6

    .line 143
    const/4 v13, 0x6

    .line 144
    const/4 v14, 0x7

    .line 145
    if-nez v11, :cond_94

    .line 147
    move v5, v13

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    move v5, v14

    .line 150
    :goto_95
    if-nez v11, :cond_9b

    .line 152
    iget v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 154
    move v6, v1

    .line 155
    goto :goto_9c

    .line 156
    :cond_9b
    move v6, v8

    .line 157
    :goto_9c
    move-object/from16 v1, p1

    .line 159
    move v2, v10

    .line 160
    move v4, v11

    .line 161
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->g(IIIII)V

    .line 164
    const/4 v3, 0x7

    .line 165
    if-nez v12, :cond_a8

    .line 167
    move v5, v14

    .line 168
    goto :goto_a9

    .line 169
    :cond_a8
    move v5, v13

    .line 170
    :goto_a9
    if-nez v12, :cond_af

    .line 172
    iget v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 174
    move v6, v1

    .line 175
    goto :goto_b0

    .line 176
    :cond_af
    move v6, v8

    .line 177
    :goto_b0
    move-object/from16 v1, p1

    .line 179
    move v2, v10

    .line 180
    move v4, v12

    .line 181
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->g(IIIII)V

    .line 184
    const/4 v3, 0x3

    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v5, 0x3

    .line 187
    iget v6, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 189
    const/4 v4, 0x0

    .line 190
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->g(IIIII)V

    .line 193
    const/4 v3, 0x4

    .line 194
    const/4 v5, 0x4

    .line 195
    iget v6, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 197
    move v4, v11

    .line 198
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->g(IIIII)V

    .line 201
    add-int/lit8 v9, v9, 0x1

    .line 203
    goto/16 :goto_6

    .line 205
    :cond_cc
    return-void
.end method
