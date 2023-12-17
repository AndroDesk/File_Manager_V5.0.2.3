.class public Lmiuix/appcompat/internal/widget/DialogButtonPanel;
.super Landroid/widget/LinearLayout;
.source "DialogButtonPanel.java"


# instance fields
.field private mButtonHeight:I

.field private mButtonMarginHorizontal:I

.field private mButtonMarginVertical:I

.field private mButtonTextSize:F

.field private mCurrentDensityDpi:I

.field private mForceVertical:Z

.field private mLastDensityDpi:I

.field private mPanelPaddingHorizontal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41880000  # 17.0f

    .line 4
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_button_panel_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 7
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 8
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 9
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_button_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mLastDensityDpi:I

    return-void
.end method

.method private handleButtonLayout(I)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 9
    move-result v0

    .line 10
    sub-int/2addr p1, v0

    .line 11
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isVerticalNeeded(I)Z

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p1, :cond_5b

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    iget p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    move-result v3

    .line 32
    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    move-result v5

    .line 38
    invoke-virtual {p0, p1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    move p1, v2

    .line 42
    move v3, p1

    .line 43
    :goto_2a
    if-ge p1, v0, :cond_a9

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_38

    .line 55
    move v5, v1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v5, v2

    .line 58
    :goto_39
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    const/4 v6, -0x1

    .line 65
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 67
    iget v6, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 69
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 71
    const/4 v6, 0x0

    .line 72
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 74
    if-eqz v5, :cond_4d

    .line 76
    move v6, v3

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v6, v2

    .line 79
    :goto_4e
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 81
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 83
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 85
    if-eqz v5, :cond_58

    .line 87
    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 89
    :cond_58
    add-int/lit8 p1, p1, 0x1

    .line 91
    goto :goto_2a

    .line 92
    :cond_5b
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    iget p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 100
    move-result v3

    .line 101
    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 106
    move-result v5

    .line 107
    invoke-virtual {p0, p1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 113
    move-result p1

    .line 114
    move v3, v2

    .line 115
    move v4, v3

    .line 116
    :goto_73
    if-ge v3, v0, :cond_a9

    .line 118
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_81

    .line 128
    move v6, v1

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move v6, v2

    .line 131
    :goto_82
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 139
    iget v7, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 141
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 143
    const/high16 v7, 0x3f800000  # 1.0f

    .line 145
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 147
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 149
    if-eqz v6, :cond_9e

    .line 151
    if-eqz p1, :cond_9b

    .line 153
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 155
    goto :goto_a2

    .line 156
    :cond_9b
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 158
    goto :goto_a2

    .line 159
    :cond_9e
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 161
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 163
    :goto_a2
    if-eqz v6, :cond_a6

    .line 165
    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 167
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    .line 169
    goto :goto_73

    .line 170
    :cond_a9
    return-void
.end method

.method private isEllipsized(Landroid/widget/TextView;I)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr p2, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 9
    move-result v0

    .line 10
    sub-int/2addr p2, v0

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 26
    move-result p1

    .line 27
    float-to-int p1, p1

    .line 28
    if-le p1, p2, :cond_1f

    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    return p1
.end method

.method private isVerticalNeeded(I)Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 13
    move v3, v0

    .line 14
    :goto_d
    if-ltz v2, :cond_20

    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 23
    move-result v4

    .line 24
    const/16 v5, 0x8

    .line 26
    if-ne v4, v5, :cond_1d

    .line 28
    add-int/lit8 v3, v3, -0x1

    .line 30
    :cond_1d
    add-int/lit8 v2, v2, -0x1

    .line 32
    goto :goto_d

    .line 33
    :cond_20
    const/4 v2, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    if-ge v3, v2, :cond_25

    .line 37
    return v4

    .line 38
    :cond_25
    const/4 v5, 0x3

    .line 39
    if-lt v3, v5, :cond_29

    .line 41
    return v1

    .line 42
    :cond_29
    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 44
    sub-int/2addr p1, v3

    .line 45
    div-int/2addr p1, v2

    .line 46
    move v2, v4

    .line 47
    :goto_2e
    if-ge v2, v0, :cond_4a

    .line 49
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v3

    .line 53
    instance-of v5, v3, Landroid/widget/TextView;

    .line 55
    if-eqz v5, :cond_47

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_47

    .line 63
    check-cast v3, Landroid/widget/TextView;

    .line 65
    invoke-direct {p0, v3, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isEllipsized(Landroid/widget/TextView;I)Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_47

    .line 71
    return v1

    .line 72
    :cond_47
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_2e

    .line 75
    :cond_4a
    return v4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    .line 6
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mLastDensityDpi:I

    .line 8
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 10
    if-eq v0, p1, :cond_48

    .line 12
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    .line 14
    int-to-float p1, p1

    .line 15
    const/high16 v1, 0x3f800000  # 1.0f

    .line 17
    mul-float/2addr p1, v1

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr p1, v0

    .line 20
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 22
    int-to-float v0, v0

    .line 23
    mul-float/2addr v0, p1

    .line 24
    float-to-int v0, v0

    .line 25
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 27
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 29
    int-to-float v0, v0

    .line 30
    mul-float/2addr v0, p1

    .line 31
    float-to-int v0, v0

    .line 32
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 34
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 36
    int-to-float v0, v0

    .line 37
    mul-float/2addr v0, p1

    .line 38
    float-to-int v0, v0

    .line 39
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 41
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 43
    int-to-float v0, v0

    .line 44
    mul-float/2addr v0, p1

    .line 45
    float-to-int p1, v0

    .line 46
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_34
    if-ge v0, p1, :cond_48

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    instance-of v2, v1, Landroid/widget/TextView;

    .line 61
    if-eqz v2, :cond_45

    .line 63
    check-cast v1, Landroid/widget/TextView;

    .line 65
    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    .line 67
    invoke-static {v1, v2}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 70
    :cond_45
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_34

    .line 73
    :cond_48
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->handleButtonLayout(I)V

    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 11
    return-void
.end method

.method public setForceVertical(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    .line 3
    return-void
.end method
