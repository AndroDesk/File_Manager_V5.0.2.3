.class public Lcom/android/fileexplorer/view/crop/MultiTouchImageView;
.super Landroid/widget/ImageView;
.source "MultiTouchImageView.java"


# static fields
.field private static final INIT_SCALE:I = 0x1

.field private static final MAX_SCALE:F = 30.0f

.field private static final MIN_SCALE:F = 0.1f

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_ZOOM:I = 0x2

.field private static final SCALE_ANIM:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field public mDrawRect:Landroid/graphics/RectF;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMidPoint:Landroid/graphics/PointF;

.field private mMode:I

.field public mScale:F

.field private mStartDis:F

.field private mStartPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 11
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 12
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    .line 14
    new-instance p1, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;-><init>(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 5
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    .line 7
    new-instance p1, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;-><init>(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->checkScale()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->initPostion()V

    .line 4
    return-void
.end method

.method private center()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 3
    if-eqz v0, :cond_44

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 7
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 12
    move-result v2

    .line 13
    const/high16 v3, 0x40000000  # 2.0f

    .line 15
    div-float/2addr v2, v3

    .line 16
    sub-float/2addr v1, v2

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 19
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 21
    sub-float/2addr v1, v4

    .line 22
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 25
    move-result v2

    .line 26
    div-float/2addr v2, v3

    .line 27
    add-float/2addr v2, v1

    .line 28
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 30
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 33
    move-result v0

    .line 34
    div-float/2addr v0, v3

    .line 35
    sub-float/2addr v1, v0

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 38
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 40
    sub-float/2addr v1, v4

    .line 41
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 44
    move-result v0

    .line 45
    div-float/2addr v0, v3

    .line 46
    add-float/2addr v0, v1

    .line 47
    const/4 v1, 0x0

    .line 48
    cmpl-float v3, v2, v1

    .line 50
    if-eqz v3, :cond_44

    .line 52
    cmpl-float v1, v0, v1

    .line 54
    if-eqz v1, :cond_44

    .line 56
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 58
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 61
    invoke-direct {p0, v2, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 69
    :cond_44
    return-void
.end method

.method private checkScale()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 14
    move-result v2

    .line 15
    cmpl-float v1, v1, v2

    .line 17
    if-gtz v1, :cond_20

    .line 19
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 25
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 28
    move-result v2

    .line 29
    cmpl-float v1, v1, v2

    .line 31
    if-lez v1, :cond_84

    .line 33
    :cond_20
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 35
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 37
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 40
    move-result v1

    .line 41
    const/high16 v3, 0x40000000  # 2.0f

    .line 43
    div-float/2addr v1, v3

    .line 44
    sub-float/2addr v2, v1

    .line 45
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 47
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 49
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 52
    move-result v1

    .line 53
    div-float/2addr v1, v3

    .line 54
    sub-float/2addr v4, v1

    .line 55
    const v1, 0x3f8ccccd  # 1.1f

    .line 58
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 60
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 63
    move-result v3

    .line 64
    iget-object v5, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 66
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 69
    move-result v5

    .line 70
    cmpl-float v3, v3, v5

    .line 72
    if-lez v3, :cond_59

    .line 74
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 77
    move-result v0

    .line 78
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 80
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 83
    move-result v3

    .line 84
    div-float/2addr v0, v3

    .line 85
    cmpg-float v3, v0, v1

    .line 87
    if-gez v3, :cond_69

    .line 89
    goto :goto_68

    .line 90
    :cond_59
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 93
    move-result v0

    .line 94
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 96
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 99
    move-result v3

    .line 100
    div-float/2addr v0, v3

    .line 101
    cmpg-float v3, v0, v1

    .line 103
    if-gez v3, :cond_69

    .line 105
    :goto_68
    move v1, v0

    .line 106
    :cond_69
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 108
    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 111
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setScale(F)V

    .line 114
    invoke-direct {p0, v1, v2, v4}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->scalePostion(FFF)V

    .line 117
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 122
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->center()V

    .line 125
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    .line 127
    const/4 v1, 0x0

    .line 128
    const-wide/16 v2, 0xa

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    :cond_84
    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 10
    move-result v3

    .line 11
    sub-float/2addr v1, v3

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 19
    move-result p1

    .line 20
    sub-float/2addr v0, p1

    .line 21
    mul-float/2addr v1, v1

    .line 22
    mul-float/2addr v0, v0

    .line 23
    add-float/2addr v0, v1

    .line 24
    float-to-double v0, v0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    move-result-wide v0

    .line 29
    double-to-float p1, v0

    .line 30
    return p1
.end method

.method private initPostion()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 5
    if-nez v0, :cond_f

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    .line 9
    const/4 v1, 0x1

    .line 10
    const-wide/16 v2, 0x32

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    new-instance v4, Landroid/graphics/RectF;

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-direct {v4, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    iput-object v4, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 48
    sub-float/2addr v0, v2

    .line 49
    const/high16 v2, 0x40000000  # 2.0f

    .line 51
    div-float/2addr v0, v2

    .line 52
    sub-float/2addr v1, v3

    .line 53
    div-float/2addr v1, v2

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->moveBy(FF)V

    .line 57
    return-void
.end method

.method private initScale()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 7
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 9
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 12
    move-result v1

    .line 13
    const/high16 v3, 0x40000000  # 2.0f

    .line 15
    div-float/2addr v1, v3

    .line 16
    sub-float/2addr v2, v1

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 19
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 21
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 24
    move-result v1

    .line 25
    div-float/2addr v1, v3

    .line 26
    sub-float/2addr v4, v1

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 29
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 32
    move-result v1

    .line 33
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 35
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 38
    move-result v3

    .line 39
    cmpl-float v1, v1, v3

    .line 41
    if-lez v1, :cond_35

    .line 43
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 49
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 52
    move-result v1

    .line 53
    goto :goto_3f

    .line 54
    :cond_35
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 57
    move-result v0

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 60
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 63
    move-result v1

    .line 64
    :goto_3f
    div-float/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 67
    invoke-virtual {v1, v0, v0, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 70
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setScale(F)V

    .line 73
    invoke-direct {p0, v0, v2, v4}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->scalePostion(FFF)V

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 81
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->resetPostion()V

    .line 84
    return-void
.end method

.method private mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 10
    move-result v3

    .line 11
    add-float/2addr v3, v1

    .line 12
    const/high16 v1, 0x40000000  # 2.0f

    .line 14
    div-float/2addr v3, v1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 22
    move-result p1

    .line 23
    add-float/2addr p1, v0

    .line 24
    div-float/2addr p1, v1

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    .line 27
    invoke-direct {v0, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 30
    return-object v0
.end method

.method private moveBy(FF)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->initScale()V

    .line 33
    return-void
.end method

.method private resetPostion()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 3
    if-eqz v0, :cond_be

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_be

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 17
    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 21
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 23
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 25
    cmpg-float v4, v2, v3

    .line 27
    const/4 v5, 0x0

    .line 28
    if-gez v4, :cond_1f

    .line 30
    sub-float/2addr v3, v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v3, v5

    .line 33
    :goto_20
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 35
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 37
    cmpg-float v6, v2, v4

    .line 39
    if-gez v6, :cond_2a

    .line 41
    sub-float/2addr v4, v2

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v4, v5

    .line 44
    :goto_2b
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 46
    iget v6, v0, Landroid/graphics/RectF;->left:F

    .line 48
    cmpl-float v7, v2, v6

    .line 50
    if-lez v7, :cond_35

    .line 52
    sub-float v3, v6, v2

    .line 54
    :cond_35
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 56
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 58
    cmpl-float v6, v1, v2

    .line 60
    if-lez v6, :cond_3f

    .line 62
    sub-float v4, v2, v1

    .line 64
    :cond_3f
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 73
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 75
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    .line 81
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 83
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 90
    move-result v2

    .line 91
    cmpg-float v1, v1, v2

    .line 93
    const/high16 v2, 0x40000000  # 2.0f

    .line 95
    if-gez v1, :cond_88

    .line 97
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 99
    div-float v3, v1, v2

    .line 101
    iget-object v4, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 103
    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 105
    div-float/2addr v4, v2

    .line 106
    sub-float/2addr v3, v4

    .line 107
    cmpl-float v4, v3, v5

    .line 109
    if-nez v4, :cond_80

    .line 111
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 114
    move-result v3

    .line 115
    div-float/2addr v3, v2

    .line 116
    sub-float/2addr v1, v3

    .line 117
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 119
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 121
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 124
    move-result v3

    .line 125
    div-float/2addr v3, v2

    .line 126
    sub-float/2addr v4, v3

    .line 127
    sub-float v3, v1, v4

    .line 129
    :cond_80
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 131
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    invoke-direct {p0, v3, v5}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    .line 137
    :cond_88
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 139
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 146
    move-result v3

    .line 147
    cmpg-float v1, v1, v3

    .line 149
    if-gez v1, :cond_be

    .line 151
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 153
    div-float v3, v1, v2

    .line 155
    iget-object v4, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 157
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 159
    div-float/2addr v4, v2

    .line 160
    sub-float/2addr v3, v4

    .line 161
    cmpl-float v4, v3, v5

    .line 163
    if-nez v4, :cond_b6

    .line 165
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 168
    move-result v0

    .line 169
    div-float/2addr v0, v2

    .line 170
    sub-float/2addr v1, v0

    .line 171
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 173
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 175
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 178
    move-result v0

    .line 179
    div-float/2addr v0, v2

    .line 180
    sub-float/2addr v3, v0

    .line 181
    sub-float v3, v1, v3

    .line 183
    :cond_b6
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 185
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    invoke-direct {p0, v5, v3}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    .line 191
    :cond_be
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 193
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 196
    return-void
.end method

.method private scalePostion(FFF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    sub-float v1, p2, v1

    .line 7
    mul-float/2addr v1, p1

    .line 8
    sub-float v1, p2, v1

    .line 10
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 12
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 14
    invoke-static {v1, p2, p1, p2}, Lf0/e;->a(FFFF)F

    .line 17
    move-result p2

    .line 18
    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 20
    iget p2, v0, Landroid/graphics/RectF;->top:F

    .line 22
    sub-float p2, p3, p2

    .line 24
    mul-float/2addr p2, p1

    .line 25
    sub-float p2, p3, p2

    .line 27
    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 29
    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 31
    invoke-static {p2, p3, p1, p3}, Lf0/e;->a(FFFF)F

    .line 34
    move-result p1

    .line 35
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 37
    return-void
.end method

.method private setScale(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    .line 3
    mul-float/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    .line 6
    return-void
.end method

.method private translatePostion(FF)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    add-float/2addr v1, p1

    .line 6
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 8
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 10
    add-float/2addr v1, p2

    .line 11
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 13
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 15
    add-float/2addr v1, p1

    .line 16
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 18
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 20
    add-float/2addr p1, p2

    .line 21
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 23
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_11d

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v0

    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 12
    if-eqz v0, :cond_100

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq v0, v1, :cond_f7

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v0, v3, :cond_38

    .line 20
    const/4 v4, 0x5

    .line 21
    if-eq v0, v4, :cond_1f

    .line 23
    const/4 p1, 0x6

    .line 24
    if-eq v0, p1, :cond_1b

    .line 26
    goto/16 :goto_118

    .line 28
    :cond_1b
    iput v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    .line 30
    goto/16 :goto_118

    .line 32
    :cond_1f
    iput v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->distance(Landroid/view/MotionEvent;)F

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartDis:F

    .line 40
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 55
    goto/16 :goto_118

    .line 57
    :cond_38
    iget v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    .line 59
    if-ne v0, v1, :cond_73

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 64
    move-result v0

    .line 65
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 67
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 69
    sub-float/2addr v0, v2

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 73
    move-result v2

    .line 74
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 76
    iget v4, v3, Landroid/graphics/PointF;->y:F

    .line 78
    sub-float/2addr v2, v4

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 82
    move-result v4

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 86
    move-result p1

    .line 87
    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 90
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 92
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 99
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 101
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 103
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 108
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    .line 114
    goto/16 :goto_118

    .line 116
    :cond_73
    if-ne v0, v3, :cond_118

    .line 118
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->distance(Landroid/view/MotionEvent;)F

    .line 121
    move-result v0

    .line 122
    iget v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartDis:F

    .line 124
    div-float/2addr v0, v2

    .line 125
    iget v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    .line 127
    const/high16 v3, 0x41f00000  # 30.0f

    .line 129
    cmpl-float v3, v2, v3

    .line 131
    const/high16 v4, 0x3f800000  # 1.0f

    .line 133
    if-lez v3, :cond_8a

    .line 135
    cmpl-float v3, v0, v4

    .line 137
    if-gtz v3, :cond_cf

    .line 139
    :cond_8a
    const v3, 0x3dcccccd  # 0.1f

    .line 142
    cmpg-float v2, v2, v3

    .line 144
    if-gez v2, :cond_95

    .line 146
    cmpg-float v2, v0, v4

    .line 148
    if-ltz v2, :cond_cf

    .line 150
    :cond_95
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 155
    move-result v3

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 159
    move-result v4

    .line 160
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 163
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 165
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 172
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 174
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 176
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 179
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 181
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 183
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 185
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 187
    invoke-virtual {v2, v0, v0, v4, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 190
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setScale(F)V

    .line 193
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 195
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 197
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 199
    invoke-direct {p0, v0, v3, v2}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->scalePostion(FFF)V

    .line 202
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->distance(Landroid/view/MotionEvent;)F

    .line 205
    move-result v0

    .line 206
    iput v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartDis:F

    .line 208
    :cond_cf
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 211
    move-result-object v0

    .line 212
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 214
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 216
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 218
    sub-float/2addr v2, v4

    .line 219
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 221
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 223
    sub-float/2addr v0, v3

    .line 224
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 226
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 229
    invoke-direct {p0, v2, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 235
    move-result-object p1

    .line 236
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 238
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 240
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 247
    goto :goto_118

    .line 248
    :cond_f7
    iput v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    .line 250
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->resetPostion()V

    .line 253
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->checkScale()V

    .line 256
    goto :goto_118

    .line 257
    :cond_100
    iput v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    .line 259
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 261
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 268
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 273
    move-result v2

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 277
    move-result p1

    .line 278
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 281
    :cond_118
    :goto_118
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 286
    :cond_11d
    return v1
.end method

.method public release()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    :cond_8
    return-void
.end method

.method public setHighlightView(Lcom/android/fileexplorer/view/crop/HighlightCropView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 3
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->initPostion()V

    .line 9
    return-void
.end method
