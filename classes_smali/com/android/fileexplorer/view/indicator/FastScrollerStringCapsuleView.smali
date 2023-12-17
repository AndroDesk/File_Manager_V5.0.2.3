.class public Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;
.super Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;
.source "FastScrollerStringCapsuleView.java"


# static fields
.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final DEFAULT_TRANSLATE:I = 0x0

.field private static final HIDE_TIME_BY_ALPHA_DURATION_MS:I = 0x12c

.field private static final HIDE_TIME_BY_SCALEX_DURATION_MS:I = 0x190

.field private static final HIDE_TIME_BY_TRANSLATE_DURATION_MS:I = 0x190

.field private static final HIDE_TIME_DELAY_DURATION_MS:I = 0x3e8

.field private static final LEFT_TRANSLATE:I = -0xb6

.field private static final RIGHT_TRANSLATE:I = 0xb6

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_TIME_BY_ALPHA_DURATION_MS:I = 0xc8

.field private static final SHOW_TIME_BY_SCALEX_DURATION_MS:I = 0xc8

.field private static final SHOW_TIME_BY_TRANSLATE_DURATION_MS:I = 0x1f4


# instance fields
.field public mAlpha:I

.field public mBackground:Landroid/graphics/drawable/Drawable;

.field public mBottomMargin:I

.field private mContent:Ljava/lang/String;

.field private mContentColor:I

.field public mContentRect:Landroid/graphics/Rect;

.field private mContentTextSize:I

.field public mDefaultTimeCapsuleHeight:I

.field public mDefaultTimeCapsuleWidth:I

.field public mEndMargin:I

.field private mHideAnimator:Landroid/animation/AnimatorSet;

.field private mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

.field private mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

.field public mIsInRight:Z

.field private mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;

.field public mPaint:Landroid/graphics/Paint;

.field public mScaleX:F

.field private mShowAnimator:Landroid/animation/AnimatorSet;

.field private mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

.field private mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

.field public mStartMargin:I

.field public mTopMargin:I

.field public mTranslationX:I

.field public mViewHeight:I

.field public mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;-><init>(Landroid/content/Context;)V

    .line 4
    const/high16 p1, 0x3f800000  # 1.0f

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 11
    const/16 v0, 0xff

    .line 13
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    .line 18
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleWidth:I

    .line 20
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    .line 24
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public cancelHideCapsule()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public cancelShowCapsule()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_91

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_34

    .line 17
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 19
    int-to-float v3, v2

    .line 20
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    .line 22
    mul-float/2addr v3, v4

    .line 23
    float-to-int v3, v3

    .line 24
    sub-int v4, v2, v3

    .line 26
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    .line 28
    if-eqz v5, :cond_27

    .line 30
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 32
    add-int/2addr v4, v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 36
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    goto :goto_2f

    .line 40
    :cond_27
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 42
    add-int/2addr v3, v2

    .line 43
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 45
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    :goto_2f
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentColor:I

    .line 57
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 64
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentTextSize:I

    .line 71
    int-to-float v2, v2

    .line 72
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 82
    move-result v3

    .line 83
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentRect:Landroid/graphics/Rect;

    .line 85
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 88
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 93
    move-result-object v0

    .line 94
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    .line 96
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    .line 98
    int-to-float v2, v2

    .line 99
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 101
    sub-float/2addr v2, v3

    .line 102
    float-to-int v2, v2

    .line 103
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    .line 105
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 107
    add-int/2addr v4, v1

    .line 108
    int-to-float v4, v4

    .line 109
    int-to-float v2, v2

    .line 110
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentRect:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 120
    move-result v2

    .line 121
    add-int/2addr v2, v1

    .line 122
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    .line 124
    add-int/2addr v2, v1

    .line 125
    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 127
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    .line 129
    int-to-float v1, v1

    .line 130
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 132
    sub-float/2addr v1, v2

    .line 133
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 135
    add-float/2addr v1, v0

    .line 136
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    .line 138
    int-to-float v0, v0

    .line 139
    add-float/2addr v1, v0

    .line 140
    float-to-int v0, v1

    .line 141
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    :cond_91
    return-void
.end method

.method public getAlpha()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 3
    return v0
