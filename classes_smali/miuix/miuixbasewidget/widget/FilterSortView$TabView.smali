.class public Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;,
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    }
.end annotation


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mArrowIcon:Landroid/graphics/drawable/Drawable;

.field private mDescending:Z

.field private mDescendingEnabled:Z

.field private mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

.field private mFiltered:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mIndicatorVisibility:I

.field private mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

.field private mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getTabLayoutResource()I

    move-result v1

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x1020014

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 8
    sget v2, Lmiuix/miuixbasewidget/R$id;->arrow:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_5f

    .line 9
    sget v2, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view:I

    if-ne v1, v2, :cond_5f

    .line 10
    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView:[I

    sget v2, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortTabView_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 12
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_descending:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 13
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_indicatorVisibility:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    .line 14
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_arrowFilterSortTabView:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 15
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_filterSortTabViewTextColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    .line 18
    :cond_5f
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_74

    .line 20
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_74
    return-void
.end method

.method public static synthetic a(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/util/HapticFeedbackCompat;
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 3
    return-object p0
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 18
    return-object v0
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 10
    move-result p1

    .line 11
    const/16 v1, 0x1002

    .line 13
    if-ne p1, v1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 19
    move-result p1

    .line 20
    const/16 v0, 0x9

    .line 22
    if-eq p1, v0, :cond_39

    .line 24
    const/16 v0, 0xa

    .line 26
    if-eq p1, v0, :cond_1c

    .line 28
    goto :goto_47

    .line 29
    :cond_1c
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 31
    if-eqz p1, :cond_25

    .line 33
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 35
    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverFilterExit()V

    .line 38
    :cond_25
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 47
    move-result v1

    .line 48
    int-to-float v1, v1

    .line 49
    add-float/2addr v0, v1

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 53
    move-result p2

    .line 54
    invoke-interface {p1, v0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverExit(FF)V

    .line 57
    goto :goto_47

    .line 58
    :cond_39
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 60
    if-eqz p1, :cond_42

    .line 62
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 64
    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverFilterEnter()V

    .line 67
    :cond_42
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 69
    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverEnter()V

    .line 72
    :goto_47
    const/4 p1, 0x1

    .line 73
    return p1
.end method

.method private parseBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_filter_sort_tab_view_bg_normal:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private setDescending(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    .line 3
    if-eqz p1, :cond_b

    .line 5
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 11
    goto :goto_12

    .line 12
    :cond_b
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 14
    const/high16 v0, 0x43340000  # 180.0f

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 19
    :goto_12
    return-void
.end method

.method private setFiltered(Z)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 7
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 9
    if-eqz p1, :cond_2c

    .line 11
    if-eqz v0, :cond_2c

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_2c

    .line 21
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 29
    if-eqz v4, :cond_29

    .line 31
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 33
    if-eq v3, p0, :cond_29

    .line 35
    iget-boolean v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 37
    if-eqz v4, :cond_29

    .line 39
    invoke-direct {v3, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    .line 42
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_12

    .line 45
    :cond_2c
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 47
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 52
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 60
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setNeedAnim(Z)V

    .line 66
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 68
    new-instance v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;

    .line 70
    invoke-direct {v1, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public getDescendingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 3
    return v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public getTabLayoutResource()I
    .registers 2

    .line 1
    sget v0, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view:I

    .line 3
    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public initView(Ljava/lang/CharSequence;Z)V
    .registers 5

    .line 1
    const/16 v0, 0x11

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_12

    .line 12
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->parseBackground()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 21
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 28
    if-eqz v0, :cond_22

    .line 30
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    .line 43
    new-instance p1, Lmiuix/miuixbasewidget/widget/a;

    .line 45
    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/a;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 51
    return-void
.end method

.method public isDescending()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    .line 3
    return v0
.end method

.method public setDescendingEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    return-void
.end method

.method public setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 3
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    return-void
.end method

.method public setIndicatorVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;

    .line 3
    invoke-direct {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    return-void
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 3
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    return-void
.end method
