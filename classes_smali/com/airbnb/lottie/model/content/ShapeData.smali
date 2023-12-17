.class public Lcom/airbnb/lottie/model/content/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 3
    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-void
.end method

.method private setInitialPoint(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 17
    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 3
    return-object v0
.end method

.method public interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 12
    :cond_b
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez v0, :cond_1b

    .line 19
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    :goto_1b
    move v0, v1

    .line 29
    :goto_1c
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 31
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 46
    move-result v2

    .line 47
    if-eq v0, v2, :cond_58

    .line 49
    const-string v0, "Curves must have the same number of control points. Shape 1: "

    .line 51
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 62
    move-result v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, "\tShape 2: "

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 89
    :cond_58
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 96
    move-result v0

    .line 97
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 104
    move-result v2

    .line 105
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 108
    move-result v0

    .line 109
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    move-result v2

    .line 115
    if-ge v2, v0, :cond_89

    .line 117
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 119
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 122
    move-result v2

    .line 123
    :goto_7a
    if-ge v2, v0, :cond_a7

    .line 125
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 127
    new-instance v4, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 129
    invoke-direct {v4}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 132
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 137
    goto :goto_7a

    .line 138
    :cond_89
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 143
    move-result v2

    .line 144
    if-le v2, v0, :cond_a7

    .line 146
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 148
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 151
    move-result v2

    .line 152
    sub-int/2addr v2, v1

    .line 153
    :goto_98
    if-lt v2, v0, :cond_a7

    .line 155
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 157
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 160
    move-result v4

    .line 161
    sub-int/2addr v4, v1

    .line 162
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    add-int/lit8 v2, v2, -0x1

    .line 167
    goto :goto_98

    .line 168
    :cond_a7
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    .line 175
    move-result-object v2

    .line 176
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 178
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 180
    invoke-static {v3, v4, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 183
    move-result v3

    .line 184
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 186
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 188
    invoke-static {v0, v2, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 191
    move-result v0

    .line 192
    invoke-direct {p0, v3, v0}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 195
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 200
    move-result v0

    .line 201
    sub-int/2addr v0, v1

    .line 202
    :goto_c9
    if-ltz v0, :cond_14c

    .line 204
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 207
    move-result-object v1

    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 214
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 224
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    .line 247
    move-result-object v2

    .line 248
    iget-object v7, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 250
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 253
    move-result-object v7

    .line 254
    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 256
    iget v8, v3, Landroid/graphics/PointF;->x:F

    .line 258
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 260
    invoke-static {v8, v9, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 263
    move-result v8

    .line 264
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 266
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 268
    invoke-static {v3, v5, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 271
    move-result v3

    .line 272
    invoke-virtual {v7, v8, v3}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    .line 275
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 277
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    move-result-object v3

    .line 281
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 283
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 285
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 287
    invoke-static {v5, v7, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 290
    move-result v5

    .line 291
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 293
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 295
    invoke-static {v4, v6, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 298
    move-result v4

    .line 299
    invoke-virtual {v3, v5, v4}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 302
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 304
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 310
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 312
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 314
    invoke-static {v4, v5, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 317
    move-result v4

    .line 318
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 320
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 322
    invoke-static {v1, v2, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 325
    move-result v1

    .line 326
    invoke-virtual {v3, v4, v1}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 329
    add-int/lit8 v0, v0, -0x1

    .line 331
    goto/16 :goto_c9

    .line 333
    :cond_14c
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ShapeData{numCurves="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "closed="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const/16 v1, 0x7d

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
