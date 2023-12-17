.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# static fields
.field private static final CLIP_SAVE_FLAG:I = 0x2

.field private static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field private final dstInPaint:Landroid/graphics/Paint;

.field private final dstOutPaint:Landroid/graphics/Paint;

.field private inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field public final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 28
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 37
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 39
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 46
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 51
    new-instance v2, Lcom/airbnb/lottie/animation/LPaint;

    .line 53
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 55
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 58
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v2, Landroid/graphics/RectF;

    .line 62
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 67
    new-instance v2, Landroid/graphics/RectF;

    .line 69
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 74
    new-instance v2, Landroid/graphics/RectF;

    .line 76
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 81
    new-instance v2, Landroid/graphics/RectF;

    .line 83
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 86
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 88
    new-instance v2, Landroid/graphics/Matrix;

    .line 90
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 102
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 104
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 106
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "#draw"

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 131
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 134
    move-result-object p1

    .line 135
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 137
    if-ne p1, v1, :cond_95

    .line 139
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 141
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 143
    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 149
    goto :goto_9f

    .line 150
    :cond_95
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 152
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 154
    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    :goto_9f
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 167
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 170
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 173
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_fc

    .line 179
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    .line 182
    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 186
    move-result p1

    .line 187
    if-nez p1, :cond_fc

    .line 189
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 191
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    .line 194
    move-result-object p2

    .line 195
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 198
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 200
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 203
    move-result-object p1

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    move-result-object p1

    .line 208
    :goto_cf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_df

    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    move-result-object p2

    .line 218
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 220
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 223
    goto :goto_cf

    .line 224
    :cond_df
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 226
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    .line 229
    move-result-object p1

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 233
    move-result-object p1

    .line 234
    :goto_e9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_fc

    .line 240
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    move-result-object p2

    .line 244
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 246
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 249
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 252
    goto :goto_e9

    .line 253
    :cond_fc
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setupInOutAnimations()V

    .line 256
    return-void
.end method

