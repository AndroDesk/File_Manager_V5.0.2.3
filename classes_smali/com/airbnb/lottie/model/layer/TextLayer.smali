.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private final codePointCache:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field private textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$2;

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$2;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    .line 39
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 48
    new-instance v0, Landroidx/collection/d;

    .line 50
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/d;

    .line 55
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 57
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 63
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 73
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 79
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_66

    .line 85
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 87
    if-eqz p2, :cond_66

    .line 89
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 92
    move-result-object p2

    .line 93
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 95
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 98
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 100
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 103
    :cond_66
    if-eqz p1, :cond_7a

    .line 105
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 107
    if-eqz p2, :cond_7a

    .line 109
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 112
    move-result-object p2

    .line 113
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 115
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 118
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 120
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 123
    :cond_7a
    if-eqz p1, :cond_8e

    .line 125
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 127
    if-eqz p2, :cond_8e

    .line 129
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 132
    move-result-object p2

    .line 133
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 135
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 138
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 140
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 143
    :cond_8e
    if-eqz p1, :cond_a2

    .line 145
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 147
    if-eqz p1, :cond_a2

    .line 149
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 152
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 155
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 158
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 160
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 163
    :cond_a2
    return-void
.end method

.method private applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .registers 6

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/layer/TextLayer$3;->$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eq p1, v0, :cond_18

    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_10

    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    neg-float p1, p3

    .line 18
    const/high16 p3, 0x40000000  # 2.0f

    .line 20
    div-float/2addr p1, p3

    .line 21
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    neg-float p1, p3

    .line 26
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    :goto_1c
    return-void
.end method

