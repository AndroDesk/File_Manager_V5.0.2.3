.class public Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;
.super Ljava/lang/Object;
.source "FastScrollerThumbView.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/DrawView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;
    }
.end annotation


# static fields
.field private static final ARROW_TRANSLATE:Ljava/lang/String; = "arrowTranslate"

.field private static final DEFAULT_ARROW_TRANSLATE:I = 0x0

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final DEFAULT_THUMB_MARGIN:I = 0x2c

.field private static final HIDE_DURATION_MS:I = 0xc8

.field private static final RETRACT_ARROW_DURATION_MS:I = 0xc8

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0xc8

.field private static final STRETCH_ARROW_DURATION_MS:I = 0xc8


# instance fields
.field private mAlpha:I

.field private mAlphaAnimator:Landroid/animation/PropertyValuesHolder;

.field private mAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mArrowMargin:I

.field private mArrowTranslate:I

.field private mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mBottomArrowHeight:I

.field private mBottomArrowWidth:I

.field private mContext:Landroid/content/Context;

.field private mDefaultThumbHeight:I

.field private mDefaultThumbWidth:I

.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalThumbHeight:I

.field private mHorizontalThumbWidth:I

.field private mMyScaleX:F

.field private mMyScaleY:F

.field private mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

.field private mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleXAnimator:Landroid/animation/PropertyValuesHolder;

.field private mScaleYAnimator:Landroid/animation/PropertyValuesHolder;

.field private mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

.field private mThumbMargin:I

.field private mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mTopArrowHeight:I

.field private mTopArrowWidth:I

.field private mTranslateAnimator:Landroid/animation/PropertyValuesHolder;

.field private mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mVerticalThumbHeight:I

.field private mVerticalThumbWidth:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000  # 1.0f

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    .line 10
    const/16 v0, 0xff

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public cancelHideScrollerBarAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public cancelRetractArrowAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public cancelShowScrollerBarAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public cancelStretchArrowAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_31

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    .line 13
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    .line 15
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    .line 20
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    .line 22
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    .line 24
    div-int/lit8 v3, v3, 0x2

    .line 26
    int-to-float v3, v3

    .line 27
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    .line 29
    div-int/lit8 v4, v4, 0x2

    .line 31
    int-to-float v4, v4

    .line 32
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 39
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    if-eqz v0, :cond_52

    .line 54
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbWidth:I

    .line 56
    int-to-float v2, v2

    .line 57
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    .line 59
    mul-float/2addr v2, v3

    .line 60
    float-to-int v2, v2

    .line 61
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbHeight:I

    .line 63
    int-to-float v3, v3

    .line 64
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    .line 66
    mul-float/2addr v3, v4

    .line 67
    float-to-int v3, v3

    .line 68
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    :cond_52
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    if-eqz v0, :cond_81

    .line 87
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    .line 89
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowWidth:I

    .line 91
    if-le v1, v2, :cond_81

    .line 93
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    .line 95
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowHeight:I

    .line 97
    sub-int v5, v3, v4

    .line 99
    if-lez v5, :cond_81

    .line 101
    sub-int/2addr v1, v2

    .line 102
    div-int/lit8 v1, v1, 0x2

    .line 104
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowMargin:I

    .line 106
    sub-int/2addr v3, v5

    .line 107
    div-int/lit8 v3, v3, 0x2

    .line 109
    sub-int/2addr v3, v4

    .line 110
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    .line 112
    sub-int/2addr v3, v5

    .line 113
    add-int/2addr v2, v1

    .line 114
    add-int/2addr v4, v3

    .line 115
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_81
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    if-eqz v0, :cond_af

    .line 134
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    .line 136
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowWidth:I

    .line 138
    if-le v1, v2, :cond_af

    .line 140
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    .line 142
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowHeight:I

    .line 144
    sub-int v5, v3, v4

    .line 146
    if-lez v5, :cond_af

    .line 148
    sub-int/2addr v1, v2

    .line 149
    div-int/lit8 v1, v1, 0x2

    .line 151
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowMargin:I

    .line 153
    add-int/2addr v3, v5

    .line 154
    div-int/lit8 v3, v3, 0x2

    .line 156
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    .line 158
    add-int/2addr v3, v5

    .line 159
    add-int/2addr v2, v1

    .line 160
    add-int/2addr v4, v3

    .line 161
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 168
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 171
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    :cond_af
    return-void
