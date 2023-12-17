.class public Lcom/github/chrisbanes/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/github/chrisbanes/photoview/OnGestureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_SCALE:F = 3.0f

.field private static DEFAULT_MID_SCALE:F = 1.75f

.field private static DEFAULT_MIN_SCALE:F = 1.0f

.field private static DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static final EDGE_BOTH:I = 0x2

.field private static final EDGE_LEFT:I = 0x0

.field private static final EDGE_NONE:I = -0x1

.field private static final EDGE_RIGHT:I = 0x1

.field private static SINGLE_TOUCH:I = 0x1


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOutsidePhotoTapListener:Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

.field private mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private mSingleFlingListener:Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mZoomDuration:I

.field private mZoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 6
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->DEFAULT_ZOOM_DURATION:I

    .line 13
    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 15
    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    .line 17
    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 19
    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->DEFAULT_MID_SCALE:F

    .line 21
    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMidScale:F

    .line 23
    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->DEFAULT_MAX_SCALE:F

    .line 25
    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 33
    new-instance v1, Landroid/graphics/Matrix;

    .line 35
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    .line 42
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v1, Landroid/graphics/Matrix;

    .line 49
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    .line 56
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 61
    const/16 v1, 0x9

    .line 63
    new-array v1, v1, [F

    .line 65
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 67
    const/4 v1, 0x2

    .line 68
    iput v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 70
    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 72
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 74
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 76
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5a

    .line 90
    return-void

    .line 91
    :cond_5a
    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 94
    new-instance v0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1, p0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/OnGestureListener;)V

    .line 103
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 105
    new-instance v0, Landroid/view/GestureDetector;

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    move-result-object p1

    .line 111
    new-instance v1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;

    .line 113
    invoke-direct {v1, p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V

    .line 116
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 119
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 121
    new-instance p1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;

    .line 123
    invoke-direct {p1, p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 129
    return-void
.end method

.method public static synthetic access$000(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnSingleFlingListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300()F
    .registers 1

    .line 1
    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    .line 3
    return v0
.end method

.method public static synthetic access$400()I
    .registers 1

    .line 1
    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    .line 3
    return v0
.end method

.method public static synthetic access$500(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnPhotoTapListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3
    return-object p0
.end method

.method private cancelFling()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    .line 11
    :cond_a
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 14
    :cond_d
    return-void
.end method

.method private checkMatrixBounds()Z
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_c

    .line 12
    return v1

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 23
    invoke-direct {p0, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    cmpg-float v5, v2, v4

    .line 30
    const/high16 v6, 0x40000000  # 2.0f

    .line 32
    const/4 v7, 0x3

    .line 33
    const/4 v8, 0x2

    .line 34
    const/4 v9, 0x0

    .line 35
    if-gtz v5, :cond_3f

    .line 37
    sget-object v5, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 39
    iget-object v10, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 41
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result v10

    .line 45
    aget v5, v5, v10

    .line 47
    if-eq v5, v8, :cond_3c

    .line 49
    if-eq v5, v7, :cond_37

    .line 51
    sub-float/2addr v4, v2

    .line 52
    div-float/2addr v4, v6

    .line 53
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 55
    goto :goto_3a

    .line 56
    :cond_37
    sub-float/2addr v4, v2

    .line 57
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 59
    :goto_3a
    sub-float/2addr v4, v2

    .line 60
    goto :goto_4f

    .line 61
    :cond_3c
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 63
    goto :goto_45

    .line 64
    :cond_3f
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 66
    cmpl-float v5, v2, v9

    .line 68
    if-lez v5, :cond_47

    .line 70
    :goto_45
    neg-float v4, v2

    .line 71
    goto :goto_4f

    .line 72
    :cond_47
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 74
    cmpg-float v5, v2, v4

    .line 76
    if-gez v5, :cond_4e

    .line 78
    goto :goto_3a

    .line 79
    :cond_4e
    move v4, v9

    .line 80
    :goto_4f
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 82
    invoke-direct {p0, v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    .line 85
    move-result v2

    .line 86
    int-to-float v2, v2

    .line 87
    cmpg-float v5, v3, v2

    .line 89
    const/4 v10, 0x1

    .line 90
    if-gtz v5, :cond_7b

    .line 92
    sget-object v1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 94
    iget-object v5, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 96
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 99
    move-result v5

    .line 100
    aget v1, v1, v5

    .line 102
    if-eq v1, v8, :cond_74

    .line 104
    if-eq v1, v7, :cond_6e

    .line 106
    sub-float/2addr v2, v3

    .line 107
    div-float/2addr v2, v6

    .line 108
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 110
    goto :goto_71

    .line 111
    :cond_6e
    sub-float/2addr v2, v3

    .line 112
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 114
    :goto_71
    sub-float/2addr v2, v0

    .line 115
    move v9, v2

    .line 116
    goto :goto_78

    .line 117
    :cond_74
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 119
    neg-float v0, v0

    .line 120
    move v9, v0

    .line 121
    :goto_78
    iput v8, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 123
    goto :goto_93

    .line 124
    :cond_7b
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 126
    cmpl-float v5, v3, v9

    .line 128
    if-lez v5, :cond_85

    .line 130
    iput v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 132
    neg-float v9, v3

    .line 133
    goto :goto_93

    .line 134
    :cond_85
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 136
    cmpg-float v1, v0, v2

    .line 138
    if-gez v1, :cond_90

    .line 140
    sub-float v9, v2, v0

    .line 142
    iput v10, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 144
    goto :goto_93

    .line 145
    :cond_90
    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 148
    :goto_93
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 150
    invoke-virtual {v0, v9, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 153
    return v10
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 6

    .line 3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 4
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 3
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 10
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 15
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 17
    return-object v0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    move-result p1

    .line 14
    sub-int/2addr v0, p1

    .line 15
    return v0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result p1

    .line 14
    sub-int/2addr v0, p1

    .line 15
    return v0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 8
    aget p1, p1, p2

    .line 10
    return p1
.end method

.method private resetMatrix()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 8
    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 11
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 18
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 21
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_14

    .line 16
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

    .line 18
    invoke-interface {v0, p1}, Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 21
    :cond_14
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .registers 10

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 6
    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 13
    invoke-direct {p0, v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 25
    move-result p1

    .line 26
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 28
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 31
    int-to-float v2, v2

    .line 32
    div-float v3, v0, v2

    .line 34
    int-to-float p1, p1

    .line 35
    div-float v4, v1, p1

    .line 37
    iget-object v5, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 39
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 41
    const/high16 v7, 0x40000000  # 2.0f

    .line 43
    if-ne v5, v6, :cond_37

    .line 45
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 47
    sub-float/2addr v0, v2

    .line 48
    div-float/2addr v0, v7

    .line 49
    sub-float/2addr v1, p1

    .line 50
    div-float/2addr v1, v7

    .line 51
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 54
    goto/16 :goto_bc

    .line 56
    :cond_37
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 58
    if-ne v5, v6, :cond_50

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 66
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 69
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 71
    mul-float/2addr v2, v3

    .line 72
    sub-float/2addr v0, v2

    .line 73
    div-float/2addr v0, v7

    .line 74
    mul-float/2addr p1, v3

    .line 75
    sub-float/2addr v1, p1

    .line 76
    div-float/2addr v1, v7

    .line 77
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 80
    goto :goto_bc

    .line 81
    :cond_50
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 83
    if-ne v5, v6, :cond_6f

    .line 85
    const/high16 v5, 0x3f800000  # 1.0f

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 90
    move-result v3

    .line 91
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 94
    move-result v3

    .line 95
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 97
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 100
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 102
    mul-float/2addr v2, v3

    .line 103
    sub-float/2addr v0, v2

    .line 104
    div-float/2addr v0, v7

    .line 105
    mul-float/2addr p1, v3

    .line 106
    sub-float/2addr v1, p1

    .line 107
    div-float/2addr v1, v7

    .line 108
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    goto :goto_bc

    .line 112
    :cond_6f
    new-instance v3, Landroid/graphics/RectF;

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 118
    new-instance v5, Landroid/graphics/RectF;

    .line 120
    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 123
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 125
    float-to-int v0, v0

    .line 126
    rem-int/lit16 v0, v0, 0xb4

    .line 128
    if-eqz v0, :cond_86

    .line 130
    new-instance v3, Landroid/graphics/RectF;

    .line 132
    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 135
    :cond_86
    sget-object p1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 137
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 142
    move-result v0

    .line 143
    aget p1, p1, v0

    .line 145
    const/4 v0, 0x1

    .line 146
    if-eq p1, v0, :cond_b5

    .line 148
    const/4 v0, 0x2

    .line 149
    if-eq p1, v0, :cond_ad

    .line 151
    const/4 v0, 0x3

    .line 152
    if-eq p1, v0, :cond_a5

    .line 154
    const/4 v0, 0x4

    .line 155
    if-eq p1, v0, :cond_9d

    .line 157
    goto :goto_bc

    .line 158
    :cond_9d
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 160
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 162
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 165
    goto :goto_bc

    .line 166
    :cond_a5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 168
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 170
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 173
    goto :goto_bc

    .line 174
    :cond_ad
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 176
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 178
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 181
    goto :goto_bc

    .line 182
    :cond_b5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 184
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 186
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 189
    :goto_bc
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->resetMatrix()V

    .line 192
    return-void
.end method


# virtual methods
.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 2
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 3
    return-object v0
.end method

.method public getMaximumScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 3
    return v0
.end method

.method public getMediumScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMidScale:F

    .line 3
    return v0
.end method

.method public getMinimumScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 3
    return v0
.end method

.method public getScale()F
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    .line 7
    move-result v0

    .line 8
    float-to-double v0, v0

    .line 9
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 14
    move-result-wide v0

    .line 15
    double-to-float v0, v0

    .line 16
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 18
    const/4 v4, 0x3

    .line 19
    invoke-direct {p0, v1, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    .line 22
    move-result v1

    .line 23
    float-to-double v4, v1

    .line 24
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 27
    move-result-wide v1

    .line 28
    double-to-float v1, v1

    .line 29
    add-float/2addr v0, v1

    .line 30
    float-to-double v0, v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    move-result-wide v0

    .line 35
    double-to-float v0, v0

    .line 36
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    return-void
.end method

.method public isZoomEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 3
    return v0
.end method

.method public onDrag(FF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->isScaling()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 15
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 18
    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object p2

    .line 24
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz v0, :cond_44

    .line 29
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 31
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->isScaling()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_44

    .line 37
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 39
    if-nez v0, :cond_44

    .line 41
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 43
    const/4 v2, 0x2

    .line 44
    if-eq v0, v2, :cond_3d

    .line 46
    if-nez v0, :cond_35

    .line 48
    const/high16 v2, 0x3f800000  # 1.0f

    .line 50
    cmpl-float v2, p1, v2

    .line 52
    if-gez v2, :cond_3d

    .line 54
    :cond_35
    if-ne v0, v1, :cond_49

    .line 56
    const/high16 v0, -0x40800000  # -1.0f

    .line 58
    cmpg-float p1, p1, v0

    .line 60
    if-gtz p1, :cond_49

    .line 62
    :cond_3d
    if-eqz p2, :cond_49

    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 68
    goto :goto_49

    .line 69
    :cond_44
    if-eqz p2, :cond_49

    .line 71
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 74
    :cond_49
    :goto_49
    return-void
.end method

.method public onFling(FFFF)V
    .registers 6

    .line 1
    new-instance p1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    .line 3
    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p1, p0, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    .line 12
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    .line 14
    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 16
    invoke-direct {p0, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    .line 19
    move-result p2

    .line 20
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 22
    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    .line 25
    move-result v0

    .line 26
    float-to-int p3, p3

    .line 27
    float-to-int p4, p4

    .line 28
    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 31
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 33
    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
.end method

.method public onScale(FFF)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 7
    cmpg-float v0, v0, v1

    .line 9
    const/high16 v1, 0x3f800000  # 1.0f

    .line 11
    if-ltz v0, :cond_10

    .line 13
    cmpg-float v0, p1, v1

    .line 15
    if-gez v0, :cond_2d

    .line 17
    :cond_10
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 20
    move-result v0

    .line 21
    iget v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 23
    cmpl-float v0, v0, v2

    .line 25
    if-gtz v0, :cond_1e

    .line 27
    cmpl-float v0, p1, v1

    .line 29
    if-lez v0, :cond_2d

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

    .line 33
    if-eqz v0, :cond_25

    .line 35
    invoke-interface {v0, p1, p2, p3}, Lcom/github/chrisbanes/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 40
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 43
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 46
    :cond_2d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_95

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_95

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_45

    .line 22
    if-eq v0, v2, :cond_1b

    .line 24
    const/4 v3, 0x3

    .line 25
    if-eq v0, v3, :cond_1b

    .line 27
    goto :goto_51

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 31
    move-result v0

    .line 32
    iget v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 34
    cmpg-float v0, v0, v3

    .line 36
    if-gez v0, :cond_51

    .line 38
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_51

    .line 44
    new-instance v9, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    .line 46
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 49
    move-result v5

    .line 50
    iget v6, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 52
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 55
    move-result v7

    .line 56
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 59
    move-result v8

    .line 60
    move-object v3, v9

    .line 61
    move-object v4, p0

    .line 62
    invoke-direct/range {v3 .. v8}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;FFFF)V

    .line 65
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    move p1, v2

    .line 69
    goto :goto_52

    .line 70
    :cond_45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_4e

    .line 76
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 79
    :cond_4e
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->cancelFling()V

    .line 82
    :cond_51
    :goto_51
    move p1, v1

    .line 83
    :goto_52
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 85
    if-eqz v0, :cond_89

    .line 87
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->isScaling()Z

    .line 90
    move-result p1

    .line 91
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 93
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->isDragging()Z

    .line 96
    move-result v0

    .line 97
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 99
    invoke-virtual {v3, p2}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 102
    move-result v3

    .line 103
    if-nez p1, :cond_72

    .line 105
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 107
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->isScaling()Z

    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_72

    .line 113
    move p1, v2

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move p1, v1

    .line 116
    :goto_73
    if-nez v0, :cond_7f

    .line 118
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 120
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->isDragging()Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_7f

    .line 126
    move v0, v2

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move v0, v1

    .line 129
    :goto_80
    if-eqz p1, :cond_85

    .line 131
    if-eqz v0, :cond_85

    .line 133
    move v1, v2

    .line 134
    :cond_85
    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 136
    move v1, v3

    .line 137
    goto :goto_8a

    .line 138
    :cond_89
    move v1, p1

    .line 139
    :goto_8a
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 141
    if-eqz p1, :cond_95

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_95

    .line 149
    move v1, v2

    .line 150
    :cond_95
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 3
    return-void
.end method

.method public setBaseRotation(F)V
    .registers 3

    .line 1
    const/high16 v0, 0x43b40000  # 360.0f

    .line 3
    rem-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 6
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    .line 9
    iget p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 11
    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 14
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 17
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_1d

    .line 3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 18
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 25
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string v0, "Matrix cannot be null"

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public setMaximumScale(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 3
    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMidScale:F

    .line 5
    invoke-static {v0, v1, p1}, Lcom/github/chrisbanes/photoview/Util;->checkZoomLevels(FFF)V

    .line 8
    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 10
    return-void
.end method

.method public setMediumScale(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 3
    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 5
    invoke-static {v0, p1, v1}, Lcom/github/chrisbanes/photoview/Util;->checkZoomLevels(FFF)V

    .line 8
    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMidScale:F

    .line 10
    return-void
.end method

.method public setMinimumScale(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMidScale:F

    .line 3
    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 5
    invoke-static {p1, v0, v1}, Lcom/github/chrisbanes/photoview/Util;->checkZoomLevels(FFF)V

    .line 8
    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 10
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 6
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

    .line 3
    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    .line 3
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    .line 3
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

    .line 3
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/github/chrisbanes/photoview/OnSingleFlingListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    .line 3
    return-void
.end method

.method public setRotationBy(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 3
    const/high16 v1, 0x43b40000  # 360.0f

    .line 5
    rem-float/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 9
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 12
    return-void
.end method

.method public setRotationTo(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 3
    const/high16 v1, 0x43b40000  # 360.0f

    .line 5
    rem-float/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 9
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 12
    return-void
.end method

.method public setScale(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .registers 12

    .line 6
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2b

    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2b

    if-eqz p4, :cond_22

    .line 7
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 8
    :cond_22
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 9
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_2a
    return-void

    .line 10
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(FZ)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/github/chrisbanes/photoview/Util;->checkZoomLevels(FFF)V

    .line 4
    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMinScale:F

    .line 6
    iput p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMidScale:F

    .line 8
    iput p3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 10
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/chrisbanes/photoview/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 9
    if-eq p1, v0, :cond_f

    .line 11
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 13
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    .line 16
    :cond_f
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 3
    return-void
.end method

.method public setZoomable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 3
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    .line 6
    return-void
.end method

.method public update()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->resetMatrix()V

    .line 18
    :goto_11
    return-void
.end method
