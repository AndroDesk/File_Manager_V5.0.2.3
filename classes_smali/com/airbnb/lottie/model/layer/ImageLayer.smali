.class public Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "ImageLayer.java"


# instance fields
.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final dst:Landroid/graphics/Rect;

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 4
    new-instance p1, Lcom/airbnb/lottie/animation/LPaint;

    .line 6
    const/4 p2, 0x3

    .line 7
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 26
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 9
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 6
    if-ne p1, v0, :cond_14

    .line 8
    if-nez p2, :cond_d

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 13
    goto :goto_14

    .line 14
    :cond_d
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 16
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 21
    :cond_14
    :goto_14
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_58

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    goto :goto_58

    .line 14
    :cond_d
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 25
    if-eqz p3, :cond_25

    .line 27
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object p3

    .line 33
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 35
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 38
    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 44
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    move-result p3

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 58
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 63
    move-result p3

    .line 64
    int-to-float p3, p3

    .line 65
    mul-float/2addr p3, v1

    .line 66
    float-to-int p3, p3

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 70
    move-result v2

    .line 71
    int-to-float v2, v2

    .line 72
    mul-float/2addr v2, v1

    .line 73
    float-to-int v1, v2

    .line 74
    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 79
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 81
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 89
    :cond_58
    :goto_58
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_26

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    move-result p3

    .line 14
    int-to-float p3, p3

    .line 15
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 18
    move-result v0

    .line 19
    mul-float/2addr v0, p3

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    move-result p2

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 28
    move-result p3

    .line 29
    mul-float/2addr p3, p2

    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 36
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 39
    :cond_26
    return-void
.end method
