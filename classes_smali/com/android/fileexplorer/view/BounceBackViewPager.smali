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
.field private static final DEFAULT_OVERSCROLL_ANIMATION_DURATION:I = 0x190

.field private static final DEFAULT_OVERSCROLL_TRANSLATION:I = 0x96

.field private static final INVALID_POINTER_ID:I = -0x1


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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager;Lcom/android/fileexplorer/view/BounceBackViewPager$1;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 12
    new-instance v0, Landroid/graphics/Camera;

    .line 14
    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setStaticTransformationsEnabled(Z)V

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mTouchSlop:I

    .line 33
    new-instance p1, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;

    .line 35
    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/view/BounceBackViewPager$MyOnPageChangeListener;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager;Lcom/android/fileexplorer/view/BounceBackViewPager$1;)V

    .line 38
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 41
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/BounceBackViewPager;->init(Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/BounceBackViewPager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/BounceBackViewPager;->invalidateVisibleChildren()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/BounceBackViewPager;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/BounceBackViewPager;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/BounceBackViewPager;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPosition:I

    .line 3
    return p1
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/view/BounceBackViewPager;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPositionOffset:F

    .line 3
    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/R$styleable;->BounceBackViewPager:[I

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    const/high16 v1, 0x43160000  # 150.0f

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    .line 20
    const/4 v0, 0x0

    .line 21
    const/16 v1, 0x190

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method

.method private invalidateVisibleChildren()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_11

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_11
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    const-string v0, "BounceBackViewPager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    move-result p1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_7} :catch_8

    .line 8
    return p1

    .line 9
    :catch_8
    move-exception p1

    .line 10
    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return v1

    .line 20
    :catch_13
    move-exception p1

    .line 21
    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return v1
.end method

.method public getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v2

    .line 17
    div-int/2addr v0, v2

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_22

    .line 21
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Li1/a;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Li1/a;->getCount()I

    .line 28
    move-result v3

    .line 29
    sub-int/2addr v3, v2

    .line 30
    if-ne v0, v3, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    move v0, v1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    :goto_22
    move v0, v2

    .line 36
    :goto_23
    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 38
    invoke-static {v3}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$800(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_a1

    .line 44
    if-eqz v0, :cond_a1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v0

    .line 50
    div-int/lit8 v0, v0, 0x2

    .line 52
    int-to-float v0, v0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 56
    move-result v1

    .line 57
    div-int/lit8 v1, v1, 0x2

    .line 59
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 66
    iget v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    .line 68
    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 70
    invoke-static {v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F

    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x0

    .line 75
    cmpl-float v4, v4, v5

    .line 77
    if-lez v4, :cond_5b

    .line 79
    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 81
    invoke-static {v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F

    .line 84
    move-result v4

    .line 85
    const/high16 v6, 0x3f800000  # 1.0f

    .line 87
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    .line 90
    move-result v4

    .line 91
    goto :goto_67

    .line 92
    :cond_5b
    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 94
    invoke-static {v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F

    .line 97
    move-result v4

    .line 98
    const/high16 v6, -0x40800000  # -1.0f

    .line 100
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    .line 103
    move-result v4

    .line 104
    :goto_67
    mul-float/2addr v3, v4

    .line 105
    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    .line 107
    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 110
    iget-object v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    .line 112
    neg-float v3, v3

    .line 113
    invoke-virtual {v4, v3, v5, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 116
    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    .line 118
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 125
    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    .line 127
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 130
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 133
    move-result-object v3

    .line 134
    neg-float v4, v0

    .line 135
    neg-int v5, v1

    .line 136
    int-to-float v5, v5

    .line 137
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 140
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 143
    move-result-object p2

    .line 144
    int-to-float v1, v1

    .line 145
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 151
    move-result p2

    .line 152
    if-ne p2, v2, :cond_9d

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 157
    goto :goto_a0

    .line 158
    :cond_9d
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 161
    :goto_a0
    return v2

    .line 162
    :cond_a1
    return v1
.end method

.method public getOverscrollAnimationDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 3
    return v0
.end method

.method public getOverscrollTranslation()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    .line 3
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    const-string v0, "BounceBackViewPager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    move-result v2

    .line 8
    and-int/lit16 v2, v2, 0xff

    .line 10
    if-eqz v2, :cond_20

    .line 12
    const/4 v3, 0x5

    .line 13
    if-eq v2, v3, :cond_f

    .line 15
    goto :goto_2c

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 19
    move-result v2

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v3

    .line 24
    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 29
    move-result v2

    .line 30
    iput v2, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 32
    goto :goto_2c

    .line 33
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    move-result v2

    .line 37
    iput v2, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 42
    move-result v2

    .line 43
    iput v2, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 45
    :goto_2c
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    move-result p1
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_30} :catch_3c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_30} :catch_31

    .line 49
    return p1

    .line 50
    :catch_31
    move-exception p1

    .line 51
    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return v1

    .line 61
    :catch_3c
    move-exception p1

    .line 62
    const-class v2, Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_ce

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v0, v2, :cond_c6

    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v0, v4, :cond_50

    .line 15
    const/4 v4, 0x3

    .line 16
    if-eq v0, v4, :cond_c6

    .line 18
    const/4 v3, 0x5

    .line 19
    if-eq v0, v3, :cond_3e

    .line 21
    const/4 v3, 0x6

    .line 22
    if-eq v0, v3, :cond_19

    .line 24
    goto/16 :goto_c4

    .line 26
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 29
    move-result v0

    .line 30
    const v3, 0xff00

    .line 33
    and-int/2addr v0, v3

    .line 34
    shr-int/lit8 v0, v0, 0x8

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 39
    move-result v3

    .line 40
    iget v4, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 42
    if-ne v3, v4, :cond_c4

    .line 44
    if-nez v0, :cond_2f

    .line 46
    move v0, v2

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v0, v1

    .line 49
    :goto_30
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 52
    move-result v3

    .line 53
    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 61
    goto/16 :goto_da

    .line 63
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 70
    move-result v3

    .line 71
    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 79
    goto/16 :goto_da

    .line 81
    :cond_50
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 83
    if-eq v0, v3, :cond_bf

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 92
    move-result v0

    .line 93
    iget v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    .line 95
    sub-float/2addr v3, v0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 99
    move-result v4

    .line 100
    int-to-float v4, v4

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    move-result v5

    .line 105
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPageMargin()I

    .line 108
    move-result v6

    .line 109
    add-int/2addr v6, v5

    .line 110
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Li1/a;

    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Li1/a;->getCount()I

    .line 117
    move-result v7

    .line 118
    sub-int/2addr v7, v2

    .line 119
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 122
    move-result v8

    .line 123
    add-int/lit8 v9, v8, -0x1

    .line 125
    mul-int/2addr v9, v6

    .line 126
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 129
    move-result v9

    .line 130
    int-to-float v9, v9

    .line 131
    add-int/2addr v8, v2

    .line 132
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    .line 135
    move-result v8

    .line 136
    mul-int/2addr v8, v6

    .line 137
    int-to-float v8, v8

    .line 138
    add-float/2addr v4, v3

    .line 139
    iget v10, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mScrollPositionOffset:F

    .line 141
    const/4 v11, 0x0

    .line 142
    cmpl-float v10, v10, v11

    .line 144
    if-nez v10, :cond_bc

    .line 146
    cmpg-float v0, v4, v9

    .line 148
    if-gez v0, :cond_a5

    .line 150
    cmpl-float v0, v9, v11

    .line 152
    if-nez v0, :cond_c4

    .line 154
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mTouchSlop:I

    .line 156
    int-to-float v0, v0

    .line 157
    add-float/2addr v3, v0

    .line 158
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 160
    int-to-float v4, v5

    .line 161
    div-float/2addr v3, v4

    .line 162
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    .line 165
    goto :goto_c4

    .line 166
    :cond_a5
    cmpl-float v0, v4, v8

    .line 168
    if-lez v0, :cond_c4

    .line 170
    mul-int/2addr v7, v6

    .line 171
    int-to-float v0, v7

    .line 172
    cmpl-float v0, v8, v0

    .line 174
    if-nez v0, :cond_c4

    .line 176
    sub-float/2addr v4, v8

    .line 177
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mTouchSlop:I

    .line 179
    int-to-float v0, v0

    .line 180
    sub-float/2addr v4, v0

    .line 181
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 183
    int-to-float v3, v5

    .line 184
    div-float/2addr v4, v3

    .line 185
    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    .line 188
    goto :goto_c4

    .line 189
    :cond_bc
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    .line 191
    goto :goto_c4

    .line 192
    :cond_bf
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 194
    invoke-static {v0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$700(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V

    .line 197
    :cond_c4
    :goto_c4
    move v0, v1

    .line 198
    goto :goto_db

    .line 199
    :cond_c6
    iput v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 201
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 203
    invoke-static {v0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$700(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V

    .line 206
    goto :goto_da

    .line 207
    :cond_ce
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 210
    move-result v0

    .line 211
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mLastMotionX:F

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 216
    move-result v0

    .line 217
    iput v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mActivePointerId:I

    .line 219
    :goto_da
    move v0, v2

    .line 220
    :goto_db
    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollEffect:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    .line 222
    invoke-static {v3}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$800(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)Z

    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_e5

    .line 228
    if-eqz v0, :cond_eb

    .line 230
    :cond_e5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_ec

    .line 236
    :cond_eb
    move v1, v2

    .line 237
    :cond_ec
    return v1
.end method

.method public setOverscrollAnimationDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 3
    return-void
.end method

.method public setOverscrollTranslation(I)V
    .registers 2

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager;->mOverscrollTranslation:F

    .line 4
    return-void
.end method
