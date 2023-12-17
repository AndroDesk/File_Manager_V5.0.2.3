.class public Lcom/android/fileexplorer/view/crop/MultiTouchImageView;
.super Landroid/widget/ImageView;
.source "MultiTouchImageView.java"


# static fields
.field private static final INIT_SCALE:I

.field private static final MAX_SCALE:F = 30.0f

.field private static final MIN_SCALE:F = 0.1f

.field private static final MODE_DRAG:I

.field private static final MODE_NONE:I

.field private static final MODE_ZOOM:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->INIT_SCALE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->MODE_DRAG:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->MODE_NONE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->MODE_ZOOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    new-instance p1, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;-><init>(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    new-instance p1, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;-><init>(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->checkScale()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->initPostion()V

    return-void
.end method

.method private center()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    if-eqz v0, :cond_44

    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_44

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0, v2, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_44
    return-void
.end method

.method private checkScale()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_20

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_84

    :cond_20
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v4, v1

    const v1, 0x3f8ccccd  # 1.1f

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v5, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_59

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_69

    goto :goto_68

    :cond_59
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_69

    :goto_68
    move v1, v0

    :cond_69
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setScale(F)V

    invoke-direct {p0, v1, v2, v4}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->scalePostion(FFF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->center()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_84
    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private initPostion()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->moveBy(FF)V

    return-void
.end method

.method private initScale()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v4, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_35

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_3f

    :cond_35
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    :goto_3f
    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setScale(F)V

    invoke-direct {p0, v0, v2, v4}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->scalePostion(FFF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->resetPostion()V

    return-void
.end method

.method private mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v3, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v3, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v0

    div-float/2addr p1, v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private moveBy(FF)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->initScale()V

    return-void
.end method

.method private resetPostion()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    if-eqz v0, :cond_be

    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    iget-object v0, v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v2, v3

    const/4 v5, 0x0

    if-gez v4, :cond_1f

    sub-float/2addr v3, v2

    goto :goto_20

    :cond_1f
    move v3, v5

    :goto_20
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v2, v4

    if-gez v6, :cond_2a

    sub-float/2addr v4, v2

    goto :goto_2b

    :cond_2a
    move v4, v5

    :goto_2b
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v2, v6

    if-lez v7, :cond_35

    sub-float v3, v6, v2

    :cond_35
    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v1, v2

    if-lez v6, :cond_3f

    sub-float v4, v2, v1

    :cond_3f
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v1, v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    if-gez v1, :cond_88

    iget v1, v0, Landroid/graphics/RectF;->right:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v5

    if-nez v4, :cond_80

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v4, v3

    sub-float v3, v1, v4

    :cond_80
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0, v3, v5}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    :cond_88
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_be

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v5

    if-nez v4, :cond_b6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    sub-float v3, v1, v3

    :cond_b6
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0, v5, v3}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    :cond_be
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private scalePostion(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, p2, p1, p2}, Lf0/e;->a(FFFF)F

    move-result p2

    iput p2, v0, Landroid/graphics/RectF;->right:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float p2, p3, p2

    mul-float/2addr p2, p1

    sub-float p2, p3, p2

    iput p2, v0, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p3, p1, p3}, Lf0/e;->a(FFFF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setScale(F)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    return-void
.end method

.method private translatePostion(FF)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_11d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_100

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_38

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1f

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1b

    goto/16 :goto_118

    :cond_1b
    iput v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    goto/16 :goto_118

    :cond_1f
    iput v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartDis:F

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/16 :goto_118

    :cond_38
    iget v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    if-ne v0, v1, :cond_73

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    goto/16 :goto_118

    :cond_73
    if-ne v0, v3, :cond_118

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iget v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartDis:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    const/high16 v3, 0x41f00000  # 30.0f

    cmpl-float v3, v2, v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-lez v3, :cond_8a

    cmpl-float v3, v0, v4

    if-gtz v3, :cond_cf

    :cond_8a
    const v3, 0x3dcccccd  # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_95

    cmpg-float v2, v0, v4

    if-ltz v2, :cond_cf

    :cond_95
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v4, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setScale(F)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v3, v2}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->scalePostion(FFF)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartDis:F

    :cond_cf
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0, v2, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->translatePostion(FF)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMidPoint:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_118

    :cond_f7
    iput v2, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->resetPostion()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->checkScale()V

    goto :goto_118

    :cond_100
    iput v1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMode:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_118
    :goto_118
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_11d
    return v1
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public setHighlightView(Lcom/android/fileexplorer/view/crop/HighlightCropView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->initPostion()V

    return-void
.end method
