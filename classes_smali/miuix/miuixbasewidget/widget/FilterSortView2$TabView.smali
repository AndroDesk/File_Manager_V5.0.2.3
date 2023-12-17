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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/miuixbasewidget/R$attr;->filterSortTabView2Style:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTabLayoutResource()I

    move-result v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v1, Lmiuix/miuixbasewidget/R$id;->arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_98

    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2:[I

    sget v2, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortTabView2_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_descending:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_indicatorVisibility:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mIndicatorVisibility:I

    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_arrowFilterSortTabView:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewBackground:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewForeground:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewHorizontalPadding:I

    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_tab_view2_padding_horizontal:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewVerticalPadding:I

    sget v3, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_tab_view2_padding_vertical:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lmiuix/miuixbasewidget/R$id;->container:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewTabTextAppearance:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView2_filterSortTabViewTabActivatedTextAppearance:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->initView(Ljava/lang/CharSequence;Z)V

    :cond_98
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_a6

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

    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    return-void
.end method

.method public static synthetic b(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_f

    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    :cond_f
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object v0
.end method

.method private synthetic lambda$setFiltered$0()V
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;->onFilteredChanged(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setDescending(Z)V

    goto :goto_13

    :cond_10
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    :cond_13
    :goto_13
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const-string p1, "2.0"

    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object p1

    const/16 p2, 0xcc

    invoke-virtual {p1, p2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_2d

    :cond_28
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p2, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_2d
    return-void
.end method

.method private setDescending(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    goto :goto_12

    :cond_b
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000  # 180.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    :goto_12
    return-void
.end method

.method private setFiltered(Z)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_28

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_28

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v5, :cond_25

    check-cast v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eq v4, p0, :cond_25

    iget-boolean v5, v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    if-eqz v5, :cond_25

    invoke-direct {v4, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_28
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    if-eqz p1, :cond_49

    new-instance p1, Landroidx/activity/b;

    const/16 v1, 0x17

    invoke-direct {p1, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method

.method private updateTextAppearance()V
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDescendingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    return v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTabLayoutResource()I
    .registers 2

    sget v0, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view_2:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initView(Ljava/lang/CharSequence;Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setDescending(Z)V

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    return-void
.end method

.method public isDescending()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    return v0
.end method

.method public isFiltered()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    return v0
.end method

.method public setActivatedTextAppearance(I)V
    .registers 2

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    return-void
.end method

.method public setDescendingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    return-void
.end method
