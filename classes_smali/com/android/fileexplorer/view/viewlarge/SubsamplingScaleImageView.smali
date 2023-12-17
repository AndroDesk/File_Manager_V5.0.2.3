.class public Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;
.super Landroid/view/View;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    }
.end annotation


# static fields
.field public static final EASE_IN_OUT_QUAD:I = 0x2

.field public static final EASE_OUT_QUAD:I = 0x1

.field private static final MESSAGE_LONG_CLICK:I = 0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final ORIENTATION_USE_EXIF:I = -0x1

.field public static final PAN_LIMIT_CENTER:I = 0x3

.field public static final PAN_LIMIT_INSIDE:I = 0x1

.field public static final PAN_LIMIT_OUTSIDE:I = 0x2

.field public static final SCALE_TYPE_CENTER_CROP:I = 0x2

.field public static final SCALE_TYPE_CENTER_INSIDE:I = 0x1

.field public static final SCALE_TYPE_CUSTOM:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_EASING_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ORIENTATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_PAN_LIMITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_SCALE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ZOOM_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_FOCUS_CENTER:I = 0x2

.field public static final ZOOM_FOCUS_CENTER_IMMEDIATE:I = 0x3

.field public static final ZOOM_FOCUS_FIXED:I = 0x1


# instance fields
.field private final QUICK_SCALE_THRESHOLD:F

.field public final decoderLock:Ljava/lang/Object;

.field private isPanning:Z

.field private isQuickScaling:Z

.field private isZooming:Z

.field private mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory<",
            "+",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mDebug:Z

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

.field private mDetector:Landroid/view/GestureDetector;

.field private mDoubleTapZoomScale:F

.field private mDoubleTapZoomStyle:I