.end method

.method public getScaleX()F
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    .line 3
    return v0
.end method

.method public getTranslationX()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 3
    return v0
.end method

.method public getViewHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 3
    return v0
.end method

.method public getViewWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 3
    return v0
.end method

.method public hideCapsule()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setInvisible()V

    .line 4
    return-void
.end method

.method public hideCapsuleByAnimator()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->cancelHideCapsule()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    const-wide/16 v1, 0x190

    .line 8
    const/4 v3, 0x2

    .line 9
    if-nez v0, :cond_24

    .line 11
    new-array v0, v3, [F

    .line 13
    fill-array-data v0, :array_be

    .line 16
    const-string v4, "scaleX"

    .line 18
    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    new-instance v4, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    .line 31
    invoke-direct {v4}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    .line 34
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    if-nez v0, :cond_52

    .line 41
    new-instance v0, Landroid/animation/ObjectAnimator;

    .line 43
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 48
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 53
    const-string v4, "translationX"

    .line 55
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 65
    new-instance v1, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    .line 67
    invoke-direct {v1}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    .line 70
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 75
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;

    .line 77
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    :cond_52
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    .line 85
    if-eqz v0, :cond_61

    .line 87
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 89
    new-array v1, v3, [I

    .line 91
    fill-array-data v1, :array_c6

    .line 94
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 97
    goto :goto_6b

    .line 98
    :cond_61
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 100
    new-array v1, v3, [I

    .line 102
    fill-array-data v1, :array_ce

    .line 105
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 108
    :goto_6b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 110
    if-nez v0, :cond_8b

    .line 112
    new-array v0, v3, [I

    .line 114
    fill-array-data v0, :array_d6

    .line 117
    const-string v1, "alpha"

    .line 119
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 122
    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 125
    const-wide/16 v1, 0x12c

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 132
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 134
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 137
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    :cond_8b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 142
    if-nez v0, :cond_b8

    .line 144
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 146
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 149
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 151
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$4;

    .line 153
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$4;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 161
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 163
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 169
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 172
    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 178
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 180
    const-wide/16 v1, 0x3e8

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 185
    :cond_b8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 187
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 190
    return-void

    .line 191
    :array_be
    .array-data 4
        0x3f800000  # 1.0f
        0x3eb851ec  # 0.36f
    .end array-data

    .line 199
    :array_c6
    .array-data 4
        0x0
        0xb6
    .end array-data

    .line 207
    :array_ce
    .array-data 4
        0x0
        -0xb6
    .end array-data

    .line 215
    :array_d6
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public setAlpha(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 3
    return-void
.end method

.method public setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;->getContent()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 17
    :cond_10
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    .line 19
    :cond_12
    return-void
.end method

.method public setInvisible()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 4
    const/high16 v1, 0x3f800000  # 1.0f

    .line 6
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setIsInRight(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    .line 3
    return-void
.end method

.method public setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;

    .line 3
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    .line 3
    return-void
.end method

.method public setStyle(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x0

    .line 7
    sget-object v2, Lcom/android/fileexplorer/R$styleable;->CustomFastCapsule:[I

    .line 9
    const v3, 0x7f0401c9

    .line 12
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_15
    if-ge v2, v0, :cond_66

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 27
    move-result v3

    .line 28
    const/16 v4, 0xb

    .line 30
    if-eq v3, v4, :cond_5a

    .line 32
    const/4 v4, 0x0

    .line 33
    packed-switch v3, :pswitch_data_9c

    .line 36
    goto :goto_63

    .line 37
    :pswitch_24  #0x6
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 40
    move-result v3

    .line 41
    float-to-int v3, v3

    .line 42
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    .line 44
    goto :goto_63

    .line 45
    :pswitch_2c  #0x5
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 48
    move-result v3

    .line 49
    float-to-int v3, v3

    .line 50
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentTextSize:I

    .line 52
    goto :goto_63

    .line 53
    :pswitch_34  #0x4
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 56
    move-result v3

    .line 57
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentColor:I

    .line 59
    goto :goto_63

    .line 60
    :pswitch_3b  #0x3
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 63
    move-result v3

    .line 64
    float-to-int v3, v3

    .line 65
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    .line 67
    goto :goto_63

    .line 68
    :pswitch_43  #0x2
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 71
    move-result v3

    .line 72
    float-to-int v3, v3

    .line 73
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    .line 75
    goto :goto_63

    .line 76
    :pswitch_4b  #0x1
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 79
    move-result v3

    .line 80
    float-to-int v3, v3

    .line 81
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    .line 83
    goto :goto_63

    .line 84
    :pswitch_53  #0x0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 87
    move-result-object v3

    .line 88
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    goto :goto_63

    .line 91
    :cond_5a
    const/high16 v4, 0x42380000  # 46.0f

    .line 93
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 96
    move-result v3

    .line 97
    float-to-int v3, v3

    .line 98
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

    .line 100
    :goto_63
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_15

    .line 103
    :cond_66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleWidth:I

    .line 108
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 110
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    .line 112
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 114
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 116
    if-eqz v0, :cond_8d

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 121
    move-result v0

    .line 122
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 125
    move-result p1

    .line 126
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 128
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    .line 130
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 135
    move-result v0

    .line 136
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 142
    :cond_8d
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 144
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    new-instance p1, Landroid/graphics/Rect;

    .line 150
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentRect:Landroid/graphics/Rect;

    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_4b  #00000001
        :pswitch_43  #00000002
        :pswitch_3b  #00000003
        :pswitch_34  #00000004
        :pswitch_2c  #00000005
        :pswitch_24  #00000006
    .end packed-switch
.end method

.method public setTranslationX(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 3
    return-void
.end method

.method public setVisible()V
    .registers 2

    .line 1
    const/16 v0, 0xff

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 12
    return-void
.end method

.method public showCapsule()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setVisible()V

    .line 4
    return-void
.end method

.method public showCapsuleByAnimator()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->cancelShowCapsule()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    const-wide/16 v1, 0xc8

    .line 8
    const/4 v3, 0x2

    .line 9
    if-nez v0, :cond_24

    .line 11
    new-array v0, v3, [F

    .line 13
    fill-array-data v0, :array_c2

    .line 16
    const-string v4, "scaleX"

    .line 18
    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 31
    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 34
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    if-nez v0, :cond_5f

    .line 41
    new-instance v0, Landroid/animation/ObjectAnimator;

    .line 43
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 48
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 53
    const-string v4, "translationX"

    .line 55
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 60
    const-wide/16 v4, 0x1f4

    .line 62
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 69
    const v5, 0x3e4ccccd  # 0.2f

    .line 72
    const v6, 0x3fe66666  # 1.8f

    .line 75
    const v7, 0x3e99999a  # 0.3f

    .line 78
    const/high16 v8, 0x3f800000  # 1.0f

    .line 80
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 83
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 88
    new-instance v4, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$1;

    .line 90
    invoke-direct {v4, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    .line 93
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    :cond_5f
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    .line 98
    if-eqz v0, :cond_6e

    .line 100
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 102
    new-array v4, v3, [I

    .line 104
    fill-array-data v4, :array_ca

    .line 107
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 110
    goto :goto_78

    .line 111
    :cond_6e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 113
    new-array v4, v3, [I

    .line 115
    fill-array-data v4, :array_d2

    .line 118
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 121
    :goto_78
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 123
    if-nez v0, :cond_96

    .line 125
    new-array v0, v3, [I

    .line 127
    fill-array-data v0, :array_da

    .line 130
    const-string v3, "alpha"

    .line 132
    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 143
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 145
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 148
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    :cond_96
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 153
    if-nez v0, :cond_bc

    .line 155
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 157
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 160
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 162
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$2;

    .line 164
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 172
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    .line 174
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 180
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 183
    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 186
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 189
    :cond_bc
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 191
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 194
    return-void

    .line 195
    :array_c2
    .array-data 4
        0x3eb851ec  # 0.36f
        0x3f800000  # 1.0f
    .end array-data

    .line 203
    :array_ca
    .array-data 4
        0xb6
        0x0
    .end array-data

    .line 211
    :array_d2
    .array-data 4
        -0xb6
        0x0
    .end array-data

    .line 219
    :array_da
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
