.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


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

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field public final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 6
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 45
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 49
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 51
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 53
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 62
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 65
    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 71
    invoke-virtual {p7}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 77
    if-nez p9, :cond_52

    .line 79
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 82
    goto :goto_58

    .line 83
    :cond_52
    invoke-virtual {p9}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 89
    :goto_58
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 94
    move-result p3

    .line 95
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 100
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 103
    move-result p1

    .line 104
    new-array p1, p1, [F

    .line 106
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 108
    const/4 p1, 0x0

    .line 109
    move p3, p1

    .line 110
    :goto_6d
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 113
    move-result p4

    .line 114
    if-ge p3, p4, :cond_85

    .line 116
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 118
    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object p5

    .line 122
    check-cast p5, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 124
    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 127
    move-result-object p5

    .line 128
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 p3, p3, 0x1

    .line 133
    goto :goto_6d

    .line 134
    :cond_85
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 136
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 139
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 141
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 144
    move p3, p1

    .line 145
    :goto_90
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 147
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 150
    move-result p4

    .line 151
    if-ge p3, p4, :cond_a6

    .line 153
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 155
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object p4

    .line 159
    check-cast p4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 161
    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 164
    add-int/lit8 p3, p3, 0x1

    .line 166
    goto :goto_90

    .line 167
    :cond_a6
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 169
    if-eqz p3, :cond_ad

    .line 171
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 174
    :cond_ad
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 176
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 179
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 181
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 184
    :goto_b7
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 187
    move-result p2

    .line 188
    if-ge p1, p2, :cond_cb

    .line 190
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 192
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object p2

    .line 196
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 198
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 201
    add-int/lit8 p1, p1, 0x1

    .line 203
    goto :goto_b7

    .line 204
    :cond_cb
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 206
    if-eqz p1, :cond_d2

    .line 208
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 211
    :cond_d2
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .registers 7

    .line 1
    const-string v0, "StrokeContent#applyDashPattern"

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_11

    .line 14
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 21
    move-result p1

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_16
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    if-ge v1, v2, :cond_5c

    .line 31
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 33
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 35
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/Float;

    .line 47
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 50
    move-result v3

    .line 51
    aput v3, v2, v1

    .line 53
    rem-int/lit8 v2, v1, 0x2

    .line 55
    if-nez v2, :cond_45

    .line 57
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 59
    aget v3, v2, v1

    .line 61
    const/high16 v4, 0x3f800000  # 1.0f

    .line 63
    cmpg-float v3, v3, v4

    .line 65
    if-gez v3, :cond_52

    .line 67
    aput v4, v2, v1

    .line 69
    goto :goto_52

    .line 70
    :cond_45
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 72
    aget v3, v2, v1

    .line 74
    const v4, 0x3dcccccd  # 0.1f

    .line 77
    cmpg-float v3, v3, v4

    .line 79
    if-gez v3, :cond_52

    .line 81
    aput v4, v2, v1

    .line 83
    :cond_52
    :goto_52
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 85
    aget v3, v2, v1

    .line 87
    mul-float/2addr v3, p1

    .line 88
    aput v3, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_16

    .line 93
    :cond_5c
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 95
    if-nez v1, :cond_62

    .line 97
    const/4 p1, 0x0

    .line 98
    goto :goto_6d

    .line 99
    :cond_62
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Float;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 108
    move-result v1

    .line 109
    mul-float/2addr p1, v1

    .line 110
    :goto_6d
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 112
    new-instance v2, Landroid/graphics/DashPathEffect;

    .line 114
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 116
    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 122
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 125
    return-void
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .registers 16

    .line 1
    const-string v0, "StrokeContent#applyTrimPath"

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_f

    .line 12
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 21
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 31
    :goto_1e
    if-ltz v1, :cond_36

    .line 33
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 35
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 45
    invoke-interface {v3}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 54
    goto :goto_1e

    .line 55
    :cond_36
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 57
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 63
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 65
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 68
    move-result v1

    .line 69
    :goto_44
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 71
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_54

    .line 77
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 79
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    .line 82
    move-result v2

    .line 83
    add-float/2addr v1, v2

    .line 84
    goto :goto_44

    .line 85
    :cond_54
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/Float;

    .line 99
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 102
    move-result v2

    .line 103
    mul-float/2addr v2, v1

    .line 104
    const/high16 v4, 0x43b40000  # 360.0f

    .line 106
    div-float/2addr v2, v4

    .line 107
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/Float;

    .line 121
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 124
    move-result v4

    .line 125
    mul-float/2addr v4, v1

    .line 126
    const/high16 v5, 0x42c80000  # 100.0f

    .line 128
    div-float/2addr v4, v5

    .line 129
    add-float/2addr v4, v2

    .line 130
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Ljava/lang/Float;

    .line 144
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 147
    move-result v6

    .line 148
    mul-float/2addr v6, v1

    .line 149
    div-float/2addr v6, v5

    .line 150
    add-float/2addr v6, v2

    .line 151
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 158
    move-result v2

    .line 159
    add-int/lit8 v2, v2, -0x1

    .line 161
    const/4 v5, 0x0

    .line 162
    move v7, v5

    .line 163
    :goto_a2
    if-ltz v2, :cond_134

    .line 165
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 167
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 170
    move-result-object v9

    .line 171
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v9

    .line 175
    check-cast v9, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 177
    invoke-interface {v9}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 180
    move-result-object v9

    .line 181
    invoke-virtual {v8, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 184
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 186
    invoke-virtual {v8, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 189
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 191
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 193
    invoke-virtual {v8, v9, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 196
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 198
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    .line 201
    move-result v8

    .line 202
    cmpl-float v9, v6, v1

    .line 204
    const/high16 v10, 0x3f800000  # 1.0f

    .line 206
    if-lez v9, :cond_f6

    .line 208
    sub-float v9, v6, v1

    .line 210
    add-float v11, v7, v8

    .line 212
    cmpg-float v11, v9, v11

    .line 214
    if-gez v11, :cond_f6

    .line 216
    cmpg-float v11, v7, v9

    .line 218
    if-gez v11, :cond_f6

    .line 220
    cmpl-float v11, v4, v1

    .line 222
    if-lez v11, :cond_e3

    .line 224
    sub-float v11, v4, v1

    .line 226
    div-float/2addr v11, v8

    .line 227
    goto :goto_e4

    .line 228
    :cond_e3
    move v11, v5

    .line 229
    :goto_e4
    div-float/2addr v9, v8

    .line 230
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    .line 233
    move-result v9

    .line 234
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 236
    invoke-static {v10, v11, v9, v5}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 239
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 241
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 243
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    goto :goto_12f

    .line 247
    :cond_f6
    add-float v9, v7, v8

    .line 249
    cmpg-float v11, v9, v4

    .line 251
    if-ltz v11, :cond_12f

    .line 253
    cmpl-float v11, v7, v6

    .line 255
    if-lez v11, :cond_101

    .line 257
    goto :goto_12f

    .line 258
    :cond_101
    cmpg-float v11, v9, v6

    .line 260
    if-gtz v11, :cond_111

    .line 262
    cmpg-float v11, v4, v7

    .line 264
    if-gez v11, :cond_111

    .line 266
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 268
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 270
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    goto :goto_12f

    .line 274
    :cond_111
    cmpg-float v11, v4, v7

    .line 276
    if-gez v11, :cond_117

    .line 278
    move v11, v5

    .line 279
    goto :goto_11a

    .line 280
    :cond_117
    sub-float v11, v4, v7

    .line 282
    div-float/2addr v11, v8

    .line 283
    :goto_11a
    cmpl-float v9, v6, v9

    .line 285
    if-lez v9, :cond_11f

    .line 287
    goto :goto_123

    .line 288
    :cond_11f
    sub-float v9, v6, v7

    .line 290
    div-float v10, v9, v8

    .line 292
    :goto_123
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 294
    invoke-static {v9, v11, v10, v5}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 297
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 299
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 301
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    :cond_12f
    :goto_12f
    add-float/2addr v7, v8

    .line 305
    add-int/lit8 v2, v2, -0x1

    .line 307
    goto/16 :goto_a2

    .line 309
    :cond_134
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 312
    return-void
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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    .line 3
    if-ne p1, v0, :cond_a

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 10
    goto :goto_38

    .line 11
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 13
    if-ne p1, v0, :cond_14

    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 20
    goto :goto_38

    .line 21
    :cond_14
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 23
    if-ne p1, v0, :cond_38

    .line 25
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    if-eqz p1, :cond_21

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 31
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 34
    :cond_21
    if-nez p2, :cond_27

    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    goto :goto_38

    .line 40
    :cond_27
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 42
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 45
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 47
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 52
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    .line 1
    const-string v0, "StrokeContent#draw"

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->hasZeroScaleAxis(Landroid/graphics/Matrix;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_f

    .line 12
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 15
    return-void

    .line 16
    :cond_f
    int-to-float p3, p3

    .line 17
    const/high16 v1, 0x437f0000  # 255.0f

    .line 19
    div-float/2addr p3, v1

    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 22
    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 24
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;->getIntValue()I

    .line 27
    move-result v2

    .line 28
    int-to-float v2, v2

    .line 29
    mul-float/2addr p3, v2

    .line 30
    const/high16 v2, 0x42c80000  # 100.0f

    .line 32
    div-float/2addr p3, v2

    .line 33
    mul-float/2addr p3, v1

    .line 34
    float-to-int p3, p3

    .line 35
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 37
    const/16 v2, 0xff

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {p3, v3, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    .line 43
    move-result p3

    .line 44
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 49
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 51
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 53
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 56
    move-result v1

    .line 57
    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 60
    move-result v2

    .line 61
    mul-float/2addr v2, v1

    .line 62
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 70
    move-result p3

    .line 71
    const/4 v1, 0x0

    .line 72
    cmpg-float p3, p3, v1

    .line 74
    if-gtz p3, :cond_4f

    .line 76
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 79
    return-void

    .line 80
    :cond_4f
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 83
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    if-eqz p3, :cond_61

    .line 87
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 95
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 98
    :cond_61
    :goto_61
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 100
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 103
    move-result p3

    .line 104
    if-ge v3, p3, :cond_bc

    .line 106
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 108
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object p3

    .line 112
    check-cast p3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 114
    invoke-static {p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_7b

    .line 120
    invoke-direct {p0, p1, p3, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    .line 123
    goto :goto_b9

    .line 124
    :cond_7b
    const-string v1, "StrokeContent#buildPath"

    .line 126
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 131
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 134
    invoke-static {p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 137
    move-result-object v2

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 141
    move-result v2

    .line 142
    add-int/lit8 v2, v2, -0x1

    .line 144
    :goto_8f
    if-ltz v2, :cond_a7

    .line 146
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 148
    invoke-static {p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 151
    move-result-object v5

    .line 152
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 158
    invoke-interface {v5}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 165
    add-int/lit8 v2, v2, -0x1

    .line 167
    goto :goto_8f

    .line 168
    :cond_a7
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 171
    const-string p3, "StrokeContent#drawPath"

    .line 173
    invoke-static {p3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 178
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 180
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    invoke-static {p3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 186
    :goto_b9
    add-int/lit8 v3, v3, 0x1

    .line 188
    goto :goto_61

    .line 189
    :cond_bc
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 192
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 10

    .line 1
    const-string p3, "StrokeContent#getBounds"

    .line 3
    invoke-static {p3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_c
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_40

    .line 21
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 29
    move v3, v0

    .line 30
    :goto_1d
    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_3d

    .line 40
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 42
    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 52
    invoke-interface {v5}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_1d

    .line 62
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_c

    .line 65
    :cond_40
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 67
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 69
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 72
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 76
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 79
    move-result p2

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 82
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 84
    const/high16 v2, 0x40000000  # 2.0f

    .line 86
    div-float/2addr p2, v2

    .line 87
    sub-float/2addr v1, p2

    .line 88
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 90
    sub-float/2addr v2, p2

    .line 91
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 93
    add-float/2addr v3, p2

    .line 94
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 96
    add-float/2addr v4, p2

    .line 97
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 102
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 105
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 107
    const/high16 v0, 0x3f800000  # 1.0f

    .line 109
    sub-float/2addr p2, v0

    .line 110
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 112
    sub-float/2addr v1, v0

    .line 113
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 115
    add-float/2addr v2, v0

    .line 116
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 118
    add-float/2addr v3, v0

    .line 119
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    invoke-static {p3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 125
    return-void
.end method

.method public onValueChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
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

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 4
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 10
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :goto_8
    if-ltz v0, :cond_22

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    .line 17
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 19
    if-eqz v4, :cond_1f

    .line 21
    check-cast v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 23
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    move-result-object v4

    .line 27
    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 29
    if-ne v4, v5, :cond_1f

    .line 31
    move-object v2, v3

    .line 32
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_8

    .line 35
    :cond_22
    if-eqz v2, :cond_27

    .line 37
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 40
    :cond_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    move-result p1

    .line 44
    add-int/lit8 p1, p1, -0x1

    .line 46
    move-object v0, v1

    .line 47
    :goto_2e
    if-ltz p1, :cond_6c

    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    .line 55
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 57
    if-eqz v4, :cond_55

    .line 59
    move-object v4, v3

    .line 60
    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 62
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 65
    move-result-object v5

    .line 66
    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 68
    if-ne v5, v6, :cond_55

    .line 70
    if-eqz v0, :cond_4c

    .line 72
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 74
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_4c
    new-instance v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 79
    invoke-direct {v0, v4, v1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    .line 82
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    goto :goto_69

    .line 86
    :cond_55
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 88
    if-eqz v4, :cond_69

    .line 90
    if-nez v0, :cond_60

    .line 92
    new-instance v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 94
    invoke-direct {v0, v2, v1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    .line 97
    :cond_60
    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    .line 100
    move-result-object v4

    .line 101
    check-cast v3, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 103
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_69
    :goto_69
    add-int/lit8 p1, p1, -0x1

    .line 108
    goto :goto_2e

    .line 109
    :cond_6c
    if-eqz v0, :cond_73

    .line 111
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_73
    return-void
.end method
