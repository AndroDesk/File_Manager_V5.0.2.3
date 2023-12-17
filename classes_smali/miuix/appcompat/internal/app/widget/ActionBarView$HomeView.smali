.class Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeView"
.end annotation


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_11

    .line 11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_11
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public getStartOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    sget v0, Lmiuix/appcompat/R$id;->up:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 14
    sget v0, Lmiuix/appcompat/R$id;->home:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 26
    if-eqz v0, :cond_51

    .line 28
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x1

    .line 35
    new-array v1, v0, [Landroid/view/View;

    .line 37
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v2, v1, v3

    .line 42
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 49
    move-result-object v1

    .line 50
    const/high16 v2, 0x42700000  # 60.0f

    .line 52
    invoke-interface {v1, v2}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 55
    new-array v0, v0, [Landroid/view/View;

    .line 57
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 59
    aput-object v1, v0, v3

    .line 61
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 71
    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 77
    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    .line 79
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 82
    :cond_51
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 14

    .line 1
    sub-int/2addr p5, p3

    .line 2
    div-int/lit8 p5, p5, 0x2

    .line 4
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 7
    move-result p1

    .line 8
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result p3

    .line 14
    const/16 v0, 0x8

    .line 16
    if-eq p3, v0, :cond_3f

    .line 18
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    move-result v1

    .line 38
    div-int/lit8 v2, v0, 0x2

    .line 40
    sub-int v5, p5, v2

    .line 42
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 44
    const/4 v4, 0x0

    .line 45
    add-int v7, v5, v0

    .line 47
    move-object v2, p0

    .line 48
    move v6, v1

    .line 49
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 52
    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 54
    add-int/2addr v0, v1

    .line 55
    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 57
    add-int/2addr v0, p3

    .line 58
    if-eqz p1, :cond_3d

    .line 60
    sub-int/2addr p4, v0

    .line 61
    goto :goto_40

    .line 62
    :cond_3d
    add-int/2addr p2, v0

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    const/4 v0, 0x0

    .line 65
    :goto_40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 78
    move-result p3

    .line 79
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    move-result v1

    .line 85
    sub-int/2addr p4, p2

    .line 86
    div-int/lit8 p4, p4, 0x2

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 91
    move-result p2

    .line 92
    div-int/lit8 v2, v1, 0x2

    .line 94
    sub-int/2addr p4, v2

    .line 95
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 98
    move-result p2

    .line 99
    add-int v4, p2, v0

    .line 101
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 103
    div-int/lit8 p2, p3, 0x2

    .line 105
    sub-int/2addr p5, p2

    .line 106
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result v5

    .line 110
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 112
    add-int v6, v4, v1

    .line 114
    add-int v7, v5, p3

    .line 116
    move-object v2, p0

    .line 117
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 120
    return-void
.end method

.method public onMeasure(II)V
    .registers 14

    .line 1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v2, p1

    .line 7
    move v4, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 21
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result v2

    .line 27
    add-int/2addr v2, v1

    .line 28
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 30
    add-int/2addr v2, v1

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result v1

    .line 37
    const/16 v4, 0x8

    .line 39
    if-ne v1, v4, :cond_29

    .line 41
    move v2, v3

    .line 42
    :cond_29
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 44
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    move-result v5

    .line 50
    add-int/2addr v5, v1

    .line 51
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 53
    add-int/2addr v0, v5

    .line 54
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 56
    const/4 v10, 0x0

    .line 57
    move-object v5, p0

    .line 58
    move v7, p1

    .line 59
    move v8, v2

    .line 60
    move v9, p2

    .line 61
    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 64
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 74
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    move-result v6

    .line 80
    add-int/2addr v6, v5

    .line 81
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 83
    add-int/2addr v6, v5

    .line 84
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 89
    move-result v5

    .line 90
    if-ne v5, v4, :cond_5c

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v3, v6

    .line 94
    :goto_5d
    add-int/2addr v2, v3

    .line 95
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    move-result v4

    .line 103
    add-int/2addr v4, v3

    .line 104
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 106
    add-int/2addr v4, v1

    .line 107
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 110
    move-result v0

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 114
    move-result v1

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 118
    move-result v3

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 122
    move-result p1

    .line 123
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 126
    move-result p2

    .line 127
    const/high16 v4, 0x40000000  # 2.0f

    .line 129
    const/high16 v5, -0x80000000

    .line 131
    if-eq v1, v5, :cond_89

    .line 133
    if-eq v1, v4, :cond_87

    .line 135
    goto :goto_8d

    .line 136
    :cond_87
    move v2, p1

    .line 137
    goto :goto_8d

    .line 138
    :cond_89
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 141
    move-result v2

    .line 142
    :goto_8d
    if-eq v3, v5, :cond_94

    .line 144
    if-eq v3, v4, :cond_92

    .line 146
    goto :goto_98

    .line 147
    :cond_92
    move v0, p2

    .line 148
    goto :goto_98

    .line 149
    :cond_94
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 152
    move-result v0

    .line 153
    :goto_98
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 156
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setUp(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 p1, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    return-void
.end method

.method public setUpIndicator(I)V
    .registers 4

    .line 3
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    return-void
.end method
