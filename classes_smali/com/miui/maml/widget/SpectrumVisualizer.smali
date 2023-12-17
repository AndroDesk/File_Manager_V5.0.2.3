.class public Lcom/miui/maml/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;,
        Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;
    }
.end annotation


# static fields
.field private static final CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static IS_LPA_DECODE:Z = false

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I

.field private static final TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private INDEX_SCALE_FACTOR:F

.field private final MAX_VALID_SAMPLE:I

.field private SAMPLE_SCALE_FACTOR:F

.field private VISUALIZE_DESC_HEIGHT:F

.field public mAlphaWidthNum:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field public mCellSize:I

.field public mDotbarHeight:I

.field private mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field public mPaint:Landroid/graphics/Paint;

.field public mPixels:[I

.field public mPointData:[F

.field private mSampleBuf:[S

.field public mShadowDotbarHeight:I

.field public mShadowPixels:[I

.field private mSoftDrawEnabled:Z

.field private mVisualizationHeight:I

.field public mVisualizationHeightNum:I

.field private mVisualizationWidth:I

.field public mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "persist.sys.lpa.decode"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/miui/maml/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    .line 10
    sget v0, Lcom/miui/maml/R$drawable;->sliding_panel_visualization_bg:I

    .line 12
    sput v0, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_PANEL_ID:I

    .line 14
    sget v0, Lcom/miui/maml/R$drawable;->sliding_panel_visualization_dot_bar:I

    .line 16
    sput v0, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_DOT_BAR_ID:I

    .line 18
    sget v0, Lcom/miui/maml/R$drawable;->sliding_panel_visualization_shadow_dot_bar:I

    .line 20
    sput v0, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0xa0

    new-array p3, p3, [S

    .line 5
    iput-object p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSampleBuf:[S

    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 7
    new-instance v0, Lcom/miui/maml/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$1;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    const/16 v0, 0x14

    .line 8
    iput v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 9
    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 10
    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    const/4 p3, 0x0

    .line 11
    iput p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    const-string v0, "audio"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_6f

    .line 13
    sget-object v1, Lcom/miui/maml/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 14
    sget v1, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_sliding_panel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 15
    sget v2, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_sliding_dot_bar:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 16
    sget v3, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_sliding_shadow_dot_bar:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 17
    sget v4, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_symmetry:I

    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 18
    sget v5, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_alpha_width:I

    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 19
    sget v5, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_update_enable:I

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 20
    sget v5, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_care_streamactive:I

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move p3, v4

    goto :goto_72

    :cond_6f
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_72
    if-nez v1, :cond_7e

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_PANEL_ID:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 23
    :cond_7e
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez v2, :cond_90

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_DOT_BAR_ID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 25
    :cond_90
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p3, :cond_aa

    if-nez v3, :cond_a4

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 27
    :cond_a4
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    :cond_aa
    invoke-virtual {p0, p2, v1, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 3
    const/16 v1, 0xff

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 10
    iget v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_c
    if-ge v1, v0, :cond_16

    .line 15
    iget-object v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    .line 17
    invoke-interface {v2, p1, v1}, Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_c

    .line 23
    :cond_16
    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 25
    :goto_18
    if-lez v0, :cond_36

    .line 27
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 29
    mul-int/lit16 v2, v0, 0xff

    .line 31
    iget v3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 33
    div-int/2addr v2, v3

    .line 34
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    .line 39
    add-int/lit8 v2, v0, -0x1

    .line 41
    invoke-interface {v1, p1, v2}, Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 44
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    .line 46
    iget v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 48
    sub-int/2addr v2, v0

    .line 49
    invoke-interface {v1, p1, v2}, Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 54
    goto :goto_18

    .line 55
    :cond_36
    return-void
.end method

.method private drawToBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v3

    .line 15
    if-ne v2, v3, :cond_1a

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v3

    .line 25
    if-eq v2, v3, :cond_1e

    .line 27
    :cond_1a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    const/4 v0, 0x0

    .line 31
    :cond_1e
    if-nez v0, :cond_37

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    move-result v1

    .line 41
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 43
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 49
    new-instance v1, Landroid/graphics/Canvas;

    .line 51
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    iput-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 56
    :cond_37
    const/4 v2, 0x0

    .line 57
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    invoke-direct {p0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    .line 65
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    return-void
.end method


# virtual methods
.method public enableDrawing(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 3
    return-void
.end method

.method public enableUpdate(Z)V
    .registers 7

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 3
    if-eq v0, p1, :cond_55

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3d

    .line 8
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 10
    if-nez v1, :cond_3d

    .line 12
    sget-boolean v1, Lcom/miui/maml/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    .line 14
    if-eqz v1, :cond_17

    .line 16
    const-string v0, "SpectrumVisualizer"

    .line 18
    const-string v1, "lpa decode is on, can\'t enable"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_4e

    .line 24
    :cond_17
    new-instance v1, Landroid/media/audiofx/Visualizer;

    .line 26
    invoke-direct {v1, v0}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    .line 29
    iput-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 31
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4e

    .line 37
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 39
    const/16 v2, 0x200

    .line 41
    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 44
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 46
    iget-object v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 48
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 56
    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 58
    invoke-virtual {v0, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 61
    goto :goto_4e

    .line 62
    :cond_3d
    if-nez p1, :cond_4e

    .line 64
    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 66
    if-eqz v1, :cond_4e

    .line 68
    invoke-virtual {v1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 71
    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 73
    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 79
    :cond_4e
    :goto_4e
    iput-boolean p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_50} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_50} :catch_55
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_50} :catch_51

    .line 81
    goto :goto_55

    .line 82
    :catch_51
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :catch_55
    :cond_55
    :goto_55
    return-void
.end method

.method public getVisualHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    .line 3
    return v0
.end method

.method public getVisualWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidth:I

    .line 3
    return v0
.end method

.method public isUpdateEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 11
    if-eqz v0, :cond_16

    .line 13
    invoke-direct {p0}, Lcom/miui/maml/widget/SpectrumVisualizer;->drawToBitmap()Landroid/graphics/Bitmap;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    invoke-direct {p0, p1}, Lcom/miui/maml/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    .line 26
    :goto_19
    return-void
.end method

.method public setAlphaNum(I)V
    .registers 4

    .line 1
    if-gtz p1, :cond_6

    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 6
    return-void

    .line 7
    :cond_6
    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 9
    div-int/lit8 v1, v0, 0x2

    .line 11
    if-le p1, v1, :cond_e

    .line 13
    div-int/lit8 p1, v0, 0x2

    .line 15
    :cond_e
    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 17
    return-void
.end method

.method public setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 13

    .line 3
    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidth:I

    .line 4
    iput p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 7
    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le p1, p2, :cond_16

    .line 8
    iput p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 9
    :cond_16
    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    mul-int p1, v6, v7

    new-array v1, p1, [I

    iput-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move v3, v6

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 12
    iget p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    div-int/2addr p3, p2

    iput p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    const/high16 p2, 0x41a00000  # 20.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 13
    iput p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    .line 14
    div-int/lit8 p1, p1, 0x3

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    const/high16 p1, 0x3f800000  # 1.0f

    .line 15
    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    .line 16
    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 17
    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-nez p2, :cond_5a

    .line 18
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :cond_5a
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    if-eqz p4, :cond_93

    .line 20
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 21
    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    add-int/2addr p1, p2

    iget p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le p1, p3, :cond_6f

    sub-int/2addr p3, p2

    .line 22
    iput p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 23
    :cond_6f
    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    if-ge v7, v6, :cond_7d

    .line 24
    new-instance p1, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {p1, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    return-void

    :cond_7d
    mul-int p1, v6, v7

    .line 25
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move v3, v6

    .line 26
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 27
    new-instance p1, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;

    invoke-direct {p1, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_9a

    .line 28
    :cond_93
    new-instance p1, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {p1, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    :goto_9a
    return-void
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/maml/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSoftDrawEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 3
    if-nez p1, :cond_10

    .line 5
    iget-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 7
    if-eqz p1, :cond_10

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 15
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 17
    :cond_10
    return-void
.end method

.method public update([B)V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_11

    .line 6
    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAudioManager:Landroid/media/AudioManager;

    .line 8
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_11

    .line 14
    invoke-virtual {p0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 17
    return-void

    .line 18
    :cond_11
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 22
    if-nez p1, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 27
    array-length v3, v2

    .line 28
    move v4, v1

    .line 29
    :goto_1c
    if-ge v4, v3, :cond_3a

    .line 31
    mul-int/lit8 v5, v4, 0x2

    .line 33
    aget-byte v6, p1, v5

    .line 35
    add-int/2addr v5, v0

    .line 36
    aget-byte v5, p1, v5

    .line 38
    mul-int/2addr v6, v6

    .line 39
    mul-int/2addr v5, v5

    .line 40
    add-int/2addr v5, v6

    .line 41
    int-to-double v5, v5

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 45
    move-result-wide v5

    .line 46
    double-to-int v5, v5

    .line 47
    const/16 v6, 0x7fff

    .line 49
    if-ge v5, v6, :cond_33

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v5, v6

    .line 53
    :goto_34
    int-to-short v5, v5

    .line 54
    aput-short v5, v2, v4

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 58
    goto :goto_1c

    .line 59
    :cond_3a
    move p1, v1

    .line 60
    move v4, p1

    .line 61
    move v5, v4

    .line 62
    :goto_3d
    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 64
    if-ge p1, v6, :cond_87

    .line 66
    move v6, v1

    .line 67
    :goto_42
    if-ge v5, v3, :cond_50

    .line 69
    aget-short v7, v2, v4

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 74
    move-result v6

    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 77
    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 79
    add-int/2addr v5, v7

    .line 80
    goto :goto_42

    .line 81
    :cond_50
    sub-int/2addr v5, v3

    .line 82
    if-le v6, v0, :cond_65

    .line 84
    add-int/lit8 v7, p1, 0x2

    .line 86
    int-to-double v7, v7

    .line 87
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    .line 90
    move-result-wide v7

    .line 91
    iget v9, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    .line 93
    float-to-double v9, v9

    .line 94
    div-double/2addr v7, v9

    .line 95
    double-to-float v7, v7

    .line 96
    add-int/lit8 v6, v6, -0x1

    .line 98
    int-to-float v6, v6

    .line 99
    mul-float/2addr v6, v7

    .line 100
    mul-float/2addr v6, v7

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    const/4 v6, 0x0

    .line 103
    :goto_66
    const/high16 v7, 0x41a00000  # 20.0f

    .line 105
    cmpl-float v7, v6, v7

    .line 107
    if-lez v7, :cond_70

    .line 109
    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 111
    int-to-float v6, v6

    .line 112
    goto :goto_73

    .line 113
    :cond_70
    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    .line 115
    div-float/2addr v6, v7

    .line 116
    :goto_73
    iget-object v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 118
    iget v8, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 120
    int-to-float v8, v8

    .line 121
    div-float/2addr v6, v8

    .line 122
    aget v8, v7, p1

    .line 124
    iget v9, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    .line 126
    sub-float/2addr v8, v9

    .line 127
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    .line 130
    move-result v6

    .line 131
    aput v6, v7, p1

    .line 133
    add-int/lit8 p1, p1, 0x1

    .line 135
    goto :goto_3d

    .line 136
    :cond_87
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 139
    return-void
.end method
