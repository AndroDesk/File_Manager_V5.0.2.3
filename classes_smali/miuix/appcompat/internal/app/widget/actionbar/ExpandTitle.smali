.class public Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.super Ljava/lang/Object;
.source "ExpandTitle.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mExpandTitleLayout:Landroid/widget/LinearLayout;

.field private mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mSubtitleStyle:I

.field private mTextColorTransitEnable:Z

.field private mTitleStyle:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTextColorTransitEnable:Z

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    .line 12
    sget p1, Lmiuix/appcompat/R$style;->Miuix_AppCompat_TextAppearance_WindowTitle_Expand:I

    .line 14
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTitleStyle:I

    .line 16
    sget p1, Lmiuix/appcompat/R$style;->Miuix_AppCompat_TextAppearance_WindowTitle_Subtitle_Expand:I

    .line 18
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mSubtitleStyle:I

    .line 20
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->lambda$init$0()V

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
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

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


# virtual methods
.method public getLayout()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public init()V
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 22
    new-instance v1, Landroidx/activity/b;

    .line 24
    const/16 v2, 0x15

    .line 26
    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 34
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    .line 36
    sget v2, Lmiuix/appcompat/R$attr;->expandTitleTheme:I

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v0, v1, v3, v2}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 44
    sget v1, Lmiuix/appcompat/R$id;->action_bar_title_expand:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 62
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 64
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 73
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    .line 75
    sget v4, Lmiuix/appcompat/R$attr;->expandSubtitleTheme:I

    .line 77
    invoke-direct {v0, v2, v3, v4}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 82
    sget v2, Lmiuix/appcompat/R$id;->action_bar_subtitle_expand:I

    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 87
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 89
    const/16 v2, 0x8

    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 99
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 104
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 106
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 108
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    sget v2, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 134
    move-result v2

    .line 135
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 137
    sget v2, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    .line 139
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 142
    move-result v0

    .line 143
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 145
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTitleStyle:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mSubtitleStyle:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 15
    return-void
.end method

.method public setAllTitlesClickable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

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
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

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
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 19
    return-void
.end method

.method public setSubTitleOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

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
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mSubtitleStyle:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setTextColorTransitEnable(ZI)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTextColorTransitEnable:Z

    .line 3
    if-eq v0, p1, :cond_18

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_c

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    invoke-virtual {v1, v0, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 13
    :cond_c
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTextColorTransitEnable:Z

    .line 15
    if-eqz p1, :cond_18

    .line 17
    const/4 p1, 0x1

    .line 18
    if-ne p2, p1, :cond_18

    .line 20
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 22
    invoke-virtual {p2, p1, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 25
    :cond_18
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_10

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result p1

    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method public setTitleStyle(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTitleStyle:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method

.method public setTitleVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    if-nez p1, :cond_d

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_12
    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

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
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTextColorTransitEnable:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 8
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 11
    return-void
.end method
