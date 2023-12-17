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

.field private static final DEFAULT_ARROW_TRANSLATE:I

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final DEFAULT_THUMB_MARGIN:I

.field private static final HIDE_DURATION_MS:I

.field private static final RETRACT_ARROW_DURATION_MS:I

.field private static final SCROLLBAR_FULL_OPAQUE:I

.field private static final SHOW_DURATION_MS:I

.field private static final STRETCH_ARROW_DURATION_MS:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->DEFAULT_ARROW_TRANSLATE:I

    const v0, 0x92dba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->DEFAULT_THUMB_MARGIN:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->HIDE_DURATION_MS:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->RETRACT_ARROW_DURATION_MS:I

    const v0, 0x92d69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->SCROLLBAR_FULL_OPAQUE:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->SHOW_DURATION_MS:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->STRETCH_ARROW_DURATION_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    return-object p0
.end method


# virtual methods
.method public cancelHideScrollerBarAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public cancelRetractArrowAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public cancelShowScrollerBarAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public cancelStretchArrowAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_52

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_52
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_81

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowWidth:I

    if-le v1, v2, :cond_81

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowHeight:I

    sub-int v5, v3, v4

    if-lez v5, :cond_81

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowMargin:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v4

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v1

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_81
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_af

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowWidth:I

    if-le v1, v2, :cond_af

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowHeight:I

    sub-int v5, v3, v4

    if-lez v5, :cond_af

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowMargin:I

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    add-int/2addr v3, v5

    add-int/2addr v2, v1

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_af
    return-void
.end method

.method public getArrowTranslate()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    return v0
.end method

.method public getMyScaleX()F
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    return v0
.end method

.method public getMyScaleY()F
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    return v0
.end method

.method public getThumbMargin()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mThumbMargin:I

    return v0
.end method

.method public getViewHeight()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    return v0
.end method

.method public hideScrollerBarAnimator(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelHideScrollerBarAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3d

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    const-string v1, "myAlpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$4;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_3d
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_44
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isVertical()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public retractArrowAnimator()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelRetractArrowAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2e

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    const-string v1, "arrowTranslate"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mRetractArrowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

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

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    return-void
.end method

.method public setInvisible()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    return-void
.end method

.method public setMyAlpha(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    return-void
.end method

.method public setMyScaleX(F)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    return-void
.end method

.method public setMyScaleY(F)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    return-void
.end method

.method public setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    return-void
.end method

.method public setStyle(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/fileexplorer/R$styleable;->CustomFastScroll:[I

    const/4 v2, 0x0

    const v3, 0x7f0401cb

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_6f

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-eqz v3, :cond_66

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_58

    const/4 v4, 0x4

    if-eq v3, v4, :cond_51

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4a

    const/16 v4, 0xc

    if-eq v3, v4, :cond_43

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3a

    const/16 v4, 0xa

    if-eq v3, v4, :cond_33

    goto :goto_6c

    :cond_33
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6c

    :cond_3a
    const/16 v4, 0x2c

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mThumbMargin:I

    goto :goto_6c

    :cond_43
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6c

    :cond_4a
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6c

    :cond_51
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbWidth:I

    goto :goto_6c

    :cond_58
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbHeight:I

    goto :goto_6c

    :cond_5f
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6c

    :cond_66
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowMargin:I

    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_6f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_84

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowWidth:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTopArrowHeight:I

    :cond_84
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowWidth:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mBottomArrowHeight:I

    :cond_96
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_ba

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    :cond_ba
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_e0

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbWidth:I

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mDefaultThumbHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mHorizontalThumbHeight:I

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbWidth:I

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewWidth:I

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mVerticalThumbHeight:I

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mViewHeight:I

    :cond_e0
    return-void
.end method

.method public setThumbMargin(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mThumbMargin:I

    return-void
.end method

.method public setVisible()V
    .registers 2

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlpha:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleX:F

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mMyScaleY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mArrowTranslate:I

    return-void
.end method

.method public showScrollerBarAnimator()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelShowScrollerBarAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_79

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_80

    const-string v2, "myScaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleXAnimator:Landroid/animation/PropertyValuesHolder;

    new-array v1, v0, [F

    fill-array-data v1, :array_88

    const-string v2, "myScaleY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleYAnimator:Landroid/animation/PropertyValuesHolder;

    new-array v1, v0, [I

    fill-array-data v1, :array_90

    const-string v2, "arrowTranslate"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTranslateAnimator:Landroid/animation/PropertyValuesHolder;

    new-array v1, v0, [I

    fill-array-data v1, :array_98

    const-string v2, "myAlpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAlphaAnimator:Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleXAnimator:Landroid/animation/PropertyValuesHolder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mScaleYAnimator:Landroid/animation/PropertyValuesHolder;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mTranslateAnimator:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_79
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_80
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    :array_88
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    :array_90
    .array-data 4
        0x19
        0x0
    .end array-data

    :array_98
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public stretchArrowAnimator()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelStretchArrowAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2e

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    const-string v1, "arrowTranslate"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$6;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$6;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->mStretchArrowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_34
    .array-data 4
        0x0
        0x5
    .end array-data
.end method
