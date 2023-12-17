.class public Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.super Ljava/lang/Object;
.source "CollapseTitle.java"


# instance fields
.field private mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mCollapseTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultSubtitleSize:F

.field private mIsTitleDirty:Z

.field private mSubtitleSizeable:Z

.field private mSubtitleStyle:I

.field private mTextColorTransitEnable:Z

.field private mTitleLength:F

.field private mTitleStyle:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 13
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 15
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 17
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    .line 19
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 21
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    .line 23
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    .line 25
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$init$0()V

    return-void
.end method

.method public static synthetic c(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onPortraitChange()V

    return-void
.end method

.method public static synthetic d(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$init$1()V

    return-void
.end method

.method public static synthetic e(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onLandscapeChange()V

    return-void
.end method

.method private getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method private synthetic lambda$init$0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 5
    const v2, 0x101039c

    .line 8
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    return-void
.end method

.method private synthetic lambda$init$1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    sget v1, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_bar_subtitle_bg_land:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    .line 8
    return-void
.end method

.method private onLandscapeChange()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 15
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 17
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 24
    sget v3, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_bar_subtitle_bg_land:I

    .line 26
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_start_margin:I

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 42
    move-result v0

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 46
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 57
    return-void
.end method

.method private onPortraitChange()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 15
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 17
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 40
    sget v4, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    .line 42
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 45
    move-result v4

    .line 46
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48
    sget v4, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 53
    move-result v0

    .line 54
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 58
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 68
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    .line 75
    return-void
.end method


# virtual methods
.method public canTitleBeShown(Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_13

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 18
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 20
    :cond_13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x1

    .line 27
    if-nez p1, :cond_1d

    .line 29
    return v0

    .line 30
    :cond_1d
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 32
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    cmpg-float p1, p1, v2

    .line 41
    if-gtz p1, :cond_2b

    .line 43
    move v1, v0

    .line 44
    :cond_2b
    return v1
.end method

.method public getHitRect()Landroid/graphics/Rect;
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 11
    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    return-object v0
.end method

.method public getSubtitleAdjustSize()F
    .registers 9

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result v3

    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 27
    move-result v3

    .line 28
    sub-int/2addr v2, v3

    .line 29
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 34
    move-result v3

    .line 35
    sub-int/2addr v2, v3

    .line 36
    if-gtz v2, :cond_26

    .line 38
    return v0

    .line 39
    :cond_26
    new-instance v3, Landroid/text/TextPaint;

    .line 41
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 43
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 46
    move-result-object v4

    .line 47
    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 50
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 56
    move-result-object v4

    .line 57
    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 59
    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 61
    sub-float/2addr v5, v4

    .line 62
    float-to-double v4, v5

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 66
    move-result-wide v4

    .line 67
    double-to-int v4, v4

    .line 68
    const/high16 v5, 0x40000000  # 2.0f

    .line 70
    div-float v5, v0, v5

    .line 72
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 75
    move-result-object v1

    .line 76
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 78
    :goto_4d
    if-le v4, v2, :cond_67

    .line 80
    cmpl-float v4, v0, v5

    .line 82
    if-ltz v4, :cond_67

    .line 84
    sub-float/2addr v0, v1

    .line 85
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 91
    move-result-object v4

    .line 92
    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 94
    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 96
    sub-float/2addr v6, v4

    .line 97
    float-to-double v6, v6

    .line 98
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 101
    move-result-wide v6

    .line 102
    double-to-int v4, v6

    .line 103
    goto :goto_4d

    .line 104
    :cond_67
    return v0
.end method

.method public getTitleParent()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    return-object v0
.end method

.method public getTitleVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public init()V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 15
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 17
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-le v2, v1, :cond_18

    .line 23
    move v1, v3

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v1, v4

    .line 26
    :goto_19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {v2}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 31
    move-result v2

    .line 32
    if-ne v2, v3, :cond_25

    .line 34
    if-eqz v1, :cond_25

    .line 36
    move v1, v3

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v1, v4

    .line 39
    :goto_26
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v2

    .line 45
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_view_padding_horizontal:I

    .line 47
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 50
    move-result v2

    .line 51
    xor-int/lit8 v5, v1, 0x1

    .line 53
    iput-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 55
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_subtitle_text_size:I

    .line 57
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    iput v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 64
    new-instance v5, Landroid/widget/LinearLayout;

    .line 66
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 73
    const/4 v6, 0x2

    .line 74
    invoke-virtual {v5, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 77
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {v5, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    new-instance v2, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 84
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 86
    sget v6, Lmiuix/appcompat/R$attr;->collapseTitleTheme:I

    .line 88
    const/4 v7, 0x0

    .line 89
    invoke-direct {v2, v5, v7, v6}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 94
    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 97
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 99
    invoke-virtual {v2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    sget v2, Lmiuix/appcompat/R$attr;->collapseSubtitleTheme:I

    .line 104
    if-eqz v1, :cond_6a

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v6, v2

    .line 108
    :goto_6b
    new-instance v2, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 110
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {v2, v5, v7, v6}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 117
    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 120
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 122
    invoke-virtual {v2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 125
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 127
    xor-int/lit8 v5, v1, 0x1

    .line 129
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 134
    new-instance v5, Ld4/a;

    .line 136
    invoke-direct {v5, p0, v4}, Ld4/a;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;I)V

    .line 139
    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 142
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 144
    sget v4, Lmiuix/appcompat/R$id;->action_bar_title:I

    .line 146
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 149
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 151
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 153
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 162
    sget v4, Lmiuix/appcompat/R$id;->action_bar_subtitle:I

    .line 164
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 167
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 169
    const/16 v4, 0x8

    .line 171
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    if-eqz v1, :cond_b9

    .line 176
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 178
    new-instance v4, Ld4/a;

    .line 180
    invoke-direct {v4, p0, v3}, Ld4/a;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;I)V

    .line 183
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_b9
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 188
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 190
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    if-eqz v1, :cond_d8

    .line 207
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_start_margin:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 212
    move-result v0

    .line 213
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 216
    goto :goto_e8

    .line 217
    :cond_d8
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 222
    move-result v1

    .line 223
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 225
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 230
    move-result v0

    .line 231
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 233
    :goto_e8
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1a

    .line 12
    iget-object p1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 14
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 16
    const/16 v2, 0x28a

    .line 18
    if-ge v0, v2, :cond_1a

    .line 20
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 22
    const/16 v0, 0x29e

    .line 24
    if-le p1, v0, :cond_1a

    .line 26
    const/4 v1, 0x0

    .line 27
    :cond_1a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 29
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 32
    move-result p1

    .line 33
    if-eq v1, p1, :cond_3c

    .line 35
    if-nez v1, :cond_30

    .line 37
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 39
    new-instance v0, Ld4/a;

    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-direct {v0, p0, v1}, Ld4/a;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;I)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    goto :goto_47

    .line 49
    :cond_30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 51
    new-instance v0, Ld4/a;

    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-direct {v0, p0, v1}, Ld4/a;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;I)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    goto :goto_47

    .line 61
    :cond_3c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 63
    new-instance v0, Ld4/a;

    .line 65
    const/4 v1, 0x4

    .line 66
    invoke-direct {v0, p0, v1}, Ld4/a;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;I)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_47
    return-void
.end method

.method public setAllTitlesClickable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_e

    .line 12
    const/16 p1, 0x8

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 19
    return-void
.end method

.method public setSubTitleOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSubTitleStyle(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method

.method public setSubTitleTextSize(F)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    :cond_a
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public setTextColorTransitEnable(ZI)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    .line 3
    if-eq v0, p1, :cond_18

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_c

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    invoke-virtual {v1, v0, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 13
    :cond_c
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    .line 15
    if-eqz p1, :cond_18

    .line 17
    if-nez p2, :cond_18

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 25
    :cond_18
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1c

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    xor-int/2addr p1, v0

    .line 24
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 27
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 29
    :cond_1c
    return-void
.end method

.method public setTitleStyle(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method

.method public setTitleVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    if-nez p1, :cond_d

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_12
    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x4

    .line 14
    :goto_d
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public startColorTransition(ZZ)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 8
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 11
    return-void
.end method

.method public updateTitleCenter(Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getTitleParent()Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/widget/LinearLayout;

    .line 7
    const/4 v2, 0x1

    .line 8
    const v3, 0x800003

    .line 11
    if-eqz v1, :cond_18

    .line 13
    check-cast v0, Landroid/widget/LinearLayout;

    .line 15
    if-eqz p1, :cond_12

    .line 17
    move v1, v2

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v1, v3

    .line 20
    :goto_13
    or-int/lit8 v1, v1, 0x10

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 27
    if-eqz p1, :cond_1e

    .line 29
    move v1, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v1, v3

    .line 32
    :goto_1f
    or-int/lit8 v1, v1, 0x10

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 39
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 46
    if-eqz p1, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v2, v3

    .line 50
    :goto_31
    or-int/lit8 p1, v2, 0x10

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 57
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 62
    return-void
.end method