.end method

.method public getArrowTranslate()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    .line 3
    return v0
.end method

.method public getMyScaleX()F
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    .line 3
    return v0
.end method

.method public getMyScaleY()F
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    .line 3
    return v0
.end method

.method public getThumbMargin()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mThumbMargin:I

    .line 3
    return v0
.end method

.method public getViewHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    .line 3
    return v0
.end method

.method public getViewWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    .line 3
    return v0
.end method

.method public hideScrollerBarAnimator(J)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelHideScrollerBarAnimator()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    if-nez v0, :cond_3d

    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_44

    .line 14
    const-string v1, "myAlpha"

    .line 16
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 22
    const-wide/16 v1, 0xc8

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 31
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$4;

    .line 51
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$4;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 62
    :cond_3d
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 64
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 67
    return-void

    .line 68
    nop

    .line 69
    :array_44
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isVertical()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public retractArrowAnimator()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelRetractArrowAnimator()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    if-nez v0, :cond_2e

    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_34

    .line 14
    const-string v1, "arrowTranslate"

    .line 16
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 22
    const-wide/16 v1, 0xc8

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 31
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 52
    return-void

    .line 53
    :array_34
    .array-data 4
        0x5
        0x0
    .end array-data
.end method

.method public setArrowTranslate(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    .line 3
    return-void
.end method

.method public setInvisible()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 4
    const/high16 v1, 0x3f800000  # 1.0f

    .line 6
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    .line 8
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    .line 12
    return-void
.end method

.method public setMyAlpha(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 3
    return-void
.end method

.method public setMyScaleX(F)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    .line 3
    return-void
.end method

.method public setMyScaleY(F)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    .line 3
    return-void
.end method

.method public setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    .line 3
    return-void
.end method

.method public setStyle(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mContext:Landroid/content/Context;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/R$styleable;->CustomFastScroll:[I

    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f0401cb

    .line 9
    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_6f

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_66

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v3, v4, :cond_5f

    .line 30
    const/4 v4, 0x3

    .line 31
    if-eq v3, v4, :cond_58

    .line 33
    const/4 v4, 0x4

    .line 34
    if-eq v3, v4, :cond_51

    .line 36
    const/4 v4, 0x6

    .line 37
    if-eq v3, v4, :cond_4a

    .line 39
    const/16 v4, 0xc

    .line 41
    if-eq v3, v4, :cond_43

    .line 43
    const/16 v4, 0x9

    .line 45
    if-eq v3, v4, :cond_3a

    .line 47
    const/16 v4, 0xa

    .line 49
    if-eq v3, v4, :cond_33

    .line 51
    goto :goto_6c

    .line 52
    :cond_33
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v3

    .line 56
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    goto :goto_6c

    .line 59
    :cond_3a
    const/16 v4, 0x2c

    .line 61
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 64
    move-result v3

    .line 65
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mThumbMargin:I

    .line 67
    goto :goto_6c

    .line 68
    :cond_43
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object v3

    .line 72
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    goto :goto_6c

    .line 75
    :cond_4a
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v3

    .line 79
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    goto :goto_6c

    .line 82
    :cond_51
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 85
    move-result v3

    .line 86
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbWidth:I

    .line 88
    goto :goto_6c

    .line 89
    :cond_58
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 92
    move-result v3

    .line 93
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbHeight:I

    .line 95
    goto :goto_6c

    .line 96
    :cond_5f
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 99
    move-result-object v3

    .line 100
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    goto :goto_6c

    .line 103
    :cond_66
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 106
    move-result v3

    .line 107
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowMargin:I

    .line 109
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_12

    .line 112
    :cond_6f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    if-eqz p1, :cond_84

    .line 119
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 122
    move-result p1

    .line 123
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowWidth:I

    .line 125
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 130
    move-result p1

    .line 131
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowHeight:I

    .line 133
    :cond_84
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    if-eqz p1, :cond_96

    .line 137
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 140
    move-result p1

    .line 141
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowWidth:I

    .line 143
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowHeight:I

    .line 151
    :cond_96
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    if-eqz p1, :cond_ba

    .line 155
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbWidth:I

    .line 157
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 160
    move-result p1

    .line 161
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 164
    move-result p1

    .line 165
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    .line 167
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbHeight:I

    .line 169
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 174
    move-result v0

    .line 175
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 178
    move-result p1

    .line 179
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    .line 181
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    .line 183
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    .line 185
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    .line 187
    :cond_ba
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    if-eqz p1, :cond_e0

    .line 191
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbWidth:I

    .line 193
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 196
    move-result p1

    .line 197
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 200
    move-result p1

    .line 201
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbWidth:I

    .line 203
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbHeight:I

    .line 205
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 210
    move-result v0

    .line 211
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 214
    move-result p1

    .line 215
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbHeight:I

    .line 217
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    .line 219
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    .line 221
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    .line 223
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    .line 225
    :cond_e0
    return-void
.end method

.method public setThumbMargin(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mThumbMargin:I

    .line 3
    return-void
.end method

.method public setVisible()V
    .registers 2

    .line 1
    const/16 v0, 0xff

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    .line 9
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    .line 14
    return-void
.end method

.method public showScrollerBarAnimator()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelShowScrollerBarAnimator()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    if-nez v0, :cond_79

    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v1, v0, [F

    .line 11
    fill-array-data v1, :array_80

    .line 14
    const-string v2, "myScaleX"

    .line 16
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleXAnimator:Landroid/animation/PropertyValuesHolder;

    .line 22
    new-array v1, v0, [F

    .line 24
    fill-array-data v1, :array_88

    .line 27
    const-string v2, "myScaleY"

    .line 29
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleYAnimator:Landroid/animation/PropertyValuesHolder;

    .line 35
    new-array v1, v0, [I

    .line 37
    fill-array-data v1, :array_90

    .line 40
    const-string v2, "arrowTranslate"

    .line 42
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTranslateAnimator:Landroid/animation/PropertyValuesHolder;

    .line 48
    new-array v1, v0, [I

    .line 50
    fill-array-data v1, :array_98

    .line 53
    const-string v2, "myAlpha"

    .line 55
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlphaAnimator:Landroid/animation/PropertyValuesHolder;

    .line 61
    const/4 v2, 0x4

    .line 62
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    .line 64
    const/4 v3, 0x0

    .line 65
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleXAnimator:Landroid/animation/PropertyValuesHolder;

    .line 67
    aput-object v4, v2, v3

    .line 69
    const/4 v3, 0x1

    .line 70
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleYAnimator:Landroid/animation/PropertyValuesHolder;

    .line 72
    aput-object v4, v2, v3

    .line 74
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTranslateAnimator:Landroid/animation/PropertyValuesHolder;

    .line 76
    aput-object v3, v2, v0

    .line 78
    const/4 v0, 0x3

    .line 79
    aput-object v1, v2, v0

    .line 81
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 87
    const-wide/16 v1, 0xc8

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 94
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 96
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 99
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 104
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$1;

    .line 106
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 114
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$2;

    .line 116
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    :cond_79
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 124
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 127
    return-void

    .line 128
    nop

    .line 129
    :array_80
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    .line 137
    :array_88
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    .line 145
    :array_90
    .array-data 4
        0x19
        0x0
    .end array-data

    .line 153
    :array_98
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public stretchArrowAnimator()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelStretchArrowAnimator()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    if-nez v0, :cond_2e

    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_34

    .line 14
    const-string v1, "arrowTranslate"

    .line 16
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 22
    const-wide/16 v1, 0xc8

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 31
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$6;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$6;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 52
    return-void

    .line 53
    :array_34
    .array-data 4
        0x0
        0x5
    .end array-data
.end method
