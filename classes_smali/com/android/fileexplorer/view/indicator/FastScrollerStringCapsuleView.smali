.class public Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;
.super Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;
.source "FastScrollerStringCapsuleView.java"


# static fields
.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final DEFAULT_TRANSLATE:I

.field private static final HIDE_TIME_BY_ALPHA_DURATION_MS:I

.field private static final HIDE_TIME_BY_SCALEX_DURATION_MS:I

.field private static final HIDE_TIME_BY_TRANSLATE_DURATION_MS:I

.field private static final HIDE_TIME_DELAY_DURATION_MS:I

.field private static final LEFT_TRANSLATE:I

.field private static final RIGHT_TRANSLATE:I

.field private static final SCROLLBAR_FULL_OPAQUE:I

.field private static final SHOW_TIME_BY_ALPHA_DURATION_MS:I

.field private static final SHOW_TIME_BY_SCALEX_DURATION_MS:I

.field private static final SHOW_TIME_BY_TRANSLATE_DURATION_MS:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->DEFAULT_TRANSLATE:I

    const v0, 0x92cba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->HIDE_TIME_BY_ALPHA_DURATION_MS:I

    const v0, 0x92c06

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->HIDE_TIME_BY_SCALEX_DURATION_MS:I

    const v0, 0x92c06

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->HIDE_TIME_BY_TRANSLATE_DURATION_MS:I

    const v0, 0x92e7e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->HIDE_TIME_DELAY_DURATION_MS:I

    const v0, -0x92d24

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->LEFT_TRANSLATE:I

    const v0, 0x92d20

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->RIGHT_TRANSLATE:I

    const v0, 0x92d69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->SCROLLBAR_FULL_OPAQUE:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->SHOW_TIME_BY_ALPHA_DURATION_MS:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->SHOW_TIME_BY_SCALEX_DURATION_MS:I

    const v0, 0x92c62

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->SHOW_TIME_BY_TRANSLATE_DURATION_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleWidth:I

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;

    return-object p0
.end method


# virtual methods
.method public cancelHideCapsule()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method public cancelShowCapsule()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    int-to-float v3, v2

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v4, v2, v3

    iget-boolean v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    if-eqz v5, :cond_27

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v4, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2f

    :cond_27
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2f
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_91
    return-void
.end method

.method public getAlpha()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    return v0
.end method

.method public getScaleX()F
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    return v0
.end method

.method public getTranslationX()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    return v0
.end method

.method public getViewHeight()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    return v0
.end method

.method public hideCapsule()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setInvisible()V

    return-void
.end method

.method public hideCapsuleByAnimator()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->cancelHideCapsule()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    const/4 v3, 0x2

    if-nez v0, :cond_24

    new-array v0, v3, [F

    fill-array-data v0, :array_be

    const-string v4, "scaleX"

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_52

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    const-string v4, "translationX"

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_52
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [I

    fill-array-data v1, :array_c6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_6b

    :cond_61
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [I

    fill-array-data v1, :array_ce

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    :goto_6b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_8b

    new-array v0, v3, [I

    fill-array-data v0, :array_d6

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_8b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_b8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$4;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByScaleXAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_b8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mHideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_be
    .array-data 4
        0x3f800000  # 1.0f
        0x3eb851ec  # 0.36f
    .end array-data

    :array_c6
    .array-data 4
        0x0
        0xb6
    .end array-data

    :array_ce
    .array-data 4
        0x0
        -0xb6
    .end array-data

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

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    return-void
.end method

.method public setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public setInvisible()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setIsInRight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    return-void
.end method

.method public setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;

    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    return-void
.end method

.method public setStyle(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    sget-object v2, Lcom/android/fileexplorer/R$styleable;->CustomFastCapsule:[I

    const v3, 0x7f0401c9

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_66

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_5a

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_9c

    goto :goto_63

    :pswitch_24  #0x6
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    goto :goto_63

    :pswitch_2c  #0x5
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentTextSize:I

    goto :goto_63

    :pswitch_34  #0x4
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentColor:I

    goto :goto_63

    :pswitch_3b  #0x3
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    goto :goto_63

    :pswitch_43  #0x2
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    goto :goto_63

    :pswitch_4b  #0x1
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    goto :goto_63

    :pswitch_53  #0x0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_63

    :cond_5a
    const/high16 v4, 0x42380000  # 46.0f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleWidth:I

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    :cond_8d
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mContentRect:Landroid/graphics/Rect;

    return-void

    nop

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

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    return-void
.end method

.method public setVisible()V
    .registers 2

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    return-void
.end method

.method public showCapsule()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setVisible()V

    return-void
.end method

.method public showCapsuleByAnimator()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->cancelShowCapsule()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    if-nez v0, :cond_24

    new-array v0, v3, [F

    fill-array-data v0, :array_c2

    const-string v4, "scaleX"

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_5f

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    const-string v4, "translationX"

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd  # 0.2f

    const v6, 0x3fe66666  # 1.8f

    const v7, 0x3e99999a  # 0.3f

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$1;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5f
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v3, [I

    fill-array-data v4, :array_ca

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_78

    :cond_6e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v3, [I

    fill-array-data v4, :array_d2

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    :goto_78
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_96

    new-array v0, v3, [I

    fill-array-data v0, :array_da

    const-string v3, "alpha"

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_96
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_bc

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByScaleXAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_bc
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_c2
    .array-data 4
        0x3eb851ec  # 0.36f
        0x3f800000  # 1.0f
    .end array-data

    :array_ca
    .array-data 4
        0xb6
        0x0
    .end array-data

    :array_d2
    .array-data 4
        -0xb6
        0x0
    .end array-data

    :array_da
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
