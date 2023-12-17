.class public Lcom/google/android/material/snackbar/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarContentLayout.java"

# interfaces
.implements Lcom/google/android/material/snackbar/ContentViewCallback;


# instance fields
.field private actionView:Landroid/widget/Button;

.field private maxInlineActionWidth:I

.field private maxWidth:I

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    .line 5
    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .registers 5

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->g(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_14

    .line 9
    invoke-static {p0}, Lm0/g0$e;->f(Landroid/view/View;)I

    .line 12
    move-result v0

    .line 13
    invoke-static {p0}, Lm0/g0$e;->e(Landroid/view/View;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {p0, v0, p1, v1, p2}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    .line 20
    goto :goto_1f

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    :goto_1f
    return-void
.end method

.method private updateViewsWithinLayout(III)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v0, :cond_c

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    move p1, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result v0

    .line 20
    if-ne v0, p2, :cond_20

    .line 22
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    move-result v0

    .line 28
    if-eq v0, p3, :cond_1e

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    move v1, p1

    .line 32
    goto :goto_25

    .line 33
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 35
    invoke-static {p1, p2, p3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    .line 38
    :goto_25
    return v1
.end method


# virtual methods
.method public animateContentIn(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 12
    move-result-object v0

    .line 13
    const/high16 v2, 0x3f800000  # 1.0f

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    move-result-object v0

    .line 19
    int-to-long v3, p2

    .line 20
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 23
    move-result-object p2

    .line 24
    int-to-long v5, p1

    .line 25
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 32
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_41

    .line 40
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 66
    :cond_41
    return-void
.end method

.method public animateContentOut(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 3
    const/high16 v1, 0x3f800000  # 1.0f

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    move-result-object v0

    .line 19
    int-to-long v3, p2

    .line 20
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 23
    move-result-object p2

    .line 24
    int-to-long v5, p1

    .line 25
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 32
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_41

    .line 40
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 66
    :cond_41
    return-void
.end method

.method public getActionView()Landroid/widget/Button;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 3
    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    sget v0, Lcom/google/android/material/R$id;->snackbar_text:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 14
    sget v0, Lcom/google/android/material/R$id;->snackbar_action:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/Button;

    .line 22
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 24
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    iget v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    .line 6
    if-lez v0, :cond_18

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    .line 14
    if-le v0, v1, :cond_18

    .line 16
    const/high16 p1, 0x40000000  # 2.0f

    .line 18
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 21
    move-result p1

    .line 22
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 25
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 29
    sget v1, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical_2lines:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v1

    .line 39
    sget v2, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical:I

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x1

    .line 57
    if-le v2, v4, :cond_3c

    .line 59
    move v2, v4

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v2, v3

    .line 62
    :goto_3d
    if-eqz v2, :cond_56

    .line 64
    iget v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 66
    if-lez v5, :cond_56

    .line 68
    iget-object v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 73
    move-result v5

    .line 74
    iget v6, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 76
    if-le v5, v6, :cond_56

    .line 78
    sub-int v1, v0, v1

    .line 80
    invoke-direct {p0, v4, v0, v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_61

    .line 86
    goto :goto_60

    .line 87
    :cond_56
    if-eqz v2, :cond_59

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v0, v1

    .line 91
    :goto_5a
    invoke-direct {p0, v3, v0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_61

    .line 97
    :goto_60
    move v3, v4

    .line 98
    :cond_61
    if-eqz v3, :cond_66

    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 103
    :cond_66
    return-void
.end method

.method public setMaxInlineActionWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 3
    return-void
.end method

.method public updateActionTextColorAlphaIfNeeded(F)V
    .registers 4

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_1b

    .line 7
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 12
    move-result v0

    .line 13
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 15
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 18
    move-result v1

    .line 19
    invoke-static {v1, v0, p1}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 22
    move-result p1

    .line 23
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    :cond_1b
    return-void
.end method
