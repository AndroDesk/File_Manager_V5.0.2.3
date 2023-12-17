.class public Lcom/android/fileexplorer/view/ScrollingTabTextView;
.super Landroid/widget/TextView;
.source "ScrollingTabTextView.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mClipPosition:I

.field private mLeftToRight:Z

.field private mNormalColor:I

.field private mOriginColor:Landroid/content/res/ColorStateList;

.field private mSelectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 10
    sget-object p2, Landroid/widget/TextView;->ENABLED_STATE_SET:[I

    .line 12
    const p3, 0x7f060541

    .line 15
    invoke-static {p3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 18
    move-result p3

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mNormalColor:I

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 27
    sget-object p2, Landroid/widget/TextView;->ENABLED_SELECTED_STATE_SET:[I

    .line 29
    const p3, 0x7f060543

    .line 32
    invoke-static {p3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 35
    move-result p3

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mSelectedColor:I

    .line 42
    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/view/ScrollingTabTextView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mClipPosition:I

    .line 3
    return p1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_80

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    goto/16 :goto_80

    .line 13
    :cond_c
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mLeftToRight:Z

    .line 15
    if-eqz v0, :cond_16

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_20

    .line 23
    :cond_16
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mLeftToRight:Z

    .line 25
    if-nez v0, :cond_23

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_23

    .line 33
    :cond_20
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mNormalColor:I

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mSelectedColor:I

    .line 38
    :goto_25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 44
    move-result v1

    .line 45
    iget v2, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mClipPosition:I

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v1, :cond_40

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 57
    move-result v5

    .line 58
    add-int/2addr v5, v4

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 62
    move-result v6

    .line 63
    add-int/2addr v2, v6

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v5, v4

    .line 66
    :goto_41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    invoke-virtual {p1, v5, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 72
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    iget v2, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mNormalColor:I

    .line 80
    if-ne v0, v2, :cond_54

    .line 82
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mSelectedColor:I

    .line 84
    goto :goto_59

    .line 85
    :cond_54
    iget v5, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mSelectedColor:I

    .line 87
    if-ne v0, v5, :cond_59

    .line 89
    move v0, v2

    .line 90
    :cond_59
    :goto_59
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mClipPosition:I

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 98
    move-result v2

    .line 99
    if-eqz v1, :cond_6e

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 109
    move-result v1

    .line 110
    add-int/2addr v2, v1

    .line 111
    :cond_6e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 117
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    return-void

    .line 129
    :cond_80
    :goto_80
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    return-void
.end method

.method public startScrollAnimation(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :goto_f
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mLeftToRight:Z

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_1b

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p1

    .line 25
    move v1, p1

    .line 26
    move p1, v0

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    move-result p1

    .line 32
    move v1, v0

    .line 33
    :goto_20
    iget-object v2, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 35
    const/4 v3, 0x2

    .line 36
    new-array v3, v3, [I

    .line 38
    aput p1, v3, v0

    .line 40
    const/4 p1, 0x1

    .line 41
    aput v1, v3, p1

    .line 43
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 48
    const-wide/16 v0, 0xc8

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 55
    new-instance v0, Lcom/android/fileexplorer/view/ScrollingTabTextView$1;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/ScrollingTabTextView$1;-><init>(Lcom/android/fileexplorer/view/ScrollingTabTextView;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 65
    new-instance v0, Lcom/android/fileexplorer/view/ScrollingTabTextView$2;

    .line 67
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/ScrollingTabTextView$2;-><init>(Lcom/android/fileexplorer/view/ScrollingTabTextView;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 75
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 78
    return-void
.end method
