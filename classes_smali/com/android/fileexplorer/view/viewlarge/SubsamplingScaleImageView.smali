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

    .line 1
    const-class v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    const-string v0, "SubsamplingScaleImageView"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    .line 7
    const/4 v0, 0x5

    .line 8
    new-array v0, v0, [Ljava/lang/Integer;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    aput-object v2, v0, v1

    .line 17
    const/16 v2, 0x5a

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    aput-object v2, v0, v3

    .line 30
    const/16 v2, 0xb4

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    const/4 v5, 0x2

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v6

    .line 41
    aput-object v2, v0, v5

    .line 43
    const/16 v2, 0x10e

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 49
    const/4 v7, 0x3

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v8

    .line 54
    aput-object v2, v0, v7

    .line 56
    const/4 v2, -0x1

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v2

    .line 61
    const/4 v9, 0x4

    .line 62
    aput-object v2, v0, v9

    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    .line 70
    new-array v0, v7, [Ljava/lang/Integer;

    .line 72
    aput-object v4, v0, v1

    .line 74
    aput-object v6, v0, v3

    .line 76
    aput-object v8, v0, v5

    .line 78
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    .line 84
    new-array v0, v5, [Ljava/lang/Integer;

    .line 86
    aput-object v6, v0, v1

    .line 88
    aput-object v4, v0, v3

    .line 90
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    .line 96
    new-array v0, v7, [Ljava/lang/Integer;

    .line 98
    aput-object v4, v0, v1

    .line 100
    aput-object v6, v0, v3

    .line 102
    aput-object v8, v0, v5

    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    .line 110
    new-array v0, v7, [Ljava/lang/Integer;

    .line 112
    aput-object v6, v0, v1

    .line 114
    aput-object v4, v0, v3

    .line 116
    aput-object v8, v0, v5

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    const/high16 v1, 0x40000000  # 2.0f

    .line 3
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    .line 7
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumScaleType:I

    .line 8
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 9
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    .line 10
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    const/high16 v2, 0x40400000  # 3.0f

    .line 11
    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    .line 12
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomStyle:I

    .line 13
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    .line 14
    new-instance v2, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;

    const-class v3, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageDecoder;

    invoke-direct {v2, v3}, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 15
    iput-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSrcArray:[F

    new-array v2, v2, [F

    .line 16
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    const/16 v2, 0xa0

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMinimumDpi(I)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 19
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 20
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_d4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/fileexplorer/R$styleable;->SubsamplingScaleImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 23
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 25
    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->asset(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tilingEnabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    :cond_7e
    const/4 v2, 0x3

    .line 26
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 27
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_96

    .line 28
    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->resource(I)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tilingEnabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    .line 29
    :cond_96
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 30
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setPanEnabled(Z)V

    :cond_a3
    const/4 v2, 0x5

    .line 31
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 32
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    :cond_b1
    const/4 v2, 0x2

    .line 33
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 34
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    :cond_bf
    const/4 v2, 0x4

    .line 35
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 36
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setTileBackgroundColor(I)V

    .line 37
    :cond_d1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d4
    const/high16 p2, 0x41a00000  # 20.0f

    .line 38
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

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 3
    return p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1502(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1602(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    .line 3
    return p1
.end method

.method public static synthetic access$1702(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1802(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1902(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    .line 3
    return p1
.end method

.method public static synthetic access$2002(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastPoint:Landroid/graphics/PointF;

    .line 3
    return-object p1
.end method

.method public static synthetic access$201(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2102(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    .line 3
    return p1
.end method

.method public static synthetic access$2200(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2600()Ljava/util/List;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public static synthetic access$2700(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedScale(F)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2902(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/struct/Anim;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 3
    return-object p1
.end method

.method public static synthetic access$3000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    .line 4
    return-void
.end method

.method public static synthetic access$301(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 3
    return p0
.end method

.method private calMaxScale()F
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    .line 7
    mul-float/2addr v0, v1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method private calculateInSampleSize()I
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 2
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    if-lez v1, :cond_1d

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    mul-float/2addr v0, v1

    .line 6
    :cond_1d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_55

    if-nez v0, :cond_31

    goto :goto_55

    .line 8
    :cond_31
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    if-gt v3, v0, :cond_3d

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v3

    if-le v3, v1, :cond_54

    .line 9
    :cond_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 11
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

    .line 12
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 13
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

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 15
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 3
    if-nez v0, :cond_19

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 28
    if-nez v0, :cond_3c

    .line 30
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    .line 32
    if-eqz v0, :cond_3c

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    .line 36
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 41
    const/high16 v1, 0x41900000  # 18.0f

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 48
    const v1, -0xff01

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 56
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    :cond_3c
    return-void
.end method

.method private distance(FFFF)F
    .registers 5

    .line 1
    sub-float/2addr p1, p2

    .line 2
    sub-float/2addr p3, p4

    .line 3
    mul-float/2addr p1, p1

    .line 4
    mul-float/2addr p3, p3

    .line 5
    add-float/2addr p3, p1

    .line 6
    float-to-double p1, p3

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    move-result-wide p1

    .line 11
    double-to-float p1, p1

    .line 12
    return p1
.end method

.method private doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 14

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 3
    const/4 v1, 0x2

    .line 4
    if-nez v0, :cond_22

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 8
    if-eqz v0, :cond_12

    .line 10
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 12
    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 14
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 16
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 18
    goto :goto_22

    .line 19
    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 22
    move-result v0

    .line 23
    div-int/2addr v0, v1

    .line 24
    int-to-float v0, v0

    .line 25
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 27
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 30
    move-result v0

    .line 31
    div-int/2addr v0, v1

    .line 32
    int-to-float v0, v0

    .line 33
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 35
    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 38
    move-result v0

    .line 39
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    .line 41
    mul-float/2addr v0, v2

    .line 42
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 44
    float-to-double v2, v2

    .line 45
    float-to-double v4, v0

    .line 46
    const-wide v6, 0x3feccccccccccccdL  # 0.9

    .line 51
    mul-double/2addr v4, v6

    .line 52
    cmpg-double v2, v2, v4

    .line 54
    const/4 v3, 0x1

    .line 55
    const/4 v4, 0x0

    .line 56
    if-gtz v2, :cond_3b

    .line 58
    move v2, v3

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v2, v4

    .line 61
    :goto_3c
    if-eqz v2, :cond_3f

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 67
    move-result v0

    .line 68
    :goto_43
    move v7, v0

    .line 69
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomStyle:I

    .line 71
    const/4 v5, 0x3

    .line 72
    if-ne v0, v5, :cond_4d

    .line 74
    invoke-virtual {p0, v7, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setScaleAndCenter(FLandroid/graphics/PointF;)V

    .line 77
    goto :goto_77

    .line 78
    :cond_4d
    if-eq v0, v1, :cond_6a

    .line 80
    if-eqz v2, :cond_6a

    .line 82
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 84
    if-nez v1, :cond_56

    .line 86
    goto :goto_6a

    .line 87
    :cond_56
    if-ne v0, v3, :cond_77

    .line 89
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 91
    const/4 v10, 0x0

    .line 92
    move-object v5, v0

    .line 93
    move-object v6, p0

    .line 94
    move-object v8, p1

    .line 95
    move-object v9, p2

    .line 96
    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    .line 99
    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->start()V

    .line 106
    goto :goto_77

    .line 107
    :cond_6a
    :goto_6a
    new-instance p2, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-direct {p2, p0, v7, p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    .line 113
    invoke-virtual {p2, v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->start()V

    .line 120
    :cond_77
    :goto_77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 123
    return-void
.end method

.method private ease(IJFFJ)F
    .registers 15

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1c

    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_10

    .line 7
    move-object v0, p0

    .line 8
    move-wide v1, p2

    .line 9
    move v3, p4

    .line 10
    move v4, p5

    .line 11
    move-wide v5, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->easeInOutQuad(JFFJ)F

    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_10
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 19
    const-string p3, "Unexpected easing type: "

    .line 21
    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p2

    .line 29
    :cond_1c
    move-object v0, p0

    .line 30
    move-wide v1, p2

    .line 31
    move v3, p4

    .line 32
    move v4, p5

    .line 33
    move-wide v5, p6

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->easeOutQuad(JFFJ)F

    .line 37
    move-result p1

    .line 38
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

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 26
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 27
    :goto_f
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    if-nez v2, :cond_1f

    .line 28
    new-instance v2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v2, v1, v3}, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 29
    :cond_1f
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    iput v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    .line 30
    iget-object v1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    iget v1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz v0, :cond_59

    .line 34
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

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_d

    move p1, v1

    .line 2
    :cond_d
    iget-object v0, p2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    .line 3
    iget v3, p2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v3

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    .line 6
    iget v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4b

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 7
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 8
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

    .line 9
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 10
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_7c

    .line 11
    :cond_6a
    iget v6, v0, Landroid/graphics/PointF;->x:F

    neg-float v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 12
    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 13
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

    .line 14
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

    .line 15
    :cond_b9
    iget v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    if-ne v9, v7, :cond_d7

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_102

    :cond_d7
    if-eqz p1, :cond_f1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v4

    mul-float/2addr p1, v6

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    mul-float/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_103

    .line 20
    :cond_f1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_102
    int-to-float v1, v1

    .line 22
    :goto_103
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 23
    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 24
    iput v3, p2, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    return-void
.end method

.method private getRequiredRotation()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I

    .line 8
    :cond_7
    return v0
.end method

.method private declared-synchronized initialiseBaseLayer(II)Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateInSampleSize()I

    .line 9
    move-result v1

    .line 10
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->initialiseTileMap(II)Z

    .line 15
    move-result p1

    .line 16
    const/4 p2, 0x0

    .line 17
    if-eqz p1, :cond_41

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 21
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/util/List;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 37
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3f

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    .line 49
    new-instance v2, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;

    .line 51
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 53
    invoke-direct {v2, p0, v3, v1}, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)V

    .line 56
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 58
    new-array v3, p2, [Ljava/lang/Void;

    .line 60
    invoke-virtual {v2, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_43

    .line 63
    goto :goto_24

    .line 64
    :cond_3f
    monitor-exit p0

    .line 65
    return v0

    .line 66
    :cond_41
    monitor-exit p0

    .line 67
    return p2

    .line 68
    :catchall_43
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method

.method private initialiseTileMap(II)Z
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    iput-object v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 10
    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 12
    const/4 v2, 0x1

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 18
    move-result v5

    .line 19
    div-int/2addr v5, v3

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 23
    move-result v6

    .line 24
    div-int/2addr v6, v4

    .line 25
    div-int v7, v5, v1

    .line 27
    div-int v8, v6, v1

    .line 29
    :goto_1c
    add-int v9, v7, v3

    .line 31
    add-int/2addr v9, v2

    .line 32
    move/from16 v10, p1

    .line 34
    if-gt v9, v10, :cond_e6

    .line 36
    int-to-double v11, v7

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v7

    .line 41
    int-to-double v13, v7

    .line 42
    const-wide/high16 v15, 0x3ff4000000000000L  # 1.25

    .line 44
    mul-double/2addr v13, v15

    .line 45
    cmpl-double v7, v11, v13

    .line 47
    if-lez v7, :cond_36

    .line 49
    iget v7, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 51
    if-ge v1, v7, :cond_36

    .line 53
    goto/16 :goto_e6

    .line 55
    :cond_36
    :goto_36
    add-int v7, v8, v4

    .line 57
    add-int/2addr v7, v2

    .line 58
    move/from16 v9, p2

    .line 60
    if-gt v7, v9, :cond_d6

    .line 62
    int-to-double v7, v8

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 66
    move-result v11

    .line 67
    int-to-double v11, v11

    .line 68
    mul-double/2addr v11, v15

    .line 69
    cmpl-double v7, v7, v11

    .line 71
    if-lez v7, :cond_4e

    .line 73
    iget v7, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 75
    if-ge v1, v7, :cond_4e

    .line 77
    goto/16 :goto_d6

    .line 79
    :cond_4e
    int-to-long v7, v3

    .line 80
    int-to-long v11, v4

    .line 81
    mul-long/2addr v7, v11

    .line 82
    const-wide/32 v11, 0x7fffffff

    .line 85
    cmp-long v7, v7, v11

    .line 87
    const/4 v8, 0x0

    .line 88
    if-lez v7, :cond_5f

    .line 90
    const/4 v1, 0x0

    .line 91
    iput-object v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 93
    iput-object v1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 95
    return v8

    .line 96
    :cond_5f
    new-instance v7, Ljava/util/ArrayList;

    .line 98
    mul-int v11, v3, v4

    .line 100
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    move v11, v8

    .line 104
    :goto_67
    if-ge v11, v3, :cond_c5

    .line 106
    move v12, v8

    .line 107
    :goto_6a
    if-ge v12, v4, :cond_bc

    .line 109
    new-instance v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    .line 111
    invoke-direct {v13}, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;-><init>()V

    .line 114
    iput v1, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    .line 116
    iget v14, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 118
    if-ne v1, v14, :cond_79

    .line 120
    move v14, v2

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move v14, v8

    .line 123
    :goto_7a
    iput-boolean v14, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 125
    new-instance v14, Landroid/graphics/Rect;

    .line 127
    mul-int v15, v11, v5

    .line 129
    mul-int v2, v12, v6

    .line 131
    add-int/lit8 v8, v3, -0x1

    .line 133
    if-ne v11, v8, :cond_8b

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 138
    move-result v8

    .line 139
    goto :goto_8e

    .line 140
    :cond_8b
    add-int/lit8 v8, v11, 0x1

    .line 142
    mul-int/2addr v8, v5

    .line 143
    :goto_8e
    move/from16 v17, v5

    .line 145
    add-int/lit8 v5, v4, -0x1

    .line 147
    if-ne v12, v5, :cond_99

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 152
    move-result v5

    .line 153
    goto :goto_9c

    .line 154
    :cond_99
    add-int/lit8 v5, v12, 0x1

    .line 156
    mul-int/2addr v5, v6

    .line 157
    :goto_9c
    invoke-direct {v14, v15, v2, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 160
    iput-object v14, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 162
    new-instance v2, Landroid/graphics/Rect;

    .line 164
    const/4 v5, 0x0

    .line 165
    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    iput-object v2, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 170
    new-instance v2, Landroid/graphics/Rect;

    .line 172
    iget-object v8, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 174
    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 177
    iput-object v2, v13, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->fileSRect:Landroid/graphics/Rect;

    .line 179
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v12, v12, 0x1

    .line 184
    move v8, v5

    .line 185
    move/from16 v5, v17

    .line 187
    const/4 v2, 0x1

    .line 188
    goto :goto_6a

    .line 189
    :cond_bc
    move/from16 v17, v5

    .line 191
    move v5, v8

    .line 192
    add-int/lit8 v11, v11, 0x1

    .line 194
    move/from16 v5, v17

    .line 196
    const/4 v2, 0x1

    .line 197
    goto :goto_67

    .line 198
    :cond_c5
    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v5

    .line 204
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v2, 0x1

    .line 208
    if-ne v1, v2, :cond_d2

    .line 210
    return v2

    .line 211
    :cond_d2
    div-int/lit8 v1, v1, 0x2

    .line 213
    goto/16 :goto_e

    .line 215
    :cond_d6
    :goto_d6
    move/from16 v17, v5

    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 222
    move-result v5

    .line 223
    div-int v6, v5, v4

    .line 225
    div-int v8, v6, v1

    .line 227
    move/from16 v5, v17

    .line 229
    goto/16 :goto_36

    .line 231
    :cond_e6
    :goto_e6
    move/from16 v9, p2

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 238
    move-result v5

    .line 239
    div-int/2addr v5, v3

    .line 240
    div-int v7, v5, v1

    .line 242
    goto/16 :goto_1c
.end method

.method private isBaseLayerReady()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_a

    .line 6
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_51

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_50

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v4

    .line 46
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 48
    if-ne v4, v5, :cond_17

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/util/List;

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v3

    .line 60
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_17

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    .line 72
    iget-boolean v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    .line 74
    if-nez v5, :cond_4f

    .line 76
    iget-object v4, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    if-nez v4, :cond_3b

    .line 80
    :cond_4f
    return v2

    .line 81
    :cond_50
    return v1

    .line 82
    :cond_51
    return v2
.end method

.method private limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 21
    move-result v1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    div-int/lit8 v0, v0, 0x2

    .line 25
    add-int/2addr v0, p2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    move-result v2

    .line 38
    sub-int/2addr v1, v2

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    move-result v2

    .line 43
    sub-int/2addr v1, v2

    .line 44
    div-int/lit8 v1, v1, 0x2

    .line 46
    add-int/2addr v1, p2

    .line 47
    int-to-float p2, v0

    .line 48
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 50
    sub-float/2addr p2, v0

    .line 51
    div-float/2addr p2, p3

    .line 52
    int-to-float v0, v1

    .line 53
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 55
    sub-float/2addr v0, p1

    .line 56
    div-float/2addr v0, p3

    .line 57
    invoke-virtual {p4, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 60
    return-object p4
.end method

.method private limitedScale(F)F
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 8
    move-result p1

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calMaxScale()F

    .line 12
    move-result v0

    .line 13
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private minScale()F
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumScaleType:I

    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v0, v3, :cond_34

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v0

    .line 28
    sub-int/2addr v0, v2

    .line 29
    int-to-float v0, v0

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    div-float/2addr v0, v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    move-result v2

    .line 40
    sub-int/2addr v2, v1

    .line 41
    int-to-float v1, v2

    .line 42
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 45
    move-result v2

    .line 46
    int-to-float v2, v2

    .line 47
    div-float/2addr v1, v2

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 51
    move-result v0

    .line 52
    return v0

    .line 53
    :cond_34
    const/4 v3, 0x3

    .line 54
    if-ne v0, v3, :cond_43

    .line 56
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateMinScale()F

    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    .line 62
    const/4 v3, 0x0

    .line 63
    cmpl-float v3, v0, v3

    .line 65
    if-lez v3, :cond_43

    .line 67
    return v0

    .line 68
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 71
    move-result v0

    .line 72
    sub-int/2addr v0, v2

    .line 73
    int-to-float v0, v0

    .line 74
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 77
    move-result v2

    .line 78
    int-to-float v2, v2

    .line 79
    div-float/2addr v0, v2

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v2

    .line 84
    sub-int/2addr v2, v1

    .line 85
    int-to-float v1, v2

    .line 86
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 89
    move-result v2

    .line 90
    int-to-float v2, v2

    .line 91
    div-float/2addr v1, v2

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 95
    move-result v0

    .line 96
    return v0
.end method

.method private preDraw()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_59

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_59

    .line 13
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 15
    if-lez v0, :cond_59

    .line 17
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 19
    if-gtz v0, :cond_15

    .line 21
    goto :goto_59

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 24
    if-eqz v0, :cond_55

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    .line 28
    if-eqz v0, :cond_55

    .line 30
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v1

    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 44
    int-to-float v1, v1

    .line 45
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 47
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 49
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 51
    mul-float/2addr v2, v3

    .line 52
    sub-float/2addr v1, v2

    .line 53
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 60
    move-result v1

    .line 61
    div-int/lit8 v1, v1, 0x2

    .line 63
    int-to-float v1, v1

    .line 64
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 66
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 68
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 70
    mul-float/2addr v2, v3

    .line 71
    sub-float/2addr v1, v2

    .line 72
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 74
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 77
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    .line 79
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 83
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 86
    :cond_55
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method private refreshRequiredTiles(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 3
    if-eqz v0, :cond_94

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 7
    if-nez v0, :cond_a

    .line 9
    goto/16 :goto_94

    .line 11
    :cond_a
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateInSampleSize()I

    .line 16
    move-result v1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_94

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/List;

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v2

    .line 53
    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1e

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    .line 65
    iget v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    if-lt v4, v0, :cond_4c

    .line 71
    if-le v4, v0, :cond_57

    .line 73
    iget v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 75
    if-eq v4, v7, :cond_57

    .line 77
    :cond_4c
    iput-boolean v6, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 79
    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 81
    if-eqz v4, :cond_57

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 86
    iput-object v5, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 88
    :cond_57
    iget v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    .line 90
    const/4 v7, 0x1

    .line 91
    if-ne v4, v0, :cond_8d

    .line 93
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->tileVisible(Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)Z

    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_7b

    .line 99
    iput-boolean v7, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 101
    iget-boolean v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    .line 103
    if-nez v4, :cond_34

    .line 105
    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 107
    if-nez v4, :cond_34

    .line 109
    if-eqz p1, :cond_34

    .line 111
    new-instance v4, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;

    .line 113
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 115
    invoke-direct {v4, p0, v5, v3}, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)V

    .line 118
    new-array v3, v6, [Ljava/lang/Void;

    .line 120
    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    goto :goto_34

    .line 124
    :cond_7b
    iget v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    .line 126
    iget v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 128
    if-eq v4, v7, :cond_34

    .line 130
    iput-boolean v6, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 132
    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 134
    if-eqz v4, :cond_34

    .line 136
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    iput-object v5, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 141
    goto :goto_34

    .line 142
    :cond_8d
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 144
    if-ne v4, v5, :cond_34

    .line 146
    iput-boolean v7, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 148
    goto :goto_34

    .line 149
    :cond_94
    :goto_94
    return-void
.end method

.method private reset(Z)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitWidth:I

    .line 9
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitHeight:I

    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 14
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 19
    move-result-object v3

    .line 20
    iput-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    .line 22
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 24
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 26
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 32
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 34
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 36
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 38
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    .line 40
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    .line 42
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    .line 44
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastPoint:Landroid/graphics/PointF;

    .line 46
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    .line 48
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 50
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 52
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 54
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    .line 56
    if-eqz p1, :cond_63

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    .line 60
    monitor-enter p1

    .line 61
    :try_start_3c
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 63
    if-eqz v0, :cond_45

    .line 65
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;->recycle()V

    .line 68
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 70
    :cond_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_60

    .line 71
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    if-eqz p1, :cond_4d

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_4d
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 80
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 82
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I

    .line 84
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    .line 86
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    .line 88
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    .line 92
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    .line 96
    goto :goto_63

    .line 97
    :catchall_60
    move-exception v0

    .line 98
    :try_start_61
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    .line 99
    throw v0

    .line 100
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 102
    if-eqz p1, :cond_9f

    .line 104
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object p1

    .line 112
    :cond_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9d

    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/util/List;

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v0

    .line 134
    :cond_85
    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_6f

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    .line 146
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 148
    iget-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 150
    if-eqz v4, :cond_85

    .line 152
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    iput-object v2, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 157
    goto :goto_85

    .line 158
    :cond_9d
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 160
    :cond_9f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method private restoreState(Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_31

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getCenter()Landroid/graphics/PointF;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_31

    .line 9
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getOrientation()I

    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_31

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getOrientation()I

    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    .line 31
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getScale()F

    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    .line 41
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->getCenter()Landroid/graphics/PointF;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 50
    :cond_31
    return-void
.end method

.method private sHeight()I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x5a

    .line 7
    if-eq v0, v1, :cond_10

    .line 9
    const/16 v1, 0x10e

    .line 11
    if-ne v0, v1, :cond_d

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    :goto_10
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 19
    :goto_12
    return v0
.end method

.method private sWidth()I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x5a

    .line 7
    if-eq v0, v1, :cond_10

    .line 9
    const/16 v1, 0x10e

    .line 11
    if-ne v0, v1, :cond_d

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    :goto_10
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 19
    :goto_12
    return v0
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;)V

    .line 8
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDetector:Landroid/view/GestureDetector;

    .line 13
    return-void
.end method

.method private setMatrixArray([FFFFFFFFF)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    aput p2, p1, v0

    .line 4
    const/4 p2, 0x1

    .line 5
    aput p3, p1, p2

    .line 7
    const/4 p2, 0x2

    .line 8
    aput p4, p1, p2

    .line 10
    const/4 p2, 0x3

    .line 11
    aput p5, p1, p2

    .line 13
    const/4 p2, 0x4

    .line 14
    aput p6, p1, p2

    .line 16
    const/4 p2, 0x5

    .line 17
    aput p7, p1, p2

    .line 19
    const/4 p2, 0x6

    .line 20
    aput p8, p1, p2

    .line 22
    const/4 p2, 0x7

    .line 23
    aput p9, p1, p2

    .line 25
    return-void
.end method

.method private sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    int-to-float v0, v0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewX(F)F

    .line 7
    move-result v0

    .line 8
    float-to-int v0, v0

    .line 9
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewY(F)F

    .line 15
    move-result v1

    .line 16
    float-to-int v1, v1

    .line 17
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewX(F)F

    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    int-to-float p1, p1

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewY(F)F

    .line 31
    move-result p1

    .line 32
    float-to-int p1, p1

    .line 33
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    return-object p2
.end method

.method private sourceToViewX(F)F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const/high16 p1, 0x7fc00000  # Float.NaN

    .line 7
    return p1

    .line 8
    :cond_7
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 10
    mul-float/2addr p1, v1

    .line 11
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 13
    add-float/2addr p1, v0

    .line 14
    return p1
.end method

.method private sourceToViewY(F)F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const/high16 p1, 0x7fc00000  # Float.NaN

    .line 7
    return p1

    .line 8
    :cond_7
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 10
    mul-float/2addr p1, v1

    .line 11
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 13
    add-float/2addr p1, v0

    .line 14
    return p1
.end method

.method private tileVisible(Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceX(F)F

    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v2

    .line 10
    int-to-float v2, v2

    .line 11
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceX(F)F

    .line 14
    move-result v2

    .line 15
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceY(F)F

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v3

    .line 23
    int-to-float v3, v3

    .line 24
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceY(F)F

    .line 27
    move-result v3

    .line 28
    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 30
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 32
    int-to-float v4, v4

    .line 33
    cmpl-float v1, v1, v4

    .line 35
    if-gtz v1, :cond_3b

    .line 37
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 39
    int-to-float v1, v1

    .line 40
    cmpl-float v1, v1, v2

    .line 42
    if-gtz v1, :cond_3b

    .line 44
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 46
    int-to-float v1, v1

    .line 47
    cmpl-float v0, v0, v1

    .line 49
    if-gtz v0, :cond_3b

    .line 51
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 53
    int-to-float p1, p1

    .line 54
    cmpl-float p1, p1, v3

    .line 56
    if-gtz p1, :cond_3b

    .line 58
    const/4 p1, 0x1

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 p1, 0x0

    .line 61
    :goto_3c
    return p1
.end method

.method private vTranslateForSCenter(FFF)Landroid/graphics/PointF;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 21
    add-int/2addr v1, v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    move-result v3

    .line 39
    sub-int/2addr v2, v3

    .line 40
    div-int/lit8 v2, v2, 0x2

    .line 42
    add-int/2addr v2, v0

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 45
    if-nez v0, :cond_3b

    .line 47
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 49
    new-instance v3, Landroid/graphics/PointF;

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 55
    invoke-direct {v0, v4, v3}, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    .line 58
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 60
    :cond_3b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 62
    iput p3, v0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    .line 64
    iget-object v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    .line 66
    int-to-float v1, v1

    .line 67
    mul-float/2addr p1, p3

    .line 68
    sub-float/2addr v1, p1

    .line 69
    int-to-float p1, v2

    .line 70
    mul-float/2addr p2, p3

    .line 71
    sub-float/2addr p1, p2

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 75
    const/4 p1, 0x1

    .line 76
    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    .line 81
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSatTemp:Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 83
    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    .line 85
    return-object p1
.end method

.method private viewToSourceX(F)F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const/high16 p1, 0x7fc00000  # Float.NaN

    .line 7
    return p1

    .line 8
    :cond_7
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 10
    sub-float/2addr p1, v0

    .line 11
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 13
    div-float/2addr p1, v0

    .line 14
    return p1
.end method

.method private viewToSourceY(F)F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const/high16 p1, 0x7fc00000  # Float.NaN

    .line 7
    return p1

    .line 8
    :cond_7
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 10
    sub-float/2addr p1, v0

    .line 11
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 13
    div-float/2addr p1, v0

    .line 14
    return p1
.end method


# virtual methods
.method public animateCenter(Landroid/graphics/PointF;)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    .line 14
    return-object v0
.end method

.method public animateScale(F)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    .line 14
    return-object v0
.end method

.method public animateScaleAndCenter(FLandroid/graphics/PointF;)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 11
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    .line 14
    return-object v0
.end method

.method public calculateMinScale()F
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 22
    move-result v0

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 26
    move-result v3

    .line 27
    if-eqz v0, :cond_30

    .line 29
    if-nez v3, :cond_1f

    .line 31
    goto :goto_30

    .line 32
    :cond_1f
    if-le v0, v3, :cond_28

    .line 34
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitWidth:I

    .line 36
    sub-int/2addr v1, v2

    .line 37
    int-to-float v1, v1

    .line 38
    int-to-float v0, v0

    .line 39
    div-float/2addr v1, v0

    .line 40
    goto :goto_2f

    .line 41
    :cond_28
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitHeight:I

    .line 43
    sub-int/2addr v0, v1

    .line 44
    int-to-float v0, v0

    .line 45
    int-to-float v1, v3

    .line 46
    div-float v1, v0, v1

    .line 48
    :goto_2f
    return v1

    .line 49
    :cond_30
    :goto_30
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    .line 51
    return v0
.end method

.method public calculateZoomScale()F
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    div-float/2addr v0, v3

    .line 30
    const/high16 v3, 0x40000000  # 2.0f

    .line 32
    cmpl-float v3, v0, v3

    .line 34
    if-lez v3, :cond_30

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 39
    move-result v0

    .line 40
    sub-int/2addr v0, v2

    .line 41
    int-to-float v0, v0

    .line 42
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 45
    move-result v1

    .line 46
    :goto_2d
    int-to-float v1, v1

    .line 47
    div-float/2addr v0, v1

    .line 48
    return v0

    .line 49
    :cond_30
    float-to-double v2, v0

    .line 50
    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    .line 52
    cmpg-double v0, v2, v4

    .line 54
    if-gez v0, :cond_42

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 59
    move-result v0

    .line 60
    sub-int/2addr v0, v1

    .line 61
    int-to-float v0, v0

    .line 62
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 65
    move-result v1

    .line 66
    goto :goto_2d

    .line 67
    :cond_42
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    .line 69
    return v0
.end method

.method public checkImageLoaded()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    .line 7
    if-nez v1, :cond_1a

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->preDraw()V

    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageLoaded()V

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 22
    if-eqz v1, :cond_1a

    .line 24
    invoke-interface {v1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onImageLoaded()V

    .line 27
    :cond_1a
    return v0
.end method

.method public checkReady()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_21

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_21

    .line 14
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 16
    if-lez v0, :cond_21

    .line 18
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 20
    if-lez v0, :cond_21

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    if-nez v0, :cond_1f

    .line 26
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_21

    .line 32
    :cond_1f
    move v0, v1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    :goto_22
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    .line 37
    if-nez v2, :cond_37

    .line 39
    if-eqz v0, :cond_37

    .line 41
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->preDraw()V

    .line 44
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onReady()V

    .line 49
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 51
    if-eqz v1, :cond_37

    .line 53
    invoke-interface {v1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onReady()V

    .line 56
    :cond_37
    return v0
.end method

.method public fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    goto :goto_51

    .line 11
    :cond_a
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x5a

    .line 17
    if-ne v0, v1, :cond_23

    .line 19
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 21
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 23
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 25
    sub-int v2, v1, v2

    .line 27
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 31
    sub-int/2addr v1, p1

    .line 32
    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    goto :goto_51

    .line 36
    :cond_23
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 39
    move-result v0

    .line 40
    const/16 v1, 0xb4

    .line 42
    if-ne v0, v1, :cond_41

    .line 44
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 46
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 48
    sub-int v1, v0, v1

    .line 50
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 52
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 54
    sub-int v3, v2, v3

    .line 56
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 58
    sub-int/2addr v0, v4

    .line 59
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 61
    sub-int/2addr v2, p1

    .line 62
    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    goto :goto_51

    .line 66
    :cond_41
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 68
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 70
    sub-int v1, v0, v1

    .line 72
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 74
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 76
    sub-int/2addr v0, v3

    .line 77
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 79
    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    :goto_51
    return-void
.end method

.method public final getAppliedOrientation()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v1

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 13
    int-to-float v0, v0

    .line 14
    int-to-float v1, v1

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getExifOrientation(Ljava/lang/String;)I
    .registers 6

    .line 1
    const-string v0, "file:///"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_59

    .line 10
    const-string v0, "file:///android_asset/"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_59

    .line 18
    :try_start_11
    new-instance v0, Landroid/media/ExifInterface;

    .line 20
    const/4 v2, 0x7

    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 28
    const-string p1, "Orientation"

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, p1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 34
    move-result p1

    .line 35
    if-eq p1, v2, :cond_59

    .line 37
    if-nez p1, :cond_27

    .line 39
    goto :goto_59

    .line 40
    :cond_27
    const/4 v0, 0x6

    .line 41
    if-ne p1, v0, :cond_2e

    .line 43
    const/16 p1, 0x5a

    .line 45
    :goto_2c
    move v1, p1

    .line 46
    goto :goto_59

    .line 47
    :cond_2e
    const/4 v0, 0x3

    .line 48
    if-ne p1, v0, :cond_34

    .line 50
    const/16 p1, 0xb4

    .line 52
    goto :goto_2c

    .line 53
    :cond_34
    const/16 v0, 0x8

    .line 55
    if-ne p1, v0, :cond_3b

    .line 57
    const/16 p1, 0x10e

    .line 59
    goto :goto_2c

    .line 60
    :cond_3b
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v3, "Unsupported EXIF orientation: "

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_51} :catch_52

    .line 82
    goto :goto_59

    .line 83
    :catch_52
    sget-object p1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    .line 85
    const-string v0, "Could not get EXIF orientation of image"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_59
    :goto_59
    return v1
.end method

.method public getMaxScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    .line 3
    return v0
.end method

.method public final getMinScale()F
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    .line 3
    return v0
.end method

.method public final getSHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 3
    return v0
.end method

.method public final getSWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 3
    return v0
.end method

.method public final getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 3
    return v0
.end method

.method public final getState()Lcom/android/fileexplorer/view/viewlarge/ImageViewState;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 7
    if-lez v0, :cond_1e

    .line 9
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 11
    if-lez v0, :cond_1e

    .line 13
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getScale()F

    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    .line 26
    move-result v3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    .line 30
    return-object v0

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method public final isImageLoaded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    .line 3
    return v0
.end method

.method public final isPanEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 3
    return v0
.end method

.method public final isQuickScaleEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    .line 3
    return v0
.end method

.method public final isReady()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    .line 3
    return v0
.end method

.method public final isZoomEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    .line 3
    return v0
.end method

.method public loadBytes([B)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Load bytes without tile!"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v4

    .line 20
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v2, v0

    .line 25
    move-object v3, p0

    .line 26
    move-object v7, p1

    .line 27
    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    .line 30
    const/4 p1, 0x0

    .line 31
    new-array p1, p1, [Ljava/lang/Void;

    .line 33
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method

.method public loadFile(Landroid/net/Uri;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "Load "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, " without tile!"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapDecoderFactory:Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move-object v2, v0

    .line 45
    move-object v3, p0

    .line 46
    move-object v6, p1

    .line 47
    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V

    .line 50
    const/4 p1, 0x0

    .line 51
    new-array p1, p1, [Ljava/lang/Void;

    .line 53
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 29

    .line 1
    move-object/from16 v10, p0

    .line 3
    move-object/from16 v11, p1

    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->createPaints()V

    .line 11
    iget v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 13
    if-eqz v0, :cond_4de

    .line 15
    iget v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 17
    if-eqz v0, :cond_4de

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4de

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_20

    .line 31
    goto/16 :goto_4de

    .line 33
    :cond_20
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 35
    if-nez v0, :cond_34

    .line 37
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 39
    if-eqz v0, :cond_34

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    .line 44
    move-result v0

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    .line 48
    move-result v1

    .line 49
    invoke-direct {v10, v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->initialiseBaseLayer(II)Z

    .line 52
    return-void

    .line 53
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3b

    .line 59
    return-void

    .line 60
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->preDraw()V

    .line 63
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 65
    if-eqz v0, :cond_de

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    move-result-wide v0

    .line 71
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 73
    iget-wide v3, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    .line 75
    sub-long/2addr v0, v3

    .line 76
    iget-wide v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    .line 78
    cmp-long v4, v0, v2

    .line 80
    if-lez v4, :cond_53

    .line 82
    const/4 v4, 0x1

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    const/4 v4, 0x0

    .line 85
    :goto_54
    move v8, v4

    .line 86
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 89
    move-result-wide v12

    .line 90
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 92
    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    .line 94
    iget v4, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleStart:F

    .line 96
    iget v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleEnd:F

    .line 98
    sub-float v5, v2, v4

    .line 100
    iget-wide v6, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    .line 102
    move-object/from16 v0, p0

    .line 104
    move-wide v2, v12

    .line 105
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->ease(IJFFJ)F

    .line 108
    move-result v0

    .line 109
    iput v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 111
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 113
    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    .line 115
    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusStart:Landroid/graphics/PointF;

    .line 117
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 119
    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    .line 121
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 123
    sub-float v5, v2, v4

    .line 125
    iget-wide v6, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    .line 127
    move-object/from16 v0, p0

    .line 129
    move-wide v2, v12

    .line 130
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->ease(IJFFJ)F

    .line 133
    move-result v9

    .line 134
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 136
    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    .line 138
    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusStart:Landroid/graphics/PointF;

    .line 140
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 142
    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    .line 144
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 146
    sub-float v5, v2, v4

    .line 148
    iget-wide v6, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    .line 150
    move-object/from16 v0, p0

    .line 152
    move-wide v2, v12

    .line 153
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->ease(IJFFJ)F

    .line 156
    move-result v0

    .line 157
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 159
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 161
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 163
    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    .line 165
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 167
    invoke-direct {v10, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewX(F)F

    .line 170
    move-result v3

    .line 171
    sub-float/2addr v3, v9

    .line 172
    sub-float/2addr v2, v3

    .line 173
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 175
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 177
    iget v2, v1, Landroid/graphics/PointF;->y:F

    .line 179
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 181
    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    .line 183
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 185
    invoke-direct {v10, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewY(F)F

    .line 188
    move-result v3

    .line 189
    sub-float/2addr v3, v0

    .line 190
    sub-float/2addr v2, v3

    .line 191
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 193
    if-nez v8, :cond_cf

    .line 195
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 197
    iget v1, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleStart:F

    .line 199
    iget v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleEnd:F

    .line 201
    cmpl-float v0, v1, v0

    .line 203
    if-nez v0, :cond_cd

    .line 205
    goto :goto_cf

    .line 206
    :cond_cd
    const/4 v0, 0x0

    .line 207
    goto :goto_d0

    .line 208
    :cond_cf
    :goto_cf
    const/4 v0, 0x1

    .line 209
    :goto_d0
    invoke-direct {v10, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 212
    invoke-direct {v10, v8}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 215
    if-eqz v8, :cond_db

    .line 217
    const/4 v0, 0x0

    .line 218
    iput-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 220
    :cond_db
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 223
    :cond_de
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 225
    const/16 v13, 0x5a

    .line 227
    if-eqz v0, :cond_41c

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_41c

    .line 235
    iget v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mFullImageSampleSize:I

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calculateInSampleSize()I

    .line 240
    move-result v1

    .line 241
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 244
    move-result v14

    .line 245
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 247
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 250
    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 254
    move-result-object v0

    .line 255
    const/4 v1, 0x0

    .line 256
    move v15, v1

    .line 257
    :cond_100
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_13c

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Ljava/lang/Integer;

    .line 275
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 278
    move-result v2

    .line 279
    if-ne v2, v14, :cond_100

    .line 281
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Ljava/util/List;

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    move-result-object v1

    .line 291
    :cond_122
    :goto_122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_100

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    .line 303
    iget-boolean v3, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 305
    if-eqz v3, :cond_122

    .line 307
    iget-boolean v3, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    .line 309
    if-nez v3, :cond_13a

    .line 311
    iget-object v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 313
    if-nez v2, :cond_122

    .line 315
    :cond_13a
    const/4 v15, 0x1

    .line 316
    goto :goto_122

    .line 317
    :cond_13c
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileMap:Ljava/util/Map;

    .line 319
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 322
    move-result-object v0

    .line 323
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 326
    move-result-object v16

    .line 327
    :cond_146
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_320

    .line 333
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 342
    move-result-object v1

    .line 343
    check-cast v1, Ljava/lang/Integer;

    .line 345
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 348
    move-result v1

    .line 349
    if-eq v1, v14, :cond_160

    .line 351
    if-eqz v15, :cond_146

    .line 353
    :cond_160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Ljava/util/List;

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 362
    move-result-object v17

    .line 363
    :cond_16a
    :goto_16a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_146

    .line 369
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    move-result-object v0

    .line 373
    move-object v9, v0

    .line 374
    check-cast v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    .line 376
    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 378
    iget-object v1, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 380
    invoke-direct {v10, v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 383
    iget-boolean v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    .line 385
    if-nez v0, :cond_2b0

    .line 387
    iget-object v1, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 389
    if-eqz v1, :cond_2b0

    .line 391
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    .line 393
    if-eqz v0, :cond_18f

    .line 395
    iget-object v1, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 397
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 400
    :cond_18f
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 402
    if-nez v0, :cond_19a

    .line 404
    new-instance v0, Landroid/graphics/Matrix;

    .line 406
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 409
    iput-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 411
    :cond_19a
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 416
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSrcArray:[F

    .line 418
    const/4 v2, 0x0

    .line 419
    const/4 v3, 0x0

    .line 420
    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 422
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 425
    move-result v0

    .line 426
    int-to-float v4, v0

    .line 427
    const/4 v5, 0x0

    .line 428
    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 430
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 433
    move-result v0

    .line 434
    int-to-float v6, v0

    .line 435
    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 437
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 440
    move-result v0

    .line 441
    int-to-float v7, v0

    .line 442
    const/4 v8, 0x0

    .line 443
    iget-object v0, v9, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 445
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 448
    move-result v0

    .line 449
    int-to-float v0, v0

    .line 450
    move/from16 v18, v0

    .line 452
    move-object/from16 v0, p0

    .line 454
    move-object v12, v9

    .line 455
    move/from16 v9, v18

    .line 457
    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 463
    move-result v0

    .line 464
    if-nez v0, :cond_1f9

    .line 466
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    .line 468
    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 470
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 472
    int-to-float v3, v2

    .line 473
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 475
    int-to-float v5, v4

    .line 476
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 478
    int-to-float v7, v6

    .line 479
    int-to-float v8, v4

    .line 480
    int-to-float v6, v6

    .line 481
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 483
    int-to-float v9, v0

    .line 484
    int-to-float v4, v2

    .line 485
    int-to-float v2, v0

    .line 486
    move-object/from16 v0, p0

    .line 488
    move/from16 v18, v2

    .line 490
    move v2, v3

    .line 491
    move v3, v5

    .line 492
    move/from16 v19, v4

    .line 494
    move v4, v7

    .line 495
    move v5, v8

    .line 496
    move v7, v9

    .line 497
    move/from16 v8, v19

    .line 499
    move/from16 v9, v18

    .line 501
    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 504
    goto/16 :goto_286

    .line 506
    :cond_1f9
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 509
    move-result v0

    .line 510
    if-ne v0, v13, :cond_228

    .line 512
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    .line 514
    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 516
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 518
    int-to-float v3, v2

    .line 519
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 521
    int-to-float v5, v4

    .line 522
    int-to-float v6, v2

    .line 523
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 525
    int-to-float v7, v2

    .line 526
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 528
    int-to-float v8, v0

    .line 529
    int-to-float v9, v2

    .line 530
    int-to-float v2, v0

    .line 531
    int-to-float v4, v4

    .line 532
    move-object/from16 v0, p0

    .line 534
    move/from16 v18, v2

    .line 536
    move v2, v3

    .line 537
    move v3, v5

    .line 538
    move/from16 v19, v4

    .line 540
    move v4, v6

    .line 541
    move v5, v7

    .line 542
    move v6, v8

    .line 543
    move v7, v9

    .line 544
    move/from16 v8, v18

    .line 546
    move/from16 v9, v19

    .line 548
    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 551
    goto/16 :goto_286

    .line 553
    :cond_228
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 556
    move-result v0

    .line 557
    const/16 v1, 0xb4

    .line 559
    if-ne v0, v1, :cond_257

    .line 561
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    .line 563
    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 565
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 567
    int-to-float v3, v2

    .line 568
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 570
    int-to-float v5, v4

    .line 571
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 573
    int-to-float v7, v6

    .line 574
    int-to-float v8, v4

    .line 575
    int-to-float v6, v6

    .line 576
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 578
    int-to-float v9, v0

    .line 579
    int-to-float v4, v2

    .line 580
    int-to-float v2, v0

    .line 581
    move-object/from16 v0, p0

    .line 583
    move/from16 v18, v2

    .line 585
    move v2, v3

    .line 586
    move v3, v5

    .line 587
    move/from16 v19, v4

    .line 589
    move v4, v7

    .line 590
    move v5, v8

    .line 591
    move v7, v9

    .line 592
    move/from16 v8, v19

    .line 594
    move/from16 v9, v18

    .line 596
    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 599
    goto :goto_286

    .line 600
    :cond_257
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getRequiredRotation()I

    .line 603
    move-result v0

    .line 604
    const/16 v1, 0x10e

    .line 606
    if-ne v0, v1, :cond_286

    .line 608
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    .line 610
    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 612
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 614
    int-to-float v3, v2

    .line 615
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 617
    int-to-float v5, v4

    .line 618
    int-to-float v6, v2

    .line 619
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 621
    int-to-float v7, v2

    .line 622
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 624
    int-to-float v8, v0

    .line 625
    int-to-float v9, v2

    .line 626
    int-to-float v2, v0

    .line 627
    int-to-float v4, v4

    .line 628
    move-object/from16 v0, p0

    .line 630
    move/from16 v18, v2

    .line 632
    move v2, v3

    .line 633
    move v3, v5

    .line 634
    move/from16 v19, v4

    .line 636
    move v4, v6

    .line 637
    move v5, v7

    .line 638
    move v6, v8

    .line 639
    move v7, v9

    .line 640
    move/from16 v8, v18

    .line 642
    move/from16 v9, v19

    .line 644
    invoke-direct/range {v0 .. v9}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 647
    :cond_286
    :goto_286
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 649
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSrcArray:[F

    .line 651
    const/16 v22, 0x0

    .line 653
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDstArray:[F

    .line 655
    const/16 v24, 0x0

    .line 657
    const/16 v25, 0x4

    .line 659
    move-object/from16 v20, v0

    .line 661
    move-object/from16 v21, v1

    .line 663
    move-object/from16 v23, v2

    .line 665
    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 668
    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 670
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 672
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 674
    invoke-virtual {v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 677
    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    .line 679
    if-eqz v0, :cond_2ca

    .line 681
    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 683
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 685
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 688
    goto :goto_2ca

    .line 689
    :cond_2b0
    move-object v12, v9

    .line 690
    if-eqz v0, :cond_2ca

    .line 692
    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    .line 694
    if-eqz v0, :cond_2ca

    .line 696
    iget-object v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 698
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 700
    add-int/lit8 v1, v1, 0x5

    .line 702
    int-to-float v1, v1

    .line 703
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 705
    add-int/lit8 v0, v0, 0x23

    .line 707
    int-to-float v0, v0

    .line 708
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 710
    const-string v3, "LOADING"

    .line 712
    invoke-virtual {v11, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 715
    :cond_2ca
    :goto_2ca
    iget-boolean v0, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->visible:Z

    .line 717
    if-eqz v0, :cond_16a

    .line 719
    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    .line 721
    if-eqz v0, :cond_16a

    .line 723
    const-string v0, "ISS "

    .line 725
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    move-result-object v0

    .line 729
    iget v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    const-string v1, " RECT "

    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    iget-object v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 741
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    const-string v1, ","

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object v2, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 753
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 755
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-object v2, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 763
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 765
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    iget-object v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    .line 773
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    move-result-object v0

    .line 782
    iget-object v1, v12, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->vRect:Landroid/graphics/Rect;

    .line 784
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 786
    add-int/lit8 v2, v2, 0x5

    .line 788
    int-to-float v2, v2

    .line 789
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 791
    add-int/lit8 v1, v1, 0xf

    .line 793
    int-to-float v1, v1

    .line 794
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 796
    invoke-virtual {v11, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 799
    goto/16 :goto_16a

    .line 801
    :cond_320
    iget-boolean v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    .line 803
    if-eqz v0, :cond_4de

    .line 805
    const-string v0, "Scale: "

    .line 807
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    move-result-object v0

    .line 811
    const/4 v1, 0x1

    .line 812
    new-array v1, v1, [Ljava/lang/Object;

    .line 814
    iget v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 816
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 819
    move-result-object v2

    .line 820
    const/4 v3, 0x0

    .line 821
    aput-object v2, v1, v3

    .line 823
    const-string v2, "%.2f"

    .line 825
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 828
    move-result-object v1

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    move-result-object v0

    .line 836
    const/high16 v1, 0x41700000  # 15.0f

    .line 838
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 840
    const/high16 v4, 0x40a00000  # 5.0f

    .line 842
    invoke-virtual {v11, v0, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    .line 847
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    const-string v1, "Translate: "

    .line 852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    const/4 v1, 0x1

    .line 856
    new-array v3, v1, [Ljava/lang/Object;

    .line 858
    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 860
    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 862
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 865
    move-result-object v5

    .line 866
    const/4 v6, 0x0

    .line 867
    aput-object v5, v3, v6

    .line 869
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 872
    move-result-object v3

    .line 873
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    const-string v3, ":"

    .line 878
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    new-array v1, v1, [Ljava/lang/Object;

    .line 883
    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 885
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 887
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 890
    move-result-object v5

    .line 891
    aput-object v5, v1, v6

    .line 893
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 896
    move-result-object v1

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    move-result-object v0

    .line 904
    const/high16 v1, 0x420c0000  # 35.0f

    .line 906
    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 908
    invoke-virtual {v11, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    .line 914
    move-result-object v0

    .line 915
    const-string v1, "Source center: "

    .line 917
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    move-result-object v1

    .line 921
    const/4 v5, 0x1

    .line 922
    new-array v6, v5, [Ljava/lang/Object;

    .line 924
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 926
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 929
    move-result-object v7

    .line 930
    const/4 v8, 0x0

    .line 931
    aput-object v7, v6, v8

    .line 933
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 936
    move-result-object v6

    .line 937
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    new-array v3, v5, [Ljava/lang/Object;

    .line 945
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 947
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 950
    move-result-object v0

    .line 951
    aput-object v0, v3, v8

    .line 953
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 956
    move-result-object v0

    .line 957
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    move-result-object v0

    .line 964
    const/high16 v1, 0x425c0000  # 55.0f

    .line 966
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 968
    invoke-virtual {v11, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 971
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 973
    if-eqz v0, :cond_4de

    .line 975
    iget-object v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    .line 977
    invoke-virtual {v10, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 980
    move-result-object v0

    .line 981
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 983
    iget-object v1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    .line 985
    invoke-virtual {v10, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 988
    move-result-object v1

    .line 989
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 991
    iget-object v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    .line 993
    invoke-virtual {v10, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 996
    move-result-object v2

    .line 997
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 999
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 1001
    const/high16 v4, 0x41200000  # 10.0f

    .line 1003
    iget-object v5, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 1005
    invoke-virtual {v11, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1008
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 1010
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 1012
    const/high16 v3, 0x41a00000  # 20.0f

    .line 1014
    iget-object v4, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 1016
    invoke-virtual {v11, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1019
    iget v0, v2, Landroid/graphics/PointF;->x:F

    .line 1021
    iget v1, v2, Landroid/graphics/PointF;->y:F

    .line 1023
    const/high16 v2, 0x41c80000  # 25.0f

    .line 1025
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 1027
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 1033
    move-result v0

    .line 1034
    div-int/lit8 v0, v0, 0x2

    .line 1036
    int-to-float v0, v0

    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 1040
    move-result v1

    .line 1041
    div-int/lit8 v1, v1, 0x2

    .line 1043
    int-to-float v1, v1

    .line 1044
    const/high16 v2, 0x41f00000  # 30.0f

    .line 1046
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 1048
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1051
    goto/16 :goto_4de

    .line 1053
    :cond_41c
    const/16 v0, 0xb4

    .line 1055
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1057
    if-eqz v1, :cond_4de

    .line 1059
    iget v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 1061
    iget-boolean v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    .line 1063
    if-eqz v3, :cond_446

    .line 1065
    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 1067
    int-to-float v3, v3

    .line 1068
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1071
    move-result v1

    .line 1072
    int-to-float v1, v1

    .line 1073
    div-float/2addr v3, v1

    .line 1074
    mul-float/2addr v2, v3

    .line 1075
    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 1077
    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 1079
    int-to-float v3, v3

    .line 1080
    iget-object v4, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1082
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1085
    move-result v4

    .line 1086
    int-to-float v4, v4

    .line 1087
    div-float/2addr v3, v4

    .line 1088
    mul-float/2addr v1, v3

    .line 1089
    move/from16 v26, v2

    .line 1091
    move v2, v1

    .line 1092
    move/from16 v1, v26

    .line 1094
    goto :goto_447

    .line 1095
    :cond_446
    move v1, v2

    .line 1096
    :goto_447
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1098
    if-nez v3, :cond_452

    .line 1100
    new-instance v3, Landroid/graphics/Matrix;

    .line 1102
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1105
    iput-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1107
    :cond_452
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1109
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1112
    iget-object v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1114
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1117
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    .line 1122
    move-result v2

    .line 1123
    int-to-float v2, v2

    .line 1124
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1127
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1129
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 1131
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 1133
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 1135
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    .line 1141
    move-result v1

    .line 1142
    const/4 v2, 0x0

    .line 1143
    if-ne v1, v0, :cond_488

    .line 1145
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1147
    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 1149
    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 1151
    int-to-float v3, v3

    .line 1152
    mul-float/2addr v3, v1

    .line 1153
    iget v4, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 1155
    int-to-float v4, v4

    .line 1156
    mul-float/2addr v1, v4

    .line 1157
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1160
    goto :goto_4ad

    .line 1161
    :cond_488
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    .line 1164
    move-result v0

    .line 1165
    if-ne v0, v13, :cond_49a

    .line 1167
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1169
    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 1171
    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 1173
    int-to-float v3, v3

    .line 1174
    mul-float/2addr v1, v3

    .line 1175
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1178
    goto :goto_4ad

    .line 1179
    :cond_49a
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getOrientation()I

    .line 1182
    move-result v0

    .line 1183
    const/16 v1, 0x10e

    .line 1185
    if-ne v0, v1, :cond_4ad

    .line 1187
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1189
    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 1191
    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 1193
    int-to-float v3, v3

    .line 1194
    mul-float/2addr v1, v3

    .line 1195
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1198
    :cond_4ad
    :goto_4ad
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    .line 1200
    if-eqz v0, :cond_4d5

    .line 1202
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    .line 1204
    if-nez v0, :cond_4bc

    .line 1206
    new-instance v0, Landroid/graphics/RectF;

    .line 1208
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1211
    iput-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    .line 1213
    :cond_4bc
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    .line 1215
    iget v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 1217
    int-to-float v1, v1

    .line 1218
    iget v3, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 1220
    int-to-float v3, v3

    .line 1221
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1224
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1226
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    .line 1228
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1231
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRect:Landroid/graphics/RectF;

    .line 1233
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    .line 1235
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1238
    :cond_4d5
    iget-object v0, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1240
    iget-object v1, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 1242
    iget-object v2, v10, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 1244
    invoke-virtual {v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1247
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 4
    const/4 v1, 0x0

    .line 5
    if-lez v0, :cond_1b

    .line 7
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 9
    if-lez v2, :cond_1b

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    move-result v2

    .line 15
    if-ne v0, v2, :cond_18

    .line 17
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    move-result v2

    .line 23
    if-eq v0, v2, :cond_1b

    .line 25
    :cond_18
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 30
    if-eqz v0, :cond_22

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    :cond_22
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    .line 37
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 51
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I

    .line 53
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_40

    .line 59
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkImageLoaded()Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_46

    .line 65
    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 71
    :cond_46
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result p1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p2

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/high16 v4, 0x40000000  # 2.0f

    .line 21
    if-eq v0, v4, :cond_18

    .line 23
    move v0, v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v3

    .line 26
    :goto_19
    if-eq v1, v4, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v2, v3

    .line 30
    :goto_1d
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 32
    if-lez v1, :cond_53

    .line 34
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 36
    if-lez v1, :cond_53

    .line 38
    if-eqz v0, :cond_32

    .line 40
    if-eqz v2, :cond_32

    .line 42
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 45
    move-result p1

    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 49
    move-result p2

    .line 50
    goto :goto_53

    .line 51
    :cond_32
    if-eqz v2, :cond_43

    .line 53
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 56
    move-result p2

    .line 57
    int-to-double v0, p2

    .line 58
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 61
    move-result p2

    .line 62
    int-to-double v2, p2

    .line 63
    div-double/2addr v0, v2

    .line 64
    int-to-double v2, p1

    .line 65
    mul-double/2addr v0, v2

    .line 66
    double-to-int p2, v0

    .line 67
    goto :goto_53

    .line 68
    :cond_43
    if-eqz v0, :cond_53

    .line 70
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 73
    move-result p1

    .line 74
    int-to-double v0, p1

    .line 75
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 78
    move-result p1

    .line 79
    int-to-double v2, p1

    .line 80
    div-double/2addr v0, v2

    .line 81
    int-to-double v2, p2

    .line 82
    mul-double/2addr v0, v2

    .line 83
    double-to-int p1, v0

    .line 84
    :cond_53
    :goto_53
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 87
    move-result v0

    .line 88
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result p1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 95
    move-result v0

    .line 96
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 99
    move-result p2

    .line 100
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 103
    return-void
.end method

.method public declared-synchronized onPreviewLoaded(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    if-nez v0, :cond_33

    .line 6
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mImageLoadedSent:Z

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_33

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    .line 13
    if-eqz v0, :cond_20

    .line 15
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 17
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result v0

    .line 23
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 28
    move-result v3

    .line 29
    invoke-static {p1, v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 32
    move-result-object p1

    .line 33
    :cond_20
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_31

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_38

    .line 50
    :cond_31
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_38
    move-exception p1

    .line 58
    monitor-exit p0

    .line 59
    throw p1
.end method

.method public onReady()V
    .registers 1

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    .line 4
    move-result-object p1

    .line 5
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mReadySent:Z

    .line 7
    if-eqz p2, :cond_17

    .line 9
    if-eqz p1, :cond_17

    .line 11
    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 14
    iget p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 16
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    .line 22
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 24
    :cond_17
    return-void
.end method

.method public declared-synchronized onTileLoaded()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkImageLoaded()Z

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isBaseLayerReady()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public declared-synchronized onTilesInited(Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;III)Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 4
    if-lez v0, :cond_1d

    .line 6
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 8
    if-lez v1, :cond_1d

    .line 10
    if-ne v0, p2, :cond_d

    .line 12
    if-eq v1, p3, :cond_1d

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 20
    if-eqz v1, :cond_1d

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPreview:Z

    .line 30
    :cond_1d
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDecoder:Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 32
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 34
    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 36
    iput p4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSOrientation:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_28

    .line 38
    const/4 p1, 0x1

    .line 39
    monitor-exit p0

    .line 40
    return p1

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_11

    .line 6
    iget-boolean v0, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->interruptible:Z

    .line 8
    if-nez v0, :cond_11

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    return v1

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 23
    if-nez v2, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 28
    const/4 v3, 0x0

    .line 29
    if-nez v2, :cond_2f

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDetector:Landroid/view/GestureDetector;

    .line 33
    if-eqz v2, :cond_28

    .line 35
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2f

    .line 41
    :cond_28
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 43
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 45
    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 47
    return v1

    .line 48
    :cond_2f
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 50
    const/4 v4, 0x0

    .line 51
    if-nez v2, :cond_3b

    .line 53
    new-instance v2, Landroid/graphics/PointF;

    .line 55
    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 58
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 60
    :cond_3b
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 62
    if-nez v2, :cond_46

    .line 64
    new-instance v2, Landroid/graphics/PointF;

    .line 66
    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 69
    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 71
    :cond_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 74
    move-result v2

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 78
    move-result v5

    .line 79
    const/high16 v6, 0x40000000  # 2.0f

    .line 81
    const/4 v7, 0x2

    .line 82
    if-eqz v5, :cond_3a5

    .line 84
    if-eq v5, v1, :cond_339

    .line 86
    if-eq v5, v7, :cond_67

    .line 88
    const/4 v4, 0x5

    .line 89
    if-eq v5, v4, :cond_3a5

    .line 91
    const/4 v4, 0x6

    .line 92
    if-eq v5, v4, :cond_339

    .line 94
    const/16 v4, 0x105

    .line 96
    if-eq v5, v4, :cond_3a5

    .line 98
    const/16 v0, 0x106

    .line 100
    if-eq v5, v0, :cond_339

    .line 102
    goto/16 :goto_334

    .line 104
    :cond_67
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 106
    if-lez v0, :cond_329

    .line 108
    const/high16 v0, 0x40a00000  # 5.0f

    .line 110
    if-lt v2, v7, :cond_177

    .line 112
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 115
    move-result v2

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 119
    move-result v4

    .line 120
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 123
    move-result v5

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 127
    move-result v8

    .line 128
    invoke-direct {p0, v2, v4, v5, v8}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->distance(FFFF)F

    .line 131
    move-result v2

    .line 132
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 135
    move-result v4

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 139
    move-result v5

    .line 140
    add-float/2addr v5, v4

    .line 141
    div-float/2addr v5, v6

    .line 142
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 145
    move-result v4

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 149
    move-result v8

    .line 150
    add-float/2addr v8, v4

    .line 151
    div-float/2addr v8, v6

    .line 152
    iget-boolean v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    .line 154
    if-eqz v4, :cond_329

    .line 156
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 158
    iget v9, v4, Landroid/graphics/PointF;->x:F

    .line 160
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 162
    invoke-direct {p0, v9, v5, v4, v8}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->distance(FFFF)F

    .line 165
    move-result v4

    .line 166
    cmpl-float v4, v4, v0

    .line 168
    if-gtz v4, :cond_b9

    .line 170
    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    .line 172
    sub-float v4, v2, v4

    .line 174
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 177
    move-result v4

    .line 178
    cmpl-float v0, v4, v0

    .line 180
    if-gtz v0, :cond_b9

    .line 182
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 184
    if-eqz v0, :cond_329

    .line 186
    :cond_b9
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 188
    if-eqz v0, :cond_c0

    .line 190
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    .line 193
    :cond_c0
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 197
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calMaxScale()F

    .line 200
    move-result v0

    .line 201
    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    .line 203
    div-float v4, v2, v4

    .line 205
    iget v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    .line 207
    mul-float/2addr v4, v9

    .line 208
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 211
    move-result v0

    .line 212
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 214
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 217
    move-result v4

    .line 218
    cmpg-float v0, v0, v4

    .line 220
    if-gtz v0, :cond_f3

    .line 222
    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    .line 224
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 227
    move-result v0

    .line 228
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    .line 230
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 232
    invoke-virtual {v0, v5, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 235
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 237
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 239
    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 242
    goto/16 :goto_16f

    .line 244
    :cond_f3
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 246
    if-eqz v0, :cond_11e

    .line 248
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 250
    if-eqz v0, :cond_fe

    .line 252
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    .line 255
    :cond_fe
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 257
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 259
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 261
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 263
    sub-float/2addr v2, v6

    .line 264
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 266
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 268
    sub-float/2addr v0, v4

    .line 269
    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 271
    iget v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    .line 273
    div-float v7, v4, v6

    .line 275
    mul-float/2addr v7, v2

    .line 276
    div-float/2addr v4, v6

    .line 277
    mul-float/2addr v4, v0

    .line 278
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 280
    sub-float/2addr v5, v7

    .line 281
    iput v5, v0, Landroid/graphics/PointF;->x:F

    .line 283
    sub-float/2addr v8, v4

    .line 284
    iput v8, v0, Landroid/graphics/PointF;->y:F

    .line 286
    goto :goto_16f

    .line 287
    :cond_11e
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 289
    if-eqz v0, :cond_147

    .line 291
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 296
    move-result v2

    .line 297
    div-int/2addr v2, v7

    .line 298
    int-to-float v2, v2

    .line 299
    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 301
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 303
    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 305
    mul-float/2addr v4, v5

    .line 306
    sub-float/2addr v2, v4

    .line 307
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 309
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 314
    move-result v2

    .line 315
    div-int/2addr v2, v7

    .line 316
    int-to-float v2, v2

    .line 317
    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 319
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 321
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 323
    mul-float/2addr v4, v5

    .line 324
    sub-float/2addr v2, v4

    .line 325
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 327
    goto :goto_16f

    .line 328
    :cond_147
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 333
    move-result v2

    .line 334
    div-int/2addr v2, v7

    .line 335
    int-to-float v2, v2

    .line 336
    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 338
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 341
    move-result v5

    .line 342
    int-to-float v5, v5

    .line 343
    mul-float/2addr v4, v5

    .line 344
    div-float/2addr v4, v6

    .line 345
    sub-float/2addr v2, v4

    .line 346
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 348
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 353
    move-result v2

    .line 354
    div-int/2addr v2, v7

    .line 355
    int-to-float v2, v2

    .line 356
    iget v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 358
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 361
    move-result v5

    .line 362
    int-to-float v5, v5

    .line 363
    mul-float/2addr v4, v5

    .line 364
    div-float/2addr v4, v6

    .line 365
    sub-float/2addr v2, v4

    .line 366
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 368
    :goto_16f
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 371
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 374
    goto/16 :goto_26f

    .line 376
    :cond_177
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 378
    if-eqz v2, :cond_272

    .line 380
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 382
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 387
    move-result v2

    .line 388
    sub-float/2addr v0, v2

    .line 389
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 392
    move-result v0

    .line 393
    mul-float/2addr v0, v6

    .line 394
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->QUICK_SCALE_THRESHOLD:F

    .line 396
    add-float/2addr v0, v2

    .line 397
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    .line 399
    const/high16 v5, -0x40800000  # -1.0f

    .line 401
    cmpl-float v2, v2, v5

    .line 403
    if-nez v2, :cond_196

    .line 405
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    .line 407
    :cond_196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 410
    move-result v2

    .line 411
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastPoint:Landroid/graphics/PointF;

    .line 413
    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 415
    cmpl-float v2, v2, v8

    .line 417
    if-lez v2, :cond_1a4

    .line 419
    move v2, v1

    .line 420
    goto :goto_1a5

    .line 421
    :cond_1a4
    move v2, v3

    .line 422
    :goto_1a5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 425
    move-result v8

    .line 426
    invoke-virtual {v5, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 429
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    .line 431
    div-float v5, v0, v5

    .line 433
    const/high16 v8, 0x3f800000  # 1.0f

    .line 435
    sub-float v5, v8, v5

    .line 437
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 440
    move-result v5

    .line 441
    const/high16 v9, 0x3f000000  # 0.5f

    .line 443
    mul-float/2addr v5, v9

    .line 444
    const v9, 0x3cf5c28f  # 0.03f

    .line 447
    cmpl-float v9, v5, v9

    .line 449
    if-gtz v9, :cond_1c6

    .line 451
    iget-boolean v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    .line 453
    if-eqz v9, :cond_267

    .line 455
    :cond_1c6
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    .line 457
    iget v9, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    .line 459
    cmpl-float v4, v9, v4

    .line 461
    if-lez v4, :cond_1d4

    .line 463
    if-eqz v2, :cond_1d3

    .line 465
    add-float/2addr v5, v8

    .line 466
    move v8, v5

    .line 467
    goto :goto_1d4

    .line 468
    :cond_1d3
    sub-float/2addr v8, v5

    .line 469
    :cond_1d4
    :goto_1d4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->minScale()F

    .line 472
    move-result v2

    .line 473
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->calMaxScale()F

    .line 476
    move-result v4

    .line 477
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 479
    mul-float/2addr v5, v8

    .line 480
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 483
    move-result v4

    .line 484
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 487
    move-result v2

    .line 488
    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 490
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 492
    if-eqz v2, :cond_216

    .line 494
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 496
    if-eqz v2, :cond_1f4

    .line 498
    invoke-interface {v2}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    .line 501
    :cond_1f4
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 503
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 505
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 507
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 509
    sub-float v6, v4, v6

    .line 511
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 513
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 515
    sub-float v5, v2, v5

    .line 517
    iget v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 519
    iget v8, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    .line 521
    div-float v9, v7, v8

    .line 523
    mul-float/2addr v9, v6

    .line 524
    div-float/2addr v7, v8

    .line 525
    mul-float/2addr v7, v5

    .line 526
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 528
    sub-float/2addr v4, v9

    .line 529
    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 531
    sub-float/2addr v2, v7

    .line 532
    iput v2, v5, Landroid/graphics/PointF;->y:F

    .line 534
    goto :goto_267

    .line 535
    :cond_216
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 537
    if-eqz v2, :cond_23f

    .line 539
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 544
    move-result v4

    .line 545
    div-int/2addr v4, v7

    .line 546
    int-to-float v4, v4

    .line 547
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 549
    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 551
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 553
    mul-float/2addr v5, v6

    .line 554
    sub-float/2addr v4, v5

    .line 555
    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 557
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 562
    move-result v4

    .line 563
    div-int/2addr v4, v7

    .line 564
    int-to-float v4, v4

    .line 565
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 567
    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 569
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 571
    mul-float/2addr v5, v6

    .line 572
    sub-float/2addr v4, v5

    .line 573
    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 575
    goto :goto_267

    .line 576
    :cond_23f
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 581
    move-result v4

    .line 582
    div-int/2addr v4, v7

    .line 583
    int-to-float v4, v4

    .line 584
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 586
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 589
    move-result v8

    .line 590
    int-to-float v8, v8

    .line 591
    mul-float/2addr v5, v8

    .line 592
    div-float/2addr v5, v6

    .line 593
    sub-float/2addr v4, v5

    .line 594
    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 596
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 601
    move-result v4

    .line 602
    div-int/2addr v4, v7

    .line 603
    int-to-float v4, v4

    .line 604
    iget v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 606
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 609
    move-result v7

    .line 610
    int-to-float v7, v7

    .line 611
    mul-float/2addr v5, v7

    .line 612
    div-float/2addr v5, v6

    .line 613
    sub-float/2addr v4, v5

    .line 614
    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 616
    :cond_267
    :goto_267
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleLastDistance:F

    .line 618
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 621
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 624
    :goto_26f
    move v3, v1

    .line 625
    goto/16 :goto_329

    .line 627
    :cond_272
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 629
    if-nez v2, :cond_329

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 634
    move-result v2

    .line 635
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 637
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 639
    sub-float/2addr v2, v4

    .line 640
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 643
    move-result v2

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 647
    move-result v4

    .line 648
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 650
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 652
    sub-float/2addr v4, v5

    .line 653
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 656
    move-result v4

    .line 657
    cmpl-float v5, v2, v0

    .line 659
    if-gtz v5, :cond_29c

    .line 661
    cmpl-float v0, v4, v0

    .line 663
    if-gtz v0, :cond_29c

    .line 665
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 667
    if-eqz v0, :cond_329

    .line 669
    :cond_29c
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 671
    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 673
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 678
    move-result v7

    .line 679
    iget-object v8, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 681
    iget v8, v8, Landroid/graphics/PointF;->x:F

    .line 683
    sub-float/2addr v7, v8

    .line 684
    add-float/2addr v7, v6

    .line 685
    iput v7, v0, Landroid/graphics/PointF;->x:F

    .line 687
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 689
    iget-object v6, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 691
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 696
    move-result v7

    .line 697
    iget-object v8, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 699
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 701
    sub-float/2addr v7, v8

    .line 702
    add-float/2addr v7, v6

    .line 703
    iput v7, v0, Landroid/graphics/PointF;->y:F

    .line 705
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 707
    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 709
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 711
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 714
    iget-object v7, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 716
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 718
    cmpl-float v6, v6, v8

    .line 720
    if-eqz v6, :cond_2d3

    .line 722
    move v6, v1

    .line 723
    goto :goto_2d4

    .line 724
    :cond_2d3
    move v6, v3

    .line 725
    :goto_2d4
    if-eqz v6, :cond_2e0

    .line 727
    cmpl-float v2, v2, v4

    .line 729
    if-lez v2, :cond_2e0

    .line 731
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 733
    if-nez v2, :cond_2e0

    .line 735
    move v2, v1

    .line 736
    goto :goto_2e1

    .line 737
    :cond_2e0
    move v2, v3

    .line 738
    :goto_2e1
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 740
    cmpl-float v0, v0, v7

    .line 742
    if-nez v0, :cond_2ef

    .line 744
    const/high16 v0, 0x41700000  # 15.0f

    .line 746
    cmpl-float v0, v4, v0

    .line 748
    if-lez v0, :cond_2ef

    .line 750
    move v0, v1

    .line 751
    goto :goto_2f0

    .line 752
    :cond_2ef
    move v0, v3

    .line 753
    :goto_2f0
    if-nez v2, :cond_2fd

    .line 755
    if-eqz v6, :cond_2fa

    .line 757
    if-nez v0, :cond_2fa

    .line 759
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 761
    if-eqz v0, :cond_2fd

    .line 763
    :cond_2fa
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 765
    goto :goto_30d

    .line 766
    :cond_2fd
    if-lez v5, :cond_30d

    .line 768
    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 770
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    .line 772
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 778
    move-result-object v0

    .line 779
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 782
    :cond_30d
    :goto_30d
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 784
    if-nez v0, :cond_324

    .line 786
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 788
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 790
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 792
    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 794
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 796
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 801
    move-result-object v0

    .line 802
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 805
    :cond_324
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 808
    goto/16 :goto_26f

    .line 810
    :cond_329
    :goto_329
    if-eqz v3, :cond_334

    .line 812
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    .line 814
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 820
    return v1

    .line 821
    :cond_334
    :goto_334
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 824
    move-result p1

    .line 825
    return p1

    .line 826
    :cond_339
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    .line 828
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 833
    if-eqz v0, :cond_34f

    .line 835
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 837
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleMoved:Z

    .line 839
    if-nez v0, :cond_34f

    .line 841
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleCenter:Landroid/graphics/PointF;

    .line 843
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 845
    invoke-direct {p0, v0, v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 848
    :cond_34f
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 850
    if-lez v0, :cond_39c

    .line 852
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 854
    if-nez v0, :cond_35b

    .line 856
    iget-boolean v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 858
    if-eqz v4, :cond_39c

    .line 860
    :cond_35b
    if-eqz v0, :cond_38d

    .line 862
    if-ne v2, v7, :cond_38d

    .line 864
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 866
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 868
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 870
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 872
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 874
    invoke-virtual {v0, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 880
    move-result v0

    .line 881
    if-ne v0, v1, :cond_380

    .line 883
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 885
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 888
    move-result v4

    .line 889
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 892
    move-result p1

    .line 893
    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 896
    goto :goto_38d

    .line 897
    :cond_380
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 899
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 902
    move-result v4

    .line 903
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 906
    move-result p1

    .line 907
    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 910
    :cond_38d
    :goto_38d
    const/4 p1, 0x3

    .line 911
    if-ge v2, p1, :cond_392

    .line 913
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 915
    :cond_392
    if-ge v2, v7, :cond_398

    .line 917
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 919
    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 921
    :cond_398
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 924
    return v1

    .line 925
    :cond_39c
    if-ne v2, v1, :cond_3a4

    .line 927
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isZooming:Z

    .line 929
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isPanning:Z

    .line 931
    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 933
    :cond_3a4
    return v1

    .line 934
    :cond_3a5
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 936
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 939
    move-result-object v0

    .line 940
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 943
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 945
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 948
    move-result v0

    .line 949
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 951
    if-lt v2, v7, :cond_40a

    .line 953
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    .line 955
    if-eqz v0, :cond_402

    .line 957
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 959
    if-eqz v0, :cond_3c3

    .line 961
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    .line 964
    :cond_3c3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 967
    move-result v0

    .line 968
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 971
    move-result v2

    .line 972
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 975
    move-result v4

    .line 976
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 979
    move-result v5

    .line 980
    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->distance(FFFF)F

    .line 983
    move-result v0

    .line 984
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 986
    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScaleStart:F

    .line 988
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVDistStart:F

    .line 990
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 992
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 994
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 996
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 998
    invoke-virtual {v0, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1001
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 1003
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 1006
    move-result v2

    .line 1007
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 1010
    move-result v4

    .line 1011
    add-float/2addr v4, v2

    .line 1012
    div-float/2addr v4, v6

    .line 1013
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 1016
    move-result v2

    .line 1017
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 1020
    move-result p1

    .line 1021
    add-float/2addr p1, v2

    .line 1022
    div-float/2addr p1, v6

    .line 1023
    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 1026
    goto :goto_404

    .line 1027
    :cond_402
    iput v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxTouchCount:I

    .line 1029
    :goto_404
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    .line 1031
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    goto :goto_42d

    .line 1035
    :cond_40a
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 1037
    if-nez v0, :cond_42d

    .line 1039
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslateStart:Landroid/graphics/PointF;

    .line 1041
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 1043
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 1045
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 1047
    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1050
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVCenterStart:Landroid/graphics/PointF;

    .line 1052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1055
    move-result v2

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 1059
    move-result p1

    .line 1060
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 1063
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mHandler:Landroid/os/Handler;

    .line 1065
    const-wide/16 v2, 0x258

    .line 1067
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1070
    :cond_42d
    :goto_42d
    return v1
.end method

.method public recycle()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebugPaint:Landroid/graphics/Paint;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    .line 12
    return-void
.end method

.method public final resetScaleAndCenter()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->limitedScale(F)F

    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_28

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 26
    move-result v1

    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 33
    move-result v2

    .line 34
    div-int/lit8 v2, v2, 0x2

    .line 36
    int-to-float v2, v2

    .line 37
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 40
    goto :goto_2e

    .line 41
    :cond_28
    new-instance v1, Landroid/graphics/PointF;

    .line 43
    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 46
    move-object v0, v1

    .line 47
    :goto_2e
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    return-void
.end method

.method public final setDebug(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDebug:Z

    .line 3
    return-void
.end method

.method public final setDoubleTapZoomDpi(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 13
    add-float/2addr v1, v0

    .line 14
    const/high16 v0, 0x40000000  # 2.0f

    .line 16
    div-float/2addr v1, v0

    .line 17
    int-to-float p1, p1

    .line 18
    div-float/2addr v1, p1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 22
    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomScale:F

    .line 3
    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mDoubleTapZoomStyle:I

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string v1, "Invalid zoom style: "

    .line 20
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V
    .registers 14

    if-eqz p1, :cond_18a

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    if-eqz p3, :cond_b

    .line 5
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->restoreState(Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    :cond_b
    const-string p3, "/"

    const-string v0, "android.resource://"

    const/4 v1, 0x0

    if-eqz p2, :cond_b7

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_af

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSWidth()I

    move-result v2

    if-lez v2, :cond_a7

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSHeight()I

    move-result v2

    if-lez v2, :cond_a7

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSWidth()I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSWidth:I

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSHeight()I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSHeight:I

    .line 10
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPRegion:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 12
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b7

    .line 13
    :cond_45
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBytes()[B

    move-result-object v2

    if-eqz v2, :cond_64

    .line 14
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBytes()[B

    move-result-object v8

    .line 15
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

    .line 16
    invoke-virtual {p2, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b7

    .line 17
    :cond_64
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_91

    .line 18
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 19
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20
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

    .line 21
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

    .line 22
    invoke-virtual {p2, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b7

    .line 23
    :cond_a7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used unless dimensions are provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used when a bitmap is provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_b7
    :goto_b7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_ec

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_ec

    .line 26
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

    .line 27
    :cond_ec
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_fb

    .line 28
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_189

    .line 29
    :cond_fb
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_12e

    .line 31
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12e

    .line 32
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 33
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

    .line 34
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getTile()Z

    move-result p2

    if-nez p2, :cond_172

    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p2, :cond_13a

    goto :goto_172

    .line 35
    :cond_13a
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_157

    .line 36
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

    .line 37
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

    .line 38
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

    .line 39
    :cond_18a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "imageSource must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/ImageViewState;)V

    return-void
.end method

.method public setInitSize(Landroid/content/Context;II)V
    .registers 4

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitHeight:I

    .line 7
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mInitWidth:I

    .line 9
    return-void
.end method

.method public final setMaxScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMaxScale:F

    .line 3
    return-void
.end method

.method public final setMaximumDpi(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 13
    add-float/2addr v1, v0

    .line 14
    const/high16 v0, 0x40000000  # 2.0f

    .line 16
    div-float/2addr v1, v0

    .line 17
    int-to-float p1, p1

    .line 18
    div-float/2addr v1, p1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMinScale(F)V

    .line 22
    return-void
.end method

.method public final setMinScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinScale:F

    .line 3
    return-void
.end method

.method public final setMinimumDpi(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 13
    add-float/2addr v1, v0

    .line 14
    const/high16 v0, 0x40000000  # 2.0f

    .line 16
    div-float/2addr v1, v0

    .line 17
    int-to-float p1, p1

    .line 18
    div-float/2addr v1, p1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 22
    return-void
.end method

.method public final setMinimumScaleType(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1c

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumScaleType:I

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1b

    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v1, "Invalid scale type: "

    .line 33
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public setMinimumTileDpi(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 13
    add-float/2addr v1, v0

    .line 14
    const/high16 v0, 0x40000000  # 2.0f

    .line 16
    div-float/2addr v1, v0

    .line 17
    int-to-float p1, p1

    .line 18
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 21
    move-result p1

    .line 22
    float-to-int p1, p1

    .line 23
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mMinimumTileDpi:I

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_25

    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 38
    :cond_25
    return-void
.end method

.method public setOnImageEventListener(Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 3
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3
    return-void
.end method

.method public final setOrientation(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_19

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mOrientation:I

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->reset(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 25
    return-void

    .line 26
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v1, "Invalid orientation: "

    .line 30
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0
.end method

.method public final setPanEnabled(Z)V
    .registers 6

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanEnabled:Z

    .line 3
    if-nez p1, :cond_3f

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 7
    if-eqz p1, :cond_3f

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 15
    int-to-float v0, v0

    .line 16
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sWidth()I

    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    mul-float/2addr v1, v2

    .line 24
    const/high16 v2, 0x40000000  # 2.0f

    .line 26
    div-float/2addr v1, v2

    .line 27
    sub-float/2addr v0, v1

    .line 28
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v0

    .line 36
    div-int/lit8 v0, v0, 0x2

    .line 38
    int-to-float v0, v0

    .line 39
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mScale:F

    .line 41
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sHeight()I

    .line 44
    move-result v3

    .line 45
    int-to-float v3, v3

    .line 46
    mul-float/2addr v1, v3

    .line 47
    div-float/2addr v1, v2

    .line 48
    sub-float/2addr v0, v1

    .line 49
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 51
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3f

    .line 57
    const/4 p1, 0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 64
    :cond_3f
    return-void
.end method

.method public final setPanLimit(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1c

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPanLimit:I

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->isReady()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1b

    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v1, "Invalid pan limit: "

    .line 33
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public final setQuickScaleEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mQuickScaleEnabled:Z

    .line 3
    return-void
.end method

.method public final setScaleAndCenter(FLandroid/graphics/PointF;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mAnim:Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mPendingScale:Ljava/lang/Float;

    .line 10
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSPendingCenter:Landroid/graphics/PointF;

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mSRequestedCenter:Landroid/graphics/PointF;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    .line 10
    goto :goto_1b

    .line 11
    :cond_a
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mTileBgPaint:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    return-void
.end method

.method public final setZoomEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mZoomEnabled:Z

    .line 3
    return-void
.end method

.method public final sourceToViewCoord(FF)Landroid/graphics/PointF;
    .registers 4

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 5
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

    .line 1
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

    .line 3
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FF)Landroid/graphics/PointF;
    .registers 4

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->mVTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 5
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

    .line 1
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

    .line 3
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