.field private mDstArray:[F

.field private mFullImageSampleSize:I

.field private mHandler:Landroid/os/Handler;

.field private mImageLoadedSent:Z

.field private mInitHeight:I

.field private mInitWidth:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxScale:F

.field private mMaxTouchCount:I

.field private mMinScale:F

.field private mMinimumScaleType:I

.field private mMinimumTileDpi:I

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOrientation:I

.field private mPRegion:Landroid/graphics/Rect;

.field private mPanEnabled:Z

.field private mPanLimit:I

.field private mPendingScale:Ljava/lang/Float;

.field private mPreview:Z

.field private mQuickScaleCenter:Landroid/graphics/PointF;

.field private mQuickScaleEnabled:Z

.field private mQuickScaleLastDistance:F

.field private mQuickScaleLastPoint:Landroid/graphics/PointF;

.field private mQuickScaleMoved:Z

.field private mReadySent:Z

.field private mSHeight:I

.field private mSOrientation:I

.field private mSPendingCenter:Landroid/graphics/PointF;

.field private mSRect:Landroid/graphics/RectF;

.field private mSRequestedCenter:Landroid/graphics/PointF;

.field private mSWidth:I

.field private mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

.field private mScale:F

.field private mScaleStart:F

.field private mSrcArray:[F

.field private mTileBgPaint:Landroid/graphics/Paint;

.field private mTileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/viewlarge/struct/Tile;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVCenterStart:Landroid/graphics/PointF;

.field private mVDistStart:F

.field private mVTranslate:Landroid/graphics/PointF;

.field private mVTranslateStart:Landroid/graphics/PointF;

.field private mZoomEnabled:Z

.field public onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

.field public sRegion:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-class v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    const-string v0, "SubsamplingScaleImageView"

    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v0, v3

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v2, v0, v5

    const/16 v2, 0x10e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v2, v0, v7

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    aput-object v8, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    const/high16 v1, 0x40000000  # 2.0f

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumScaleType:I

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    const/high16 v2, 0x40400000  # 3.0f

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomStyle:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;

    const-class v3, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageDecoder;

    invoke-direct {v2, v3}, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/16 v2, 0x8

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSrcArray:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    const/16 v2, 0xa0

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMinimumDpi(I)V

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_d4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/fileexplorer/R$styleable;->SubsamplingScaleImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7e

    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->asset(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tilingEnabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    :cond_7e
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_96

    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->resource(I)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tilingEnabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    :cond_96
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setPanEnabled(Z)V

    :cond_a3
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    :cond_b1
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    :cond_bf
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setTileBackgroundColor(I)V

    :cond_d1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d4
    const/high16 p2, 0x41a00000  # 20.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->QUICK_SCALE_THRESHOLD:F

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$1502(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$1602(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    return p1
.end method

.method public static synthetic access$1702(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    return p1
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$1902(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    return p1
.end method

.method public static synthetic access$2002(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$201(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static synthetic access$2102(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    return p1
.end method

.method public static synthetic access$2200(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic access$2600()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$2700(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedScale(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$2800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    return-object p0
.end method

.method public static synthetic access$2902(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/struct/Anim;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    return-object p1
.end method

.method public static synthetic access$3000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    return-void
.end method

.method public static synthetic access$301(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    return p0
.end method

.method private calMaxScale()F
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    mul-float/2addr v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private calculateInSampleSize()I
    .registers 7

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    if-lez v1, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    mul-float/2addr v0, v1

    :cond_1d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_55

    if-nez v0, :cond_31

    goto :goto_55

    :cond_31
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    if-gt v3, v0, :cond_3d

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v3

    if-le v3, v1, :cond_54

    :cond_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    :goto_49
    div-int v5, v3, v2

    if-le v5, v0, :cond_54

    div-int v5, v4, v2

    if-le v5, v1, :cond_54

    mul-int/lit8 v2, v2, 0x2

    goto :goto_49

    :cond_54
    return v2

    :cond_55
    :goto_55
    const/16 v0, 0x20

    return v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_b

    if-le p0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    goto :goto_1c

    :cond_b
    :goto_b
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_1c

    move p0, p2

    :cond_1c
    :goto_1c
    return p0
.end method

.method private createPaints()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_19

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    if-eqz v0, :cond_3c

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000  # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3c
    return-void
.end method

.method private distance(FFFF)F
    .registers 5

    sub-float/2addr p1, p2

    sub-float/2addr p3, p4

    mul-float/2addr p1, p1

    mul-float/2addr p3, p3

    add-float/2addr p3, p1

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 14

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    const/4 v1, 0x2

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_12

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_22

    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v0

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    float-to-double v2, v2

    float-to-double v4, v0

    const-wide v6, 0x3feccccccccccccdL  # 0.9

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_3b

    move v2, v3

    goto :goto_3c

    :cond_3b
    move v2, v4

    :goto_3c
    if-eqz v2, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v0

    :goto_43
    move v7, v0

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomStyle:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4d

    invoke-virtual {p0, v7, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setScaleAndCenter(FLandroid/graphics/PointF;)V

    goto :goto_77

    :cond_4d
    if-eq v0, v1, :cond_6a

    if-eqz v2, :cond_6a

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    if-nez v1, :cond_56

    goto :goto_6a

    :cond_56
    if-ne v0, v3, :cond_77

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->start()V

    goto :goto_77

    :cond_6a
    :goto_6a
    new-instance p2, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v7, p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    invoke-virtual {p2, v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->start()V

    :cond_77
    :goto_77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private ease(IJFFJ)F
    .registers 15

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->easeInOutQuad(JFFJ)F

    move-result p1

    return p1

    :cond_10
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected easing type: "

    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1c
    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->easeOutQuad(JFFJ)F

    move-result p1

    return p1
.end method

.method private easeInOutQuad(JFFJ)F
    .registers 7

    long-to-float p1, p1

    long-to-float p2, p5

    const/high16 p5, 0x40000000  # 2.0f

    div-float/2addr p2, p5

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    cmpg-float p6, p1, p2

    if-gez p6, :cond_11

    div-float/2addr p4, p5

    mul-float/2addr p4, p1

    mul-float/2addr p4, p1

    add-float/2addr p4, p3

    return p4

    :cond_11
    sub-float/2addr p1, p2

    neg-float p4, p4

    div-float/2addr p4, p5

    sub-float p5, p1, p5

    mul-float/2addr p5, p1

    sub-float/2addr p5, p2

    mul-float/2addr p5, p4

    add-float/2addr p5, p3

    return p5
.end method

.method private easeOutQuad(JFFJ)F
    .registers 7

    long-to-float p1, p1

    long-to-float p2, p5

    div-float/2addr p1, p2

    neg-float p2, p4

    mul-float/2addr p2, p1

    const/high16 p4, 0x40000000  # 2.0f

    invoke-static {p1, p4, p2, p3}, Lf0/e;->a(FFFF)F

    move-result p1

    return p1
.end method

.method private fitToBounds(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v2, v1, v3}, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    :cond_1f
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iput v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    iget-object v1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    iget v1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz v0, :cond_59

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_59
    return-void
.end method

.method private fitToBounds(ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V
    .registers 14

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_d

    move p1, v1

    :cond_d
    iget-object v0, p2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    iget v3, p2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4b

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v6

    if-eqz v6, :cond_4b

    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_7c

    :cond_4b
    if-eqz p1, :cond_6a

    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_7c

    :cond_6a
    iget v6, v0, Landroid/graphics/PointF;->x:F

    neg-float v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    :goto_7c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    const/high16 v8, 0x3f000000  # 0.5f

    if-gtz v6, :cond_8d

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    if-lez v6, :cond_8b

    goto :goto_8d

    :cond_8b
    move v6, v8

    goto :goto_9d

    :cond_8d
    :goto_8d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float/2addr v6, v9

    :goto_9d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    if-gtz v9, :cond_a9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    if-lez v9, :cond_b9

    :cond_a9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float/2addr v8, v9

    :cond_b9
    iget v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    if-ne v9, v7, :cond_d7

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v7

    if-eqz v7, :cond_d7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_102

    :cond_d7
    if-eqz p1, :cond_f1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v4

    mul-float/2addr p1, v6

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    mul-float/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_103

    :cond_f1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_102
    int-to-float v1, v1

    :goto_103
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    iput v3, p2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    return-void
.end method

.method private getRequiredRotation()I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I

    :cond_7
    return v0
.end method

.method private declared-synchronized initialiseBaseLayer(II)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateInSampleSize()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->initialiseTileMap(II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    new-instance v2, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, p2, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_43

    goto :goto_24

    :cond_3f
    monitor-exit p0

    return v0

    :cond_41
    monitor-exit p0

    return p2

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initialiseTileMap(II)Z
    .registers 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    const/4 v2, 0x1

    move v3, v2

    move v4, v3

    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v5

    div-int/2addr v5, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v6

    div-int/2addr v6, v4

    div-int v7, v5, v1

    div-int v8, v6, v1

    :goto_1c
    add-int v9, v7, v3

    add-int/2addr v9, v2

    move/from16 v10, p1

    if-gt v9, v10, :cond_e6

    int-to-double v11, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-double v13, v7

    const-wide/high16 v15, 0x3ff4000000000000L  # 1.25

    mul-double/2addr v13, v15

    cmpl-double v7, v11, v13

    if-lez v7, :cond_36

    iget v7, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    if-ge v1, v7, :cond_36

    goto/16 :goto_e6

    :cond_36
    :goto_36
    add-int v7, v8, v4

    add-int/2addr v7, v2

    move/from16 v9, p2

    if-gt v7, v9, :cond_d6

    int-to-double v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-double v11, v11

    mul-double/2addr v11, v15

    cmpl-double v7, v7, v11

    if-lez v7, :cond_4e

    iget v7, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    if-ge v1, v7, :cond_4e

    goto/16 :goto_d6

    :cond_4e
    int-to-long v7, v3

    int-to-long v11, v4

    mul-long/2addr v7, v11

    const-wide/32 v11, 0x7fffffff

    cmp-long v7, v7, v11

    const/4 v8, 0x0

    if-lez v7, :cond_5f

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    iput-object v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    return v8

    :cond_5f
    new-instance v7, Ljava/util/ArrayList;

    mul-int v11, v3, v4

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v8

    :goto_67
    if-ge v11, v3, :cond_c5

    move v12, v8

    :goto_6a
    if-ge v12, v4, :cond_bc

    new-instance v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    invoke-direct {v13}, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;-><init>()V

    iput v1, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    iget v14, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    if-ne v1, v14, :cond_79

    move v14, v2

    goto :goto_7a

    :cond_79
    move v14, v8

    :goto_7a
    iput-boolean v14, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    new-instance v14, Landroid/graphics/Rect;

    mul-int v15, v11, v5

    mul-int v2, v12, v6

    add-int/lit8 v8, v3, -0x1

    if-ne v11, v8, :cond_8b

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v8

    goto :goto_8e

    :cond_8b
    add-int/lit8 v8, v11, 0x1

    mul-int/2addr v8, v5

    :goto_8e
    move/from16 v17, v5

    add-int/lit8 v5, v4, -0x1

    if-ne v12, v5, :cond_99

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    goto :goto_9c

    :cond_99
    add-int/lit8 v5, v12, 0x1

    mul-int/2addr v5, v6

    :goto_9c
    invoke-direct {v14, v15, v2, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v14, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v8, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->fileSRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move v8, v5

    move/from16 v5, v17

    const/4 v2, 0x1

    goto :goto_6a

    :cond_bc
    move/from16 v17, v5

    move v5, v8

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v17

    const/4 v2, 0x1

    goto :goto_67

    :cond_c5
    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d2

    return v2

    :cond_d2
    div-int/lit8 v1, v1, 0x2

    goto/16 :goto_e

    :cond_d6
    :goto_d6
    move/from16 v17, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    div-int v6, v5, v4

    div-int v8, v6, v1

    move/from16 v5, v17

    goto/16 :goto_36

    :cond_e6
    :goto_e6
    move/from16 v9, p2

    add-int/lit8 v3, v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v5

    div-int/2addr v5, v3

    div-int v7, v5, v1

    goto/16 :goto_1c
.end method

.method private isBaseLayerReady()Z
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    if-ne v4, v5, :cond_17

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    iget-boolean v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    if-nez v5, :cond_4f

    iget-object v4, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3b

    :cond_4f
    return v2

    :cond_50
    return v1

    :cond_51
    return v2
.end method

.method private limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    int-to-float p2, v0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    div-float/2addr p2, p3

    int-to-float v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    div-float/2addr v0, p3

    invoke-virtual {p4, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p4
.end method

.method private limitedScale(F)F
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calMaxScale()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private minScale()F
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumScaleType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_34
    const/4 v3, 0x3

    if-ne v0, v3, :cond_43

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateMinScale()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_43

    return v0

    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private preDraw()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_59

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    if-lez v0, :cond_59

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    if-gtz v0, :cond_15

    goto :goto_59

    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    :cond_55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    :cond_59
    :goto_59
    return-void
.end method

.method private refreshRequiredTiles(Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    if-nez v0, :cond_a

    goto/16 :goto_94

    :cond_a
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateInSampleSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    iget v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lt v4, v0, :cond_4c

    if-le v4, v0, :cond_57

    iget v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    if-eq v4, v7, :cond_57

    :cond_4c
    iput-boolean v6, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_57

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    :cond_57
    iget v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    const/4 v7, 0x1

    if-ne v4, v0, :cond_8d

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->tileVisible(Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iput-boolean v7, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    iget-boolean v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    if-nez v4, :cond_34

    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_34

    if-eqz p1, :cond_34

    new-instance v4, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    invoke-direct {v4, p0, v5, v3}, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)V

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_34

    :cond_7b
    iget v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    iget v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    if-eq v4, v7, :cond_34

    iput-boolean v6, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_34

    :cond_8d
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    if-ne v4, v5, :cond_34

    iput-boolean v7, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    goto :goto_34

    :cond_94
    :goto_94
    return-void
.end method

.method private reset(Z)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitWidth:I

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitHeight:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastPoint:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3c
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;->recycle()V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    :cond_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_60

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4d
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    goto :goto_63

    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    if-eqz p1, :cond_9f

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_85
    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    iput-boolean v1, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_85

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_85

    :cond_9d
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    :cond_9f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method private restoreState(Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V
    .registers 4

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_31
    return-void
.end method

.method private sHeight()I
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_10

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_d

    goto :goto_10

    :cond_d
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    goto :goto_12

    :cond_10
    :goto_10
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    :goto_12
    return v0
.end method

.method private sWidth()I
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_10

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_d

    goto :goto_10

    :cond_d
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    goto :goto_12

    :cond_10
    :goto_10
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    :goto_12
    return v0
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setMatrixArray([FFFFFFFFF)V
    .registers 11

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    const/4 p2, 0x4

    aput p6, p1, p2

    const/4 p2, 0x5

    aput p7, p1, p2

    const/4 p2, 0x6

    aput p8, p1, p2

    const/4 p2, 0x7

    aput p9, p1, p2

    return-void
.end method

.method private sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method private sourceToViewX(F)F
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    const/high16 p1, 0x7fc00000  # Float.NaN

    return p1

    :cond_7
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    mul-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    return p1
.end method

.method private sourceToViewY(F)F
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    const/high16 p1, 0x7fc00000  # Float.NaN

    return p1

    :cond_7
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    mul-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v0

    return p1
.end method

.method private tileVisible(Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v2

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v3

    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_3b

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3b

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3b

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_3b

    const/4 p1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    return p1
.end method

.method private vTranslateForSCenter(FFF)Landroid/graphics/PointF;
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    if-nez v0, :cond_3b

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v4, v3}, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    :cond_3b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    iput p3, v0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    iget-object v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    int-to-float v1, v1

    mul-float/2addr p1, p3

    sub-float/2addr v1, p1

    int-to-float p1, v2

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    return-object p1
.end method

.method private viewToSourceX(F)F
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    const/high16 p1, 0x7fc00000  # Float.NaN

    return p1

    :cond_7
    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    div-float/2addr p1, v0

    return p1
.end method

.method private viewToSourceY(F)F
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    const/high16 p1, 0x7fc00000  # Float.NaN

    return p1

    :cond_7
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public animateCenter(Landroid/graphics/PointF;)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScale(F)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScaleAndCenter(FLandroid/graphics/PointF;)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public calculateMinScale()F
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    if-eqz v0, :cond_30

    if-nez v3, :cond_1f

    goto :goto_30

    :cond_1f
    if-le v0, v3, :cond_28

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_2f

    :cond_28
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v1, v0, v1

    :goto_2f
    return v1

    :cond_30
    :goto_30
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    return v0
.end method

.method public calculateZoomScale()F
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x40000000  # 2.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_30

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    :goto_2d
    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_30
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_42

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    goto :goto_2d

    :cond_42
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    return v0
.end method

.method public checkImageLoaded()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    if-nez v1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->preDraw()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageLoaded()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onImageLoaded()V

    :cond_1a
    return v0
.end method

.method public checkReady()Z
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_21

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    if-lez v0, :cond_21

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    move v0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    if-nez v2, :cond_37

    if-eqz v0, :cond_37

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->preDraw()V

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onReady()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v1, :cond_37

    invoke-interface {v1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onReady()V

    :cond_37
    return v0
.end method

.method public fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_51

    :cond_a
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_23

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v1, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_51

    :cond_23
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_41

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_51

    :cond_41
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_51
    return-void
.end method

.method public final getAppliedOrientation()I
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getExifOrientation(Ljava/lang/String;)I
    .registers 6

    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    const-string v0, "file:///android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    :try_start_11
    new-instance v0, Landroid/media/ExifInterface;

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_59

    if-nez p1, :cond_27

    goto :goto_59

    :cond_27
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2e

    const/16 p1, 0x5a

    :goto_2c
    move v1, p1

    goto :goto_59

    :cond_2e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_34

    const/16 p1, 0xb4

    goto :goto_2c

    :cond_34
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3b

    const/16 p1, 0x10e

    goto :goto_2c

    :cond_3b
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported EXIF orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_51} :catch_52

    goto :goto_59

    :catch_52
    sget-object p1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v0, "Could not get EXIF orientation of image"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    return v1
.end method

.method public getMaxScale()F
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    return v0
.end method

.method public final getMinScale()F
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v0

    return v0
.end method

.method public final getOrientation()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    return v0
.end method

.method public final getSHeight()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    return v0
.end method

.method public final getSWidth()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    return v0
.end method

.method public final getScale()F
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    return v0
.end method

.method public final getState()Lcom/android/fileexplorer/view/viewlarge/ImageViewState;
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    if-lez v0, :cond_1e

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isImageLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    return v0
.end method

.method public final isPanEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    return v0
.end method

.method public final isQuickScaleEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    return v0
.end method

.method public final isReady()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    return v0
.end method

.method public final isZoomEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    return v0
.end method

.method public loadBytes([B)V
    .registers 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Load bytes without tile!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public loadFile(Landroid/net/Uri;)V
    .registers 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without tile!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 29

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->createPaints()V

    iget v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    if-eqz v0, :cond_4de

    iget v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    if-eqz v0, :cond_4de

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4de

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_4de

    :cond_20
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    if-nez v0, :cond_34

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->initialiseBaseLayer(II)Z

    return-void

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    move-result v0

    if-nez v0, :cond_3b

    return-void

    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->preDraw()V

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    if-eqz v0, :cond_de

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget-wide v3, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    sub-long/2addr v0, v3

    iget-wide v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_53

    const/4 v4, 0x1

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    :goto_54
    move v8, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    iget v4, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleStart:F

    iget v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleEnd:F

    sub-float v5, v2, v4

    iget-wide v6, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    move-object/from16 v0, p0

    move-wide v2, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v0

    iput v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusStart:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v2, v4

    iget-wide v6, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    move-object/from16 v0, p0

    move-wide v2, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v9

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusStart:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v4

    iget-wide v6, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    move-object/from16 v0, p0

    move-wide v2, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v0

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-direct {v10, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v3

    sub-float/2addr v3, v9

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v10, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v3

    sub-float/2addr v3, v0

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    if-nez v8, :cond_cf

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleStart:F

    iget v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleEnd:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_cd

    goto :goto_cf

    :cond_cd
    const/4 v0, 0x0

    goto :goto_d0

    :cond_cf
    :goto_cf
    const/4 v0, 0x1

    :goto_d0
    invoke-direct {v10, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-direct {v10, v8}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    if-eqz v8, :cond_db

    const/4 v0, 0x0

    iput-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    :cond_db
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_de
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    const/16 v13, 0x5a

    if-eqz v0, :cond_41c

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_41c

    iget v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateInSampleSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v15, v1

    :cond_100
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_100

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_122
    :goto_122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    iget-boolean v3, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    if-eqz v3, :cond_122

    iget-boolean v3, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    if-nez v3, :cond_13a

    iget-object v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_122

    :cond_13a
    const/4 v15, 0x1

    goto :goto_122

    :cond_13c
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_146
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_320

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v14, :cond_160

    if-eqz v15, :cond_146

    :cond_160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_16a
    :goto_16a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_146

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    iget-object v1, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    invoke-direct {v10, v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-boolean v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    if-nez v0, :cond_2b0

    iget-object v1, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2b0

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_18f

    iget-object v1, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_18f
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_19a

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    :cond_19a
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSrcArray:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object v12, v9

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_1f9

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v4

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v6

    int-to-float v8, v4

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v0

    int-to-float v4, v2

    int-to-float v2, v0

    move-object/from16 v0, p0

    move/from16 v18, v2

    move v2, v3

    move v3, v5

    move/from16 v19, v4

    move v4, v7

    move v5, v8

    move v7, v9

    move/from16 v8, v19

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_286

    :cond_1f9
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v13, :cond_228

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v4

    int-to-float v6, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v0

    int-to-float v9, v2

    int-to-float v2, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    move/from16 v18, v2

    move v2, v3

    move v3, v5

    move/from16 v19, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_286

    :cond_228
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_257

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    int-to-float v8, v4

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v0

    int-to-float v4, v2

    int-to-float v2, v0

    move-object/from16 v0, p0

    move/from16 v18, v2

    move v2, v3

    move v3, v5

    move/from16 v19, v4

    move v4, v7

    move v5, v8

    move v7, v9

    move/from16 v8, v19

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto :goto_286

    :cond_257
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_286

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v4

    int-to-float v6, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v0

    int-to-float v9, v2

    int-to-float v2, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    move/from16 v18, v2

    move v2, v3

    move v3, v5

    move/from16 v19, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    :cond_286
    :goto_286
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSrcArray:[F

    const/16 v22, 0x0

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    const/16 v24, 0x0

    const/16 v25, 0x4

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v2

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    if-eqz v0, :cond_2ca

    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2ca

    :cond_2b0
    move-object v12, v9

    if-eqz v0, :cond_2ca

    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    if-eqz v0, :cond_2ca

    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x23

    int-to-float v0, v0

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v3, "LOADING"

    invoke-virtual {v11, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2ca
    :goto_2ca
    iget-boolean v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    if-eqz v0, :cond_16a

    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    if-eqz v0, :cond_16a

    const-string v0, "ISS "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_16a

    :cond_320
    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    if-eqz v0, :cond_4de

    const-string v0, "Scale: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41700000  # 15.0f

    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-virtual {v11, v0, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Translate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x420c0000  # 35.0f

    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    const-string v1, "Source center: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v5, [Ljava/lang/Object;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x425c0000  # 55.0f

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    if-eqz v0, :cond_4de

    iget-object v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    invoke-virtual {v10, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget-object v1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    invoke-virtual {v10, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget-object v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    invoke-virtual {v10, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x41200000  # 10.0f

    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x41a00000  # 20.0f

    iget-object v4, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x41c80000  # 25.0f

    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41f00000  # 30.0f

    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4de

    :cond_41c
    const/16 v0, 0xb4

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4de

    iget v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-boolean v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    if-eqz v3, :cond_446

    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    mul-float/2addr v2, v3

    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    int-to-float v3, v3

    iget-object v4, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    move/from16 v26, v2

    move v2, v1

    move/from16 v1, v26

    goto :goto_447

    :cond_446
    move v1, v2

    :goto_447
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_452

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    :cond_452
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_488

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4ad

    :cond_488
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    move-result v0

    if-ne v0, v13, :cond_49a

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4ad

    :cond_49a
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4ad

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4ad
    :goto_4ad
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4d5

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    if-nez v0, :cond_4bc

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    :cond_4bc
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    int-to-float v1, v1

    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4d5
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_4de
    :goto_4de
    return-void
.end method

.method public onImageLoaded()V
    .registers 1

    return-void
.end method

.method public declared-synchronized onImageLoaded(Landroid/graphics/Bitmap;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    const/4 v1, 0x0

    if-lez v0, :cond_1b

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    if-lez v2, :cond_1b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_18

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1b

    :cond_18
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_22
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    if-nez p1, :cond_40

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkImageLoaded()Z

    move-result p1

    if-eqz p1, :cond_46

    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    if-eq v0, v4, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v3

    :goto_19
    if-eq v1, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    if-lez v1, :cond_53

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    if-lez v1, :cond_53

    if-eqz v0, :cond_32

    if-eqz v2, :cond_32

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    goto :goto_53

    :cond_32
    if-eqz v2, :cond_43

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    int-to-double v0, p2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p2, v0

    goto :goto_53

    :cond_43
    if-eqz v0, :cond_53

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    :cond_53
    :goto_53
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public declared-synchronized onPreviewLoaded(Landroid/graphics/Bitmap;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    if-eqz v0, :cond_a

    goto :goto_33

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_20

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_20
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_38

    :cond_31
    monitor-exit p0

    return-void

    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onReady()V
    .registers 1

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    if-eqz p2, :cond_17

    if-eqz p1, :cond_17

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    :cond_17
    return-void
.end method

.method public declared-synchronized onTileLoaded()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkImageLoaded()Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTilesInited(Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;III)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    if-lez v0, :cond_1d

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    if-lez v1, :cond_1d

    if-ne v0, p2, :cond_d

    if-eq v1, p3, :cond_1d

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    :cond_1d
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    iput p4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_28

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->interruptible:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v2, :cond_19

    return v1

    :cond_19
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_28
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    return v1

    :cond_2f
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    const/4 v4, 0x0

    if-nez v2, :cond_3b

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    :cond_3b
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    if-nez v2, :cond_46

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    :cond_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/high16 v6, 0x40000000  # 2.0f

    const/4 v7, 0x2

    if-eqz v5, :cond_3a5

    if-eq v5, v1, :cond_339

    if-eq v5, v7, :cond_67

    const/4 v4, 0x5

    if-eq v5, v4, :cond_3a5

    const/4 v4, 0x6

    if-eq v5, v4, :cond_339

    const/16 v4, 0x105

    if-eq v5, v4, :cond_3a5

    const/16 v0, 0x106

    if-eq v5, v0, :cond_339

    goto/16 :goto_334

    :cond_67
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    if-lez v0, :cond_329

    const/high16 v0, 0x40a00000  # 5.0f

    if-lt v2, v7, :cond_177

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0, v2, v4, v5, v8}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v4

    div-float/2addr v5, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v4

    div-float/2addr v8, v6

    iget-boolean v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    if-eqz v4, :cond_329

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v9, v5, v4, v8}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v4

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_b9

    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_b9

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v0, :cond_329

    :cond_b9
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v0, :cond_c0

    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    :cond_c0
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calMaxScale()F

    move-result v0

    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    div-float v4, v2, v4

    iget v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    mul-float/2addr v4, v9

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_f3

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v5, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_16f

    :cond_f3
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v0, :cond_fe

    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    :cond_fe
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    div-float v7, v4, v6

    mul-float/2addr v7, v2

    div-float/2addr v4, v6

    mul-float/2addr v4, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    sub-float/2addr v5, v7

    iput v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v4

    iput v8, v0, Landroid/graphics/PointF;->y:F

    goto :goto_16f

    :cond_11e
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_16f

    :cond_147
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :goto_16f
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    goto/16 :goto_26f

    :cond_177
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v2, :cond_272

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v6

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->QUICK_SCALE_THRESHOLD:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    const/high16 v5, -0x40800000  # -1.0f

    cmpl-float v2, v2, v5

    if-nez v2, :cond_196

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    :cond_196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastPoint:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_1a4

    move v2, v1

    goto :goto_1a5

    :cond_1a4
    move v2, v3

    :goto_1a5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v5, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    div-float v5, v0, v5

    const/high16 v8, 0x3f800000  # 1.0f

    sub-float v5, v8, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v9, 0x3f000000  # 0.5f

    mul-float/2addr v5, v9

    const v9, 0x3cf5c28f  # 0.03f

    cmpl-float v9, v5, v9

    if-gtz v9, :cond_1c6

    iget-boolean v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    if-eqz v9, :cond_267

    :cond_1c6
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    iget v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    cmpl-float v4, v9, v4

    if-lez v4, :cond_1d4

    if-eqz v2, :cond_1d3

    add-float/2addr v5, v8

    move v8, v5

    goto :goto_1d4

    :cond_1d3
    sub-float/2addr v8, v5

    :cond_1d4
    :goto_1d4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calMaxScale()F

    move-result v4

    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    mul-float/2addr v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    if-eqz v2, :cond_216

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v2, :cond_1f4

    invoke-interface {v2}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    :cond_1f4
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float v6, v4, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    iget v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget v8, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    div-float v9, v7, v8

    mul-float/2addr v9, v6

    div-float/2addr v7, v8

    mul-float/2addr v7, v5

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    sub-float/2addr v4, v9

    iput v4, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v7

    iput v2, v5, Landroid/graphics/PointF;->y:F

    goto :goto_267

    :cond_216
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    if-eqz v2, :cond_23f

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->y:F

    goto :goto_267

    :cond_23f
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->y:F

    :cond_267
    :goto_267
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    :goto_26f
    move v3, v1

    goto/16 :goto_329

    :cond_272
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    if-nez v2, :cond_329

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v2, v0

    if-gtz v5, :cond_29c

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_29c

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v0, :cond_329

    :cond_29c
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v6

    iput v7, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v6

    iput v7, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_2d3

    move v6, v1

    goto :goto_2d4

    :cond_2d3
    move v6, v3

    :goto_2d4
    if-eqz v6, :cond_2e0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2e0

    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    if-nez v2, :cond_2e0

    move v2, v1

    goto :goto_2e1

    :cond_2e0
    move v2, v3

    :goto_2e1
    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_2ef

    const/high16 v0, 0x41700000  # 15.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2ef

    move v0, v1

    goto :goto_2f0

    :cond_2ef
    move v0, v3

    :goto_2f0
    if-nez v2, :cond_2fd

    if-eqz v6, :cond_2fa

    if-nez v0, :cond_2fa

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v0, :cond_2fd

    :cond_2fa
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    goto :goto_30d

    :cond_2fd
    if-lez v5, :cond_30d

    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_30d
    :goto_30d
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    if-nez v0, :cond_324

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iput v4, v0, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_324
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    goto/16 :goto_26f

    :cond_329
    :goto_329
    if-eqz v3, :cond_334

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_334
    :goto_334
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_339
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v0, :cond_34f

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    if-nez v0, :cond_34f

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_34f
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    if-lez v0, :cond_39c

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    if-nez v0, :cond_35b

    iget-boolean v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v4, :cond_39c

    :cond_35b
    if-eqz v0, :cond_38d

    if-ne v2, v7, :cond_38d

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne v0, v1, :cond_380

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_38d

    :cond_380
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_38d
    :goto_38d
    const/4 p1, 0x3

    if-ge v2, p1, :cond_392

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    :cond_392
    if-ge v2, v7, :cond_398

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    :cond_398
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    return v1

    :cond_39c
    if-ne v2, v1, :cond_3a4

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    :cond_3a4
    return v1

    :cond_3a5
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    if-lt v2, v7, :cond_40a

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    if-eqz v0, :cond_402

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v0, :cond_3c3

    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    :cond_3c3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v0

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, v2

    div-float/2addr v4, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    div-float/2addr p1, v6

    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_404

    :cond_402
    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    :goto_404
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_42d

    :cond_40a
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    if-nez v0, :cond_42d

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_42d
    :goto_42d
    return v1
.end method

.method public recycle()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final resetScaleAndCenter()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2e

    :cond_28
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    :goto_2e
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    return-void
.end method

.method public final setDoubleTapZoomDpi(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomStyle:I

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid zoom style: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V
    .registers 14

    if-eqz p1, :cond_18a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    if-eqz p3, :cond_b

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->restoreState(Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    :cond_b
    const-string p3, "/"

    const-string v0, "android.resource://"

    const/4 v1, 0x0

    if-eqz p2, :cond_b7

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_af

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSWidth()I

    move-result v2

    if-lez v2, :cond_a7

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSHeight()I

    move-result v2

    if-lez v2, :cond_a7

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSWidth()I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSHeight()I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b7

    :cond_45
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBytes()[B

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBytes()[B

    move-result-object v8

    new-instance p2, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {p2, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b7

    :cond_64
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_91

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_91

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_91
    move-object v7, v2

    new-instance p2, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {p2, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b7

    :cond_a7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used unless dimensions are provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used when a bitmap is provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    :goto_b7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_ec

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_ec

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p2, p3, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_189

    :cond_ec
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_fb

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_189

    :cond_fb
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_12e

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12e

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :cond_12e
    move-object v6, p2

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getTile()Z

    move-result p2

    if-nez p2, :cond_172

    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p2, :cond_13a

    goto :goto_172

    :cond_13a
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_157

    new-instance p1, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_189

    :cond_157
    new-instance p2, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v1, [Ljava/lang/Void;

    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_189

    :cond_172
    :goto_172
    new-instance p1, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;

    const-class v0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;

    invoke-direct {p3, v0}, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p1, p0, p2, p3, v6}, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_189
    return-void

    :cond_18a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "imageSource must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    return-void
.end method

.method public setInitSize(Landroid/content/Context;II)V
    .registers 4

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitHeight:I

    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitWidth:I

    return-void
.end method

.method public final setMaxScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    return-void
.end method

.method public final setMaximumDpi(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMinScale(F)V

    return-void
.end method

.method public final setMinScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    return-void
.end method

.method public final setMinimumDpi(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMaxScale(F)V

    return-void
.end method

.method public final setMinimumScaleType(I)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumScaleType:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scale type: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumTileDpi(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_25
    return-void
.end method

.method public setOnImageEventListener(Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final setOrientation(I)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid orientation: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPanEnabled(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_3f

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3f
    return-void
.end method

.method public final setPanLimit(I)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pan limit: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setQuickScaleEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    return-void
.end method

.method public final setScaleAndCenter(FLandroid/graphics/PointF;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .registers 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    goto :goto_1b

    :cond_a
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setZoomEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    return-void
.end method

.method public final sourceToViewCoord(FF)Landroid/graphics/PointF;
    .registers 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FF)Landroid/graphics/PointF;
    .registers 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
