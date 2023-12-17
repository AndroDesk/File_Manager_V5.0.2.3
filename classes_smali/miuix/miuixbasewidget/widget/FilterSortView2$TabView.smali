.class public Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
.super Landroid/widget/FrameLayout;
.source "FilterSortView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;
    }
.end annotation


# instance fields
.field private mActivatedTextAppearanceId:I

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultBoldTypeface:Landroid/graphics/Typeface;

.field private mDescending:Z

.field private mDescendingEnabled:Z

.field private mFiltered:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mIndicatorVisibility:I

.field private mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;

.field private mTextAppearanceId:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/miuixbasewidget/R$attr;->filterSortTabView2Style:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    .line 5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTabLayoutResource()I

    move-result v1

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x1020014

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 10
    sget v1, Lmiuix/miuixbasewidget/R$id;->arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_98

    .line 11
    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2:[I

    sget v2, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortTabView2_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_descending:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 14
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_indicatorVisibility:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mIndicatorVisibility:I

    .line 15
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_arrowFilterSortTabView:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 16
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewBackground:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewForeground:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewHorizontalPadding:I

    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_tab_view2_padding_horizontal:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 19
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewVerticalPadding:I

    sget v3, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_tab_view2_padding_vertical:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 20
    sget v3, Lmiuix/miuixbasewidget/R$id;->container:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewTabTextAppearance:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    .line 23
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewTabActivatedTextAppearance:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->initView(Ljava/lang/CharSequence;Z)V

    .line 26
    :cond_98
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_a6

    .line 27
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_a6
    return-void
.end method

.method public static synthetic a(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->lambda$setFiltered$0()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

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
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 18
    return-object v0
.end method

.method private synthetic lambda$setFiltered$0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;->onFilteredChanged(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    .line 9
    :cond_8
    return-void
.end method

.method private synthetic lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_10

    .line 6
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    .line 8
    if-eqz v0, :cond_13

    .line 10
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    .line 12
    xor-int/2addr v0, v1

    .line 13
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setDescending(Z)V

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    .line 20
    :cond_13
    :goto_13
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 23
    const-string p1, "2.0"

    .line 25
    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_28

    .line 31
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 34
    move-result-object p1

    .line 35
    const/16 p2, 0xcc

    .line 37
    invoke-virtual {p1, p2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 43
    invoke-static {p2, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 46
    :goto_2d
    return-void
.end method

.method private setDescending(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    .line 3
    if-eqz p1, :cond_b

    .line 5
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 11
    goto :goto_12

    .line 12
    :cond_b
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 14
    const/high16 v0, 0x43340000  # 180.0f

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 19
    :goto_12
    return-void
.end method

.method private setFiltered(Z)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    if-eqz p1, :cond_28

    .line 9
    if-eqz v0, :cond_28

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_10
    if-ge v3, v1, :cond_28

    .line 19
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v4

    .line 23
    instance-of v5, v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 25
    if-eqz v5, :cond_25

    .line 27
    check-cast v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 29
    if-eq v4, p0, :cond_25

    .line 31
    iget-boolean v5, v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    .line 33
    if-eqz v5, :cond_25

    .line 35
    invoke-direct {v4, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    .line 38
    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_10

    .line 41
    :cond_28
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    .line 43
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    .line 46
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    .line 51
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 59
    if-nez v0, :cond_3d

    .line 61
    return-void

    .line 62
    :cond_3d
    if-eqz p1, :cond_49

    .line 64
    new-instance p1, Landroidx/activity/b;

    .line 66
    const/16 v1, 0x17

    .line 68
    invoke-direct {p1, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_49
    return-void
.end method

.method private updateTextAppearance()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->isFiltered()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 13
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 18
    goto :goto_19

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 21
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 26
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public getDescendingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    .line 3
    return v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public getTabLayoutResource()I
    .registers 2

    .line 1
    sget v0, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view_2:I

    .line 3
    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public initView(Ljava/lang/CharSequence;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 15
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mIndicatorVisibility:I

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setDescending(Z)V

    .line 23
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    .line 26
    return-void
.end method

.method public isDescending()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    .line 3
    return v0
.end method

.method public isFiltered()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    .line 3
    return v0
.end method

.method public setActivatedTextAppearance(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    .line 3
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    .line 6
    return-void
.end method

.method public setDescendingEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    return-void
.end method

.method public setIndicatorVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    return-void
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;

    .line 3
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    .line 3
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    .line 6
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    return-void
.end method