.method public static synthetic access$000(Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/airbnb/lottie/model/layer/BaseLayer;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 4
    return-void
.end method

.method private applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Landroid/graphics/Path;

    .line 7
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 9
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 12
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 14
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 17
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {p5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result p3

    .line 29
    int-to-float p3, p3

    .line 30
    const p4, 0x40233333  # 2.55f

    .line 33
    mul-float/2addr p3, p4

    .line 34
    float-to-int p3, p3

    .line 35
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 40
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method private applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 5
    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object p3

    .line 12
    check-cast p3, Landroid/graphics/Path;

    .line 14
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 16
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 19
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 21
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 24
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Ljava/lang/Integer;

    .line 32
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p3

    .line 36
    int-to-float p3, p3

    .line 37
    const p4, 0x40233333  # 2.55f

    .line 40
    mul-float/2addr p3, p4

    .line 41
    float-to-int p3, p3

    .line 42
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 47
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 55
    return-void
.end method

.method private applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 5
    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroid/graphics/Path;

    .line 21
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 23
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 26
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 28
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 31
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {p5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Ljava/lang/Integer;

    .line 39
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result p3

    .line 43
    int-to-float p3, p3

    .line 44
    const p4, 0x40233333  # 2.55f

    .line 47
    mul-float/2addr p3, p4

    .line 48
    float-to-int p3, p3

    .line 49
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    return-void
.end method

.method private applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 5
    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 20
    move-result-object p5

    .line 21
    check-cast p5, Ljava/lang/Integer;

    .line 23
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p5

    .line 27
    int-to-float p5, p5

    .line 28
    const v0, 0x40233333  # 2.55f

    .line 31
    mul-float/2addr p5, v0

    .line 32
    float-to-int p5, p5

    .line 33
    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Landroid/graphics/Path;

    .line 42
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 44
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 47
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 49
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 52
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    return-void
.end method

.method private applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 5
    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 20
    move-result-object p5

    .line 21
    check-cast p5, Ljava/lang/Integer;

    .line 23
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p5

    .line 27
    int-to-float p5, p5

    .line 28
    const v0, 0x40233333  # 2.55f

    .line 31
    mul-float/2addr p5, v0

    .line 32
    float-to-int p5, p5

    .line 33
    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Landroid/graphics/Path;

    .line 42
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 44
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 47
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 49
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 52
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .registers 11

    .line 1
    const-string v0, "Layer#saveLayer"

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 8
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 10
    const/16 v3, 0x13

    .line 12
    invoke-static {p1, v1, v2, v3}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    const/16 v2, 0x1c

    .line 19
    if-ge v1, v2, :cond_17

    .line 21
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 24
    :cond_17
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_1b
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 30
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    if-ge v0, v1, :cond_d2

    .line 40
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 42
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    move-object v5, v1

    .line 51
    check-cast v5, Lcom/airbnb/lottie/model/content/Mask;

    .line 53
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 55
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    move-object v6, v1

    .line 64
    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 68
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    move-object v7, v1

    .line 77
    check-cast v7, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 79
    sget-object v1, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 81
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 88
    move-result v2

    .line 89
    aget v1, v1, v2

    .line 91
    const/16 v2, 0xff

    .line 93
    const/4 v3, 0x1

    .line 94
    if-eq v1, v3, :cond_bc

    .line 96
    const/4 v3, 0x2

    .line 97
    if-eq v1, v3, :cond_93

    .line 99
    const/4 v2, 0x3

    .line 100
    if-eq v1, v2, :cond_7f

    .line 102
    const/4 v2, 0x4

    .line 103
    if-eq v1, v2, :cond_6a

    .line 105
    goto/16 :goto_ce

    .line 107
    :cond_6a
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_78

    .line 113
    move-object v2, p0

    .line 114
    move-object v3, p1

    .line 115
    move-object v4, p2

    .line 116
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 119
    goto/16 :goto_ce

    .line 121
    :cond_78
    move-object v2, p0

    .line 122
    move-object v3, p1

    .line 123
    move-object v4, p2

    .line 124
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 127
    goto :goto_ce

    .line 128
    :cond_7f
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_8c

    .line 134
    move-object v2, p0

    .line 135
    move-object v3, p1

    .line 136
    move-object v4, p2

    .line 137
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 140
    goto :goto_ce

    .line 141
    :cond_8c
    move-object v2, p0

    .line 142
    move-object v3, p1

    .line 143
    move-object v4, p2

    .line 144
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 147
    goto :goto_ce

    .line 148
    :cond_93
    if-nez v0, :cond_a8

    .line 150
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 152
    const/high16 v3, -0x1000000

    .line 154
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 159
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 164
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 166
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 169
    :cond_a8
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_b5

    .line 175
    move-object v2, p0

    .line 176
    move-object v3, p1

    .line 177
    move-object v4, p2

    .line 178
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 181
    goto :goto_ce

    .line 182
    :cond_b5
    move-object v2, p0

    .line 183
    move-object v3, p1

    .line 184
    move-object v4, p2

    .line 185
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 188
    goto :goto_ce

    .line 189
    :cond_bc
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->areAllMasksNone()Z

    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_ce

    .line 195
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 197
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 202
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 207
    :cond_ce
    :goto_ce
    add-int/lit8 v0, v0, 0x1

    .line 209
    goto/16 :goto_1b

    .line 211
    :cond_d2
    const-string p2, "Layer#restoreLayer"

    .line 213
    invoke-static {p2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    invoke-static {p2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 222
    return-void
.end method

.method private applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Landroid/graphics/Path;

    .line 7
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 9
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 12
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 14
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 17
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 19
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    return-void
.end method

.method private areAllMasksNone()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    move v0, v1

    .line 16
    :goto_f
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 18
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    move-result v2

    .line 26
    if-ge v0, v2, :cond_33

    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 30
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/airbnb/lottie/model/content/Mask;

    .line 40
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 46
    if-eq v2, v3, :cond_30

    .line 48
    return v1

    .line 49
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_f

    .line 52
    :cond_33
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method private buildParentLayerListIfNeeded()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 8
    if-nez v0, :cond_10

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 26
    :goto_19
    if-eqz v0, :cond_23

    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 35
    goto :goto_19

    .line 36
    :cond_23
    return-void
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    const-string v0, "Layer#clearLayer"

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 8
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 10
    const/high16 v3, 0x3f800000  # 1.0f

    .line 12
    sub-float v5, v2, v3

    .line 14
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 16
    sub-float v6, v2, v3

    .line 18
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 20
    add-float v7, v2, v3

    .line 22
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 24
    add-float v8, v1, v3

    .line 26
    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 28
    move-object v4, p1

    .line 29
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 32
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 35
    return-void
.end method

.method public static forModel(Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;
    .registers 5

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType:[I

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 13
    packed-switch v0, :pswitch_data_52

    .line 16
    const-string p1, "Unknown layer type "

    .line 18
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :pswitch_25  #0x6
    new-instance p2, Lcom/airbnb/lottie/model/layer/TextLayer;

    .line 40
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/TextLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 43
    return-object p2

    .line 44
    :pswitch_2b  #0x5
    new-instance p2, Lcom/airbnb/lottie/model/layer/NullLayer;

    .line 46
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/NullLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 49
    return-object p2

    .line 50
    :pswitch_31  #0x4
    new-instance p2, Lcom/airbnb/lottie/model/layer/ImageLayer;

    .line 52
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 55
    return-object p2

    .line 56
    :pswitch_37  #0x3
    new-instance p2, Lcom/airbnb/lottie/model/layer/SolidLayer;

    .line 58
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 61
    return-object p2

    .line 62
    :pswitch_3d  #0x2
    new-instance v0, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    .line 75
    return-object v0

    .line 76
    :pswitch_4b  #0x1
    new-instance p2, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    .line 78
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 81
    return-object p2

    .line 82
    nop

    .line 83
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_3d  #00000002
        :pswitch_37  #00000003
        :pswitch_31  #00000004
        :pswitch_2b  #00000005
        :pswitch_25  #00000006
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_19
    if-ge v3, v0, :cond_ac

    .line 28
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 30
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/airbnb/lottie/model/content/Mask;

    .line 40
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 42
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 52
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/graphics/Path;

    .line 58
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 60
    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 63
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 65
    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 68
    sget-object v5, Lcom/airbnb/lottie/model/layer/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 70
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 77
    move-result v6

    .line 78
    aget v5, v5, v6

    .line 80
    const/4 v6, 0x1

    .line 81
    if-eq v5, v6, :cond_ab

    .line 83
    const/4 v6, 0x2

    .line 84
    if-eq v5, v6, :cond_ab

    .line 86
    const/4 v6, 0x3

    .line 87
    if-eq v5, v6, :cond_5c

    .line 89
    const/4 v6, 0x4

    .line 90
    if-eq v5, v6, :cond_5c

    .line 92
    goto :goto_63

    .line 93
    :cond_5c
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_63

    .line 99
    return-void

    .line 100
    :cond_63
    :goto_63
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 102
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 104
    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 107
    if-nez v3, :cond_74

    .line 109
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 111
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 113
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 116
    goto :goto_a7

    .line 117
    :cond_74
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 119
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 121
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 123
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 128
    move-result v5

    .line 129
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 131
    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 133
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 135
    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 140
    move-result v6

    .line 141
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 143
    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 145
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 147
    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 149
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 152
    move-result v7

    .line 153
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 155
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    .line 157
    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 159
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 161
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 164
    move-result v8

    .line 165
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 168
    :goto_a7
    add-int/lit8 v3, v3, 0x1

    .line 170
    goto/16 :goto_19

    .line 172
    :cond_ab
    return-void

    .line 173
    :cond_ac
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 175
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 178
    move-result p2

    .line 179
    if-nez p2, :cond_b7

    .line 181
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    :cond_b7
    return-void
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 27
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v0, v2, p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 33
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2b

    .line 41
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44
    :cond_2b
    return-void
.end method

.method private invalidateSelf()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method private recordRenderTime(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 13
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    .line 20
    return-void
.end method

.method private setVisible(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 10
    :cond_9
    return-void
.end method

.method private setupInOutAnimations()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_44

    .line 14
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 16
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 18
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 25
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 27
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setIsDiscrete()V

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 32
    new-instance v2, Lcom/airbnb/lottie/model/layer/BaseLayer$1;

    .line 34
    invoke-direct {v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 42
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Float;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 51
    move-result v0

    .line 52
    const/high16 v2, 0x3f800000  # 1.0f

    .line 54
    cmpl-float v0, v0, v2

    .line 56
    if-nez v0, :cond_3a

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 v1, 0x0

    .line 60
    :goto_3b
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 65
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    goto :goto_47

    .line 69
    :cond_44
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 72
    :goto_47
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

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
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    .line 6
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 8
    if-eqz v0, :cond_155

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 12
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->isHidden()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_13

    .line 18
    goto/16 :goto_155

    .line 20
    :cond_13
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 23
    const-string v0, "Layer#parentMatrix"

    .line 25
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 33
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 35
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 38
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    move-result v1

    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 46
    :goto_2d
    if-ltz v1, :cond_45

    .line 48
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 50
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 52
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 58
    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 60
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 67
    add-int/lit8 v1, v1, -0x1

    .line 69
    goto :goto_2d

    .line 70
    :cond_45
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 75
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_53

    .line 81
    const/16 v0, 0x64

    .line 83
    goto :goto_63

    .line 84
    :cond_53
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 86
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Integer;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 99
    move-result v0

    .line 100
    :goto_63
    int-to-float p3, p3

    .line 101
    const/high16 v1, 0x437f0000  # 255.0f

    .line 103
    div-float/2addr p3, v1

    .line 104
    int-to-float v0, v0

    .line 105
    mul-float/2addr p3, v0

    .line 106
    const/high16 v0, 0x42c80000  # 100.0f

    .line 108
    div-float/2addr p3, v0

    .line 109
    mul-float/2addr p3, v1

    .line 110
    float-to-int p3, p3

    .line 111
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 114
    move-result v0

    .line 115
    const-string v1, "Layer#drawLayer"

    .line 117
    if-nez v0, :cond_9c

    .line 119
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_9c

    .line 125
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 129
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 136
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 144
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 147
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 152
    move-result p1

    .line 153
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 156
    return-void

    .line 157
    :cond_9c
    const-string v0, "Layer#computeBounds"

    .line 159
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 164
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 166
    const/4 v4, 0x0

    .line 167
    invoke-virtual {p0, v2, v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 170
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 172
    invoke-direct {p0, v2, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 175
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 177
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 179
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 186
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 188
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 190
    invoke-direct {p0, v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 193
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 198
    move-result v3

    .line 199
    int-to-float v3, v3

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 203
    move-result v4

    .line 204
    int-to-float v4, v4

    .line 205
    const/4 v5, 0x0

    .line 206
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_d8

    .line 212
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 214
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 217
    :cond_d8
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 220
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 222
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_14b

    .line 228
    const-string v0, "Layer#saveLayer"

    .line 230
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 235
    const/16 v3, 0xff

    .line 237
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 242
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 244
    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 247
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 250
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 253
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 258
    invoke-virtual {p0, p1, v2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 261
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 264
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_112

    .line 270
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 272
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 275
    :cond_112
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 278
    move-result v1

    .line 279
    const-string v2, "Layer#restoreLayer"

    .line 281
    if-eqz v1, :cond_142

    .line 283
    const-string v1, "Layer#drawMatte"

    .line 285
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 288
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 293
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 295
    const/16 v5, 0x13

    .line 297
    invoke-static {p1, v3, v4, v5}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 300
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 303
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 306
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 308
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 311
    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 320
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 323
    :cond_142
    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 332
    :cond_14b
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 334
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 337
    move-result p1

    .line 338
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 341
    return-void

    .line 342
    :cond_155
    :goto_155
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 347
    return-void
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 15
    if-eqz p3, :cond_41

    .line 17
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 19
    if-eqz p1, :cond_32

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 27
    :goto_1a
    if-ltz p1, :cond_41

    .line 29
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 31
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 33
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 39
    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 50
    goto :goto_1a

    .line 51
    :cond_32
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 53
    if-eqz p1, :cond_41

    .line 55
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 57
    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 59
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 66
    :cond_41
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 68
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 70
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 77
    return-void
.end method

.method public getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasMasksOnThisLayer()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public hasMatteOnThisLayer()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onValueChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 4
    return-void
.end method

.method public removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "__container"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_30

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_30

    .line 42
    invoke-virtual {p4, p0}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_30
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_46

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    .line 66
    move-result v0

    .line 67
    add-int/2addr v0, p2

    .line 68
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 71
    :cond_46
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 3
    return-void
.end method

.method public setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 3
    return-void
.end method

.method public setProgress(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_29

    .line 11
    move v0, v1

    .line 12
    :goto_b
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 14
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_29

    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 26
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 36
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_b

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 47
    move-result v0

    .line 48
    const/4 v2, 0x0

    .line 49
    cmpl-float v0, v0, v2

    .line 51
    if-eqz v0, :cond_3b

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 55
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 58
    move-result v0

    .line 59
    div-float/2addr p1, v0

    .line 60
    :cond_3b
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 62
    if-eqz v0, :cond_4a

    .line 64
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 66
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 69
    move-result v2

    .line 70
    div-float v2, p1, v2

    .line 72
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 75
    :cond_4a
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 77
    if-eqz v0, :cond_5a

    .line 79
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 81
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 84
    move-result v0

    .line 85
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 87
    mul-float/2addr v0, p1

    .line 88
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 91
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 96
    move-result v0

    .line 97
    if-ge v1, v0, :cond_70

    .line 99
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 107
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 112
    goto :goto_5a

    .line 113
    :cond_70
    return-void
.end method