.method private codePointToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, p2

    .line 10
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_23

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 19
    move-result v2

    .line 20
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/layer/TextLayer;->isModifier(I)Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1a

    .line 26
    goto :goto_23

    .line 27
    :cond_1a
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    .line 30
    move-result v3

    .line 31
    add-int/2addr v1, v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    add-int/2addr v0, v2

    .line 35
    goto :goto_9

    .line 36
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/d;

    .line 38
    int-to-long v3, v0

    .line 39
    iget-boolean v0, v2, Landroidx/collection/d;->a:Z

    .line 41
    if-eqz v0, :cond_2d

    .line 43
    invoke-virtual {v2}, Landroidx/collection/d;->c()V

    .line 46
    :cond_2d
    iget-object v0, v2, Landroidx/collection/d;->b:[J

    .line 48
    iget v2, v2, Landroidx/collection/d;->d:I

    .line 50
    invoke-static {v0, v2, v3, v4}, La/b;->i([JIJ)I

    .line 53
    move-result v0

    .line 54
    const/4 v2, 0x0

    .line 55
    if-ltz v0, :cond_3a

    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v0, v2

    .line 60
    :goto_3b
    if-eqz v0, :cond_47

    .line 62
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/d;

    .line 64
    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, v3, v4, p2}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/lang/String;

    .line 71
    return-object p1

    .line 72
    :cond_47
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    :goto_4c
    if-ge p2, v1, :cond_5d

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    .line 82
    move-result v0

    .line 83
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 91
    move-result v0

    .line 92
    add-int/2addr p2, v0

    .line 93
    goto :goto_4c

    .line 94
    :cond_5d
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/d;

    .line 102
    invoke-virtual {p2, v3, v4, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 105
    return-object p1
.end method

.method private drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    if-ne v0, v1, :cond_19

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 23
    if-nez v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v1, p3

    .line 34
    move-object v2, p1

    .line 35
    move-object v7, p2

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_54

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 19
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 25
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 28
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 30
    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 33
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 35
    const/4 v4, 0x0

    .line 36
    iget v5, p4, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 38
    neg-float v5, v5

    .line 39
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 42
    move-result v6

    .line 43
    mul-float/2addr v6, v5

    .line 44
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 47
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 49
    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 52
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 54
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 57
    iget-boolean v3, p4, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 59
    if-eqz v3, :cond_47

    .line 61
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 63
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 66
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 68
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 71
    goto :goto_51

    .line 72
    :cond_47
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 74
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 77
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 79
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 82
    :goto_51
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_6

    .line 85
    :cond_54
    return-void
.end method

.method private drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-boolean p2, p2, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 3
    if-eqz p2, :cond_f

    .line 5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 10
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 15
    goto :goto_19

    .line 16
    :cond_f
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 21
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 26
    :goto_19
    return-void
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_47

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointToString(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 16
    move-result v3

    .line 17
    add-int/2addr v1, v3

    .line 18
    invoke-direct {p0, v2, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 21
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-virtual {v3, v2, v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 27
    move-result v2

    .line 28
    iget v3, p2, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 30
    int-to-float v3, v3

    .line 31
    const/high16 v4, 0x41200000  # 10.0f

    .line 33
    div-float/2addr v3, v4

    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 36
    if-eqz v4, :cond_31

    .line 38
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Float;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 47
    move-result v4

    .line 48
    :goto_2f
    add-float/2addr v3, v4

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 52
    if-eqz v4, :cond_40

    .line 54
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/Float;

    .line 60
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 63
    move-result v4

    .line 64
    goto :goto_2f

    .line 65
    :cond_40
    :goto_40
    mul-float/2addr v3, p4

    .line 66
    add-float/2addr v3, v2

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p3, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    goto :goto_2

    .line 72
    :cond_47
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    if-ne v0, v1, :cond_19

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 23
    if-nez v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    return-void
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V
    .registers 16

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_6a

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    move-result v1

    .line 12
    invoke-virtual {p4}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p4}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 26
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/g;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v2, v1, v3}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/airbnb/lottie/model/FontCharacter;

    .line 37
    if-nez v1, :cond_27

    .line 39
    goto :goto_67

    .line 40
    :cond_27
    move-object v2, p0

    .line 41
    move-object v3, v1

    .line 42
    move-object v4, p3

    .line 43
    move v5, p7

    .line 44
    move-object v6, p2

    .line 45
    move-object v7, p5

    .line 46
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    .line 52
    move-result-wide v1

    .line 53
    double-to-float v1, v1

    .line 54
    mul-float/2addr v1, p7

    .line 55
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 58
    move-result v2

    .line 59
    mul-float/2addr v2, v1

    .line 60
    mul-float/2addr v2, p6

    .line 61
    iget v1, p2, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 63
    int-to-float v1, v1

    .line 64
    const/high16 v3, 0x41200000  # 10.0f

    .line 66
    div-float/2addr v1, v3

    .line 67
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    if-eqz v3, :cond_52

    .line 71
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/Float;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 80
    move-result v3

    .line 81
    :goto_50
    add-float/2addr v1, v3

    .line 82
    goto :goto_61

    .line 83
    :cond_52
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    if-eqz v3, :cond_61

    .line 87
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/lang/Float;

    .line 93
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 96
    move-result v3

    .line 97
    goto :goto_50

    .line 98
    :cond_61
    :goto_61
    mul-float/2addr v1, p6

    .line 99
    add-float/2addr v1, v2

    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    :goto_67
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_6a
    return-void
.end method

.method private drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V
    .registers 22

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    move-object/from16 v10, p4

    .line 7
    iget-object v0, v8, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Float;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result v0

    .line 21
    goto :goto_26

    .line 22
    :cond_15
    iget-object v0, v8, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 24
    if-eqz v0, :cond_24

    .line 26
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Float;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result v0

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 39
    :goto_26
    const/high16 v1, 0x42c80000  # 100.0f

    .line 41
    div-float v11, v0, v1

    .line 43
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 46
    move-result v12

    .line 47
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 49
    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 51
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 54
    move-result v2

    .line 55
    mul-float v13, v2, v1

    .line 57
    invoke-direct {v8, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    .line 60
    move-result-object v14

    .line 61
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 64
    move-result v15

    .line 65
    const/4 v0, 0x0

    .line 66
    move v7, v0

    .line 67
    :goto_42
    if-ge v7, v15, :cond_7e

    .line 69
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    move-object v1, v0

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 76
    move-object/from16 v6, p3

    .line 78
    invoke-direct {v8, v1, v6, v11, v12}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F

    .line 81
    move-result v0

    .line 82
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 85
    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 87
    invoke-direct {v8, v2, v10, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 90
    add-int/lit8 v0, v15, -0x1

    .line 92
    int-to-float v0, v0

    .line 93
    mul-float/2addr v0, v13

    .line 94
    const/high16 v2, 0x40000000  # 2.0f

    .line 96
    div-float/2addr v0, v2

    .line 97
    int-to-float v2, v7

    .line 98
    mul-float/2addr v2, v13

    .line 99
    sub-float/2addr v2, v0

    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    move-object/from16 v0, p0

    .line 106
    move-object/from16 v2, p1

    .line 108
    move-object/from16 v3, p2

    .line 110
    move-object/from16 v4, p3

    .line 112
    move-object/from16 v5, p4

    .line 114
    move v6, v12

    .line 115
    move/from16 v16, v7

    .line 117
    move v7, v11

    .line 118
    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FF)V

    .line 121
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 124
    add-int/lit8 v7, v16, 0x1

    .line 126
    goto :goto_42

    .line 127
    :cond_7e
    return-void
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    invoke-static {p3}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 7
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v1, v2, p2}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    iget-object v1, p1, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 26
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_23

    .line 32
    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    :cond_23
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 43
    if-eqz p2, :cond_37

    .line 45
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Ljava/lang/Float;

    .line 51
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 54
    move-result p2

    .line 55
    goto :goto_48

    .line 56
    :cond_37
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    if-eqz p2, :cond_46

    .line 60
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Ljava/lang/Float;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 69
    move-result p2

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    iget p2, p1, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 73
    :goto_48
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 75
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 78
    move-result v3

    .line 79
    mul-float/2addr v3, p2

    .line 80
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 85
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 96
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 101
    move-result v2

    .line 102
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget p2, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 107
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 110
    move-result v2

    .line 111
    mul-float/2addr v2, p2

    .line 112
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    .line 115
    move-result-object p2

    .line 116
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 119
    move-result v1

    .line 120
    const/4 v3, 0x0

    .line 121
    :goto_78
    if-ge v3, v1, :cond_a2

    .line 123
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/lang/String;

    .line 129
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 134
    move-result v5

    .line 135
    iget-object v6, p1, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 137
    invoke-direct {p0, v6, p4, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->applyJustification(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 140
    add-int/lit8 v5, v1, -0x1

    .line 142
    int-to-float v5, v5

    .line 143
    mul-float/2addr v5, v2

    .line 144
    const/high16 v6, 0x40000000  # 2.0f

    .line 146
    div-float/2addr v5, v6

    .line 147
    int-to-float v6, v3

    .line 148
    mul-float/2addr v6, v2

    .line 149
    sub-float/2addr v6, v5

    .line 150
    const/4 v5, 0x0

    .line 151
    invoke-virtual {p4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    invoke-direct {p0, v4, p1, p4, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 157
    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 162
    goto :goto_78

    .line 163
    :cond_a2
    return-void
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 17
    return-object p1

    .line 18
    :cond_11
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_1f
    if-ge v3, v1, :cond_34

    .line 34
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 40
    new-instance v5, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 42
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 44
    invoke-direct {v5, v6, p0, v4}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    .line 47
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_1f

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 55
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v2
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/airbnb/lottie/model/Font;FF)F
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_3c

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 27
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/g;

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v2, v4}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/airbnb/lottie/model/FontCharacter;

    .line 38
    if-nez v2, :cond_28

    .line 40
    goto :goto_39

    .line 41
    :cond_28
    float-to-double v3, v0

    .line 42
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    .line 45
    move-result-wide v5

    .line 46
    float-to-double v7, p3

    .line 47
    mul-double/2addr v5, v7

    .line 48
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 51
    move-result v0

    .line 52
    float-to-double v7, v0

    .line 53
    mul-double/2addr v5, v7

    .line 54
    float-to-double v7, p4

    .line 55
    mul-double/2addr v5, v7

    .line 56
    add-double/2addr v5, v3

    .line 57
    double-to-float v0, v5

    .line 58
    :goto_39
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3c
    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "\r\n"

    .line 3
    const-string v1, "\r"

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "\n"

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private isModifier(I)Z
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 7
    if-eq v0, v1, :cond_2a

    .line 9
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x1b

    .line 15
    if-eq v0, v1, :cond_2a

    .line 17
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x6

    .line 22
    if-eq v0, v1, :cond_2a

    .line 24
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 27
    move-result v0

    .line 28
    const/16 v1, 0x1c

    .line 30
    if-eq v0, v1, :cond_2a

    .line 32
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 35
    move-result p1

    .line 36
    const/16 v0, 0x13

    .line 38
    if-ne p1, v0, :cond_28

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    .line 44
    :goto_2b
    return p1
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .registers 5
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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_26

    .line 9
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 11
    if-eqz p1, :cond_f

    .line 13
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 16
    :cond_f
    if-nez p2, :cond_15

    .line 18
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    goto/16 :goto_a6

    .line 22
    :cond_15
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 24
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 27
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 32
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 34
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 37
    goto/16 :goto_a6

    .line 39
    :cond_26
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    .line 41
    if-ne p1, v0, :cond_47

    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    if-eqz p1, :cond_31

    .line 47
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 50
    :cond_31
    if-nez p2, :cond_37

    .line 52
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    goto/16 :goto_a6

    .line 56
    :cond_37
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 58
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 66
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 68
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 71
    goto :goto_a6

    .line 72
    :cond_47
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 74
    if-ne p1, v0, :cond_67

    .line 76
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    if-eqz p1, :cond_52

    .line 80
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    :cond_52
    if-nez p2, :cond_57

    .line 85
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 87
    goto :goto_a6

    .line 88
    :cond_57
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 90
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 93
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 95
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 98
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 100
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 103
    goto :goto_a6

    .line 104
    :cond_67
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    .line 106
    if-ne p1, v0, :cond_87

    .line 108
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 110
    if-eqz p1, :cond_72

    .line 112
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 115
    :cond_72
    if-nez p2, :cond_77

    .line 117
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 119
    goto :goto_a6

    .line 120
    :cond_77
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 122
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 125
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 127
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 130
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 132
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 135
    goto :goto_a6

    .line 136
    :cond_87
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    .line 138
    if-ne p1, v0, :cond_a6

    .line 140
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 142
    if-eqz p1, :cond_92

    .line 144
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 147
    :cond_92
    if-nez p2, :cond_97

    .line 149
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 151
    goto :goto_a6

    .line 152
    :cond_97
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 154
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 157
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 159
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 162
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 164
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 167
    :cond_a6
    :goto_a6
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    .line 9
    move-result p3

    .line 10
    if-nez p3, :cond_e

    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 15
    :cond_e
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 17
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 20
    move-result-object p3

    .line 21
    check-cast p3, Lcom/airbnb/lottie/model/DocumentData;

    .line 23
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 25
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p3, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/airbnb/lottie/model/Font;

    .line 37
    if-nez v0, :cond_2a

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void

    .line 43
    :cond_2a
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    if-eqz v1, :cond_3e

    .line 47
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v1

    .line 59
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    goto :goto_59

    .line 63
    :cond_3e
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 65
    if-eqz v1, :cond_52

    .line 67
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result v1

    .line 79
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    goto :goto_59

    .line 83
    :cond_52
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 85
    iget v2, p3, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 87
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    :goto_59
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 92
    if-eqz v1, :cond_6d

    .line 94
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v1

    .line 106
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    goto :goto_88

    .line 110
    :cond_6d
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 112
    if-eqz v1, :cond_81

    .line 114
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/lang/Integer;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 125
    move-result v1

    .line 126
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    goto :goto_88

    .line 130
    :cond_81
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 132
    iget v2, p3, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 134
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    :goto_88
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 139
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 142
    move-result-object v1

    .line 143
    const/16 v2, 0x64

    .line 145
    if-nez v1, :cond_94

    .line 147
    move v1, v2

    .line 148
    goto :goto_a4

    .line 149
    :cond_94
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 151
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Ljava/lang/Integer;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 164
    move-result v1

    .line 165
    :goto_a4
    mul-int/lit16 v1, v1, 0xff

    .line 167
    div-int/2addr v1, v2

    .line 168
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 180
    if-eqz v1, :cond_c5

    .line 182
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 184
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Ljava/lang/Float;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 193
    move-result v1

    .line 194
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    goto :goto_ea

    .line 198
    :cond_c5
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 200
    if-eqz v1, :cond_d9

    .line 202
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Ljava/lang/Float;

    .line 210
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 213
    move-result v1

    .line 214
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    goto :goto_ea

    .line 218
    :cond_d9
    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 221
    move-result v1

    .line 222
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 224
    iget v3, p3, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 226
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 229
    move-result v4

    .line 230
    mul-float/2addr v4, v3

    .line 231
    mul-float/2addr v4, v1

    .line 232
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    :goto_ea
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 237
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_f6

    .line 243
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V

    .line 246
    goto :goto_f9

    .line 247
    :cond_f6
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 250
    :goto_f9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 6
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 13
    move-result p2

    .line 14
    int-to-float p2, p2

    .line 15
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 17
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result p3

    .line 25
    int-to-float p3, p3

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    return-void
.end method
