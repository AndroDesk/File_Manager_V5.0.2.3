.class public Lcom/android/fileexplorer/view/BounceBackViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "BounceBackViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;,
        Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;
    }
.end annotation


# static fields
.field private static final DEFAULT_OVERSCROLL_ANIMATION_DURATION:I

.field private static final DEFAULT_OVERSCROLL_TRANSLATION:I

.field private static final INVALID_POINTER_ID:I


# instance fields
.field private mActivePointerId:I

.field private final mCamera:Landroid/graphics/Camera;

.field private mLastMotionX:F

.field private mOverscrollAnimationDuration:I

.field private final mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

.field private mOverscrollTranslation:F

.field private mScrollPosition:I

.field private mScrollPositionOffset:F

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c06

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/BounceBackViewPager;->DEFAULT_OVERSCROLL_ANIMATION_DURATION:I

    const v0, 0x92d00

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/BounceBackViewPager;->DEFAULT_OVERSCROLL_TRANSLATION:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/BounceBackViewPager;->INVALID_POINTER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager;Lcom/android/fileexplorer/view/BounceBackViewPager$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setStaticTransformationsEnabled(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mTouchSlop:I

    new-instance p1, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;

    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager;Lcom/android/fileexplorer/view/BounceBackViewPager$1;)V

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/BounceBackViewPager;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/BounceBackViewPager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/BounceBackViewPager;->invalidateVisibleChildren()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/BounceBackViewPager;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/BounceBackViewPager;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPosition:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/BounceBackViewPager;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPosition:I

    return p1
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/view/BounceBackViewPager;F)F
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPositionOffset:F

    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/R$styleable;->BounceBackViewPager:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x43160000  # 150.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    const/4 v0, 0x0

    const/16 v1, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private invalidateVisibleChildren()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "BounceBackViewPager"

    const/4 v1, 0x0

    :try_start_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_7} :catch_8

    return p1

    :catch_8
    move-exception p1

    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_13
    move-exception p1

    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Li1/a;

    move-result-object v3

    invoke-virtual {v3}, Li1/a;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_20

    goto :goto_22

    :cond_20
    move v0, v1

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v2

    :goto_23
    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v3}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$800(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)Z

    move-result v3

    if-eqz v3, :cond_a1

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5b

    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_67

    :cond_5b
    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    const/high16 v6, -0x40800000  # -1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_67
    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    neg-float v3, v3

    invoke-virtual {v4, v3, v5, v5}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    neg-float v4, v0

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ne p2, v2, :cond_9d

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_a0

    :cond_9d
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_a0
    return v2

    :cond_a1
    return v1
.end method

.method public getOverscrollAnimationDuration()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    return v0
.end method

.method public getOverscrollTranslation()F
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "BounceBackViewPager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_20

    const/4 v3, 0x5

    if-eq v2, v3, :cond_f

    goto :goto_2c

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    goto :goto_2c

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    :goto_2c
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_30} :catch_3c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_30} :catch_31

    return p1

    :catch_31
    move-exception p1

    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_3c
    move-exception p1

    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_ce

    const/4 v3, -0x1

    if-eq v0, v2, :cond_c6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_50

    const/4 v4, 0x3

    if-eq v0, v4, :cond_c6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3e

    const/4 v3, 0x6

    if-eq v0, v3, :cond_19

    goto/16 :goto_c4

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    if-ne v3, v4, :cond_c4

    if-nez v0, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    goto/16 :goto_da

    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    goto/16 :goto_da

    :cond_50
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    if-eq v0, v3, :cond_bf

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPageMargin()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Li1/a;

    move-result-object v7

    invoke-virtual {v7}, Li1/a;->getCount()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    mul-int/2addr v9, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    add-int/2addr v8, v2

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/2addr v8, v6

    int-to-float v8, v8

    add-float/2addr v4, v3

    iget v10, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPositionOffset:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_bc

    cmpg-float v0, v4, v9

    if-gez v0, :cond_a5

    cmpl-float v0, v9, v11

    if-nez v0, :cond_c4

    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mTouchSlop:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    int-to-float v4, v5

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    goto :goto_c4

    :cond_a5
    cmpl-float v0, v4, v8

    if-lez v0, :cond_c4

    mul-int/2addr v7, v6

    int-to-float v0, v7

    cmpl-float v0, v8, v0

    if-nez v0, :cond_c4

    sub-float/2addr v4, v8

    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mTouchSlop:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    int-to-float v3, v5

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    goto :goto_c4

    :cond_bc
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    goto :goto_c4

    :cond_bf
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$700(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V

    :cond_c4
    :goto_c4
    move v0, v1

    goto :goto_db

    :cond_c6
    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$700(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V

    goto :goto_da

    :cond_ce
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    :goto_da
    move v0, v2

    :goto_db
    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v3}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$800(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)Z

    move-result v3

    if-eqz v3, :cond_e5

    if-eqz v0, :cond_eb

    :cond_e5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_ec

    :cond_eb
    move v1, v2

    :cond_ec
    return v1
.end method

.method public setOverscrollAnimationDuration(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    return-void
.end method

.method public setOverscrollTranslation(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    return-void
.end method
