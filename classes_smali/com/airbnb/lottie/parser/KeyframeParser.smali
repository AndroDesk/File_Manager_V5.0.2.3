.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field public static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static pathInterpolatorCache:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 8
    const-string v1, "t"

    .line 10
    const-string v2, "s"

    .line 12
    const-string v3, "e"

    .line 14
    const-string v4, "o"

    .line 16
    const-string v5, "i"

    .line 18
    const-string v6, "h"

    .line 20
    const-string v7, "to"

    .line 22
    const-string v8, "ti"

    .line 24
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/g;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p0, v2}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_10
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p0
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;Z)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_7

    .line 3
    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-static {p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move v6, v3

    .line 14
    move v13, v4

    .line 15
    move-object v7, v5

    .line 16
    move-object v8, v7

    .line 17
    move-object v9, v8

    .line 18
    move-object v10, v9

    .line 19
    move-object v14, v10

    .line 20
    move-object v15, v14

    .line 21
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 24
    move-result v11

    .line 25
    if-eqz v11, :cond_56

    .line 27
    sget-object v11, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 29
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 32
    move-result v11

    .line 33
    packed-switch v11, :pswitch_data_10a

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 39
    goto :goto_14

    .line 40
    :pswitch_27  #0x7
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 43
    move-result-object v14

    .line 44
    goto :goto_14

    .line 45
    :pswitch_2c  #0x6
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 48
    move-result-object v15

    .line 49
    goto :goto_14

    .line 50
    :pswitch_31  #0x5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 53
    move-result v6

    .line 54
    const/4 v11, 0x1

    .line 55
    if-ne v6, v11, :cond_3a

    .line 57
    move v6, v11

    .line 58
    goto :goto_14

    .line 59
    :cond_3a
    move v6, v3

    .line 60
    goto :goto_14

    .line 61
    :pswitch_3c  #0x4
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 64
    move-result-object v8

    .line 65
    goto :goto_14

    .line 66
    :pswitch_41  #0x3
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 69
    move-result-object v7

    .line 70
    goto :goto_14

    .line 71
    :pswitch_46  #0x2
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 74
    move-result-object v9

    .line 75
    goto :goto_14

    .line 76
    :pswitch_4b  #0x1
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 79
    move-result-object v10

    .line 80
    goto :goto_14

    .line 81
    :pswitch_50  #0x0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 84
    move-result-wide v11

    .line 85
    double-to-float v13, v11

    .line 86
    goto :goto_14

    .line 87
    :cond_56
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 90
    if-eqz v6, :cond_61

    .line 92
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 94
    move-object v12, v0

    .line 95
    move-object v11, v10

    .line 96
    goto/16 :goto_fa

    .line 98
    :cond_61
    if-eqz v7, :cond_f6

    .line 100
    if-eqz v8, :cond_f6

    .line 102
    iget v0, v7, Landroid/graphics/PointF;->x:F

    .line 104
    neg-float v2, v1

    .line 105
    invoke-static {v0, v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 108
    move-result v0

    .line 109
    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 111
    iget v0, v7, Landroid/graphics/PointF;->y:F

    .line 113
    const/high16 v3, -0x3d380000  # -100.0f

    .line 115
    const/high16 v6, 0x42c80000  # 100.0f

    .line 117
    invoke-static {v0, v3, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 120
    move-result v0

    .line 121
    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 123
    iget v0, v8, Landroid/graphics/PointF;->x:F

    .line 125
    invoke-static {v0, v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 128
    move-result v0

    .line 129
    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 131
    iget v0, v8, Landroid/graphics/PointF;->y:F

    .line 133
    invoke-static {v0, v3, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 136
    move-result v0

    .line 137
    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 139
    iget v2, v7, Landroid/graphics/PointF;->x:F

    .line 141
    iget v3, v7, Landroid/graphics/PointF;->y:F

    .line 143
    iget v6, v8, Landroid/graphics/PointF;->x:F

    .line 145
    invoke-static {v2, v3, v6, v0}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    .line 148
    move-result v2

    .line 149
    invoke-static {v2}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_a1

    .line 155
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 158
    move-result-object v3

    .line 159
    move-object v5, v3

    .line 160
    check-cast v5, Landroid/view/animation/Interpolator;

    .line 162
    :cond_a1
    if-eqz v0, :cond_a5

    .line 164
    if-nez v5, :cond_f4

    .line 166
    :cond_a5
    iget v0, v7, Landroid/graphics/PointF;->x:F

    .line 168
    div-float/2addr v0, v1

    .line 169
    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 171
    iget v0, v7, Landroid/graphics/PointF;->y:F

    .line 173
    div-float/2addr v0, v1

    .line 174
    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 176
    iget v0, v8, Landroid/graphics/PointF;->x:F

    .line 178
    div-float/2addr v0, v1

    .line 179
    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 181
    iget v3, v8, Landroid/graphics/PointF;->y:F

    .line 183
    div-float/2addr v3, v1

    .line 184
    iput v3, v8, Landroid/graphics/PointF;->y:F

    .line 186
    :try_start_b9
    iget v1, v7, Landroid/graphics/PointF;->x:F

    .line 188
    iget v5, v7, Landroid/graphics/PointF;->y:F

    .line 190
    invoke-static {v1, v5, v0, v3}, Lo0/a;->b(FFFF)Landroid/view/animation/PathInterpolator;

    .line 193
    move-result-object v0
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b9 .. :try_end_c1} :catch_c2

    .line 194
    goto :goto_eb

    .line 195
    :catch_c2
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    const-string v1, "The Path cannot loop back on itself."

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_e6

    .line 208
    iget v0, v7, Landroid/graphics/PointF;->x:F

    .line 210
    const/high16 v1, 0x3f800000  # 1.0f

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 215
    move-result v0

    .line 216
    iget v1, v7, Landroid/graphics/PointF;->y:F

    .line 218
    iget v3, v8, Landroid/graphics/PointF;->x:F

    .line 220
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 223
    move-result v3

    .line 224
    iget v4, v8, Landroid/graphics/PointF;->y:F

    .line 226
    invoke-static {v0, v1, v3, v4}, Lo0/a;->b(FFFF)Landroid/view/animation/PathInterpolator;

    .line 229
    move-result-object v0

    .line 230
    goto :goto_eb

    .line 231
    :cond_e6
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 233
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 236
    :goto_eb
    move-object v5, v0

    .line 237
    :try_start_ec
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 239
    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 242
    invoke-static {v2, v0}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_f4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ec .. :try_end_f4} :catch_f4

    .line 245
    :catch_f4
    :cond_f4
    move-object v12, v5

    .line 246
    goto :goto_f9

    .line 247
    :cond_f6
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 249
    move-object v12, v0

    .line 250
    :goto_f9
    move-object v11, v9

    .line 251
    :goto_fa
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 253
    const/4 v1, 0x0

    .line 254
    move-object v8, v0

    .line 255
    move-object/from16 v9, p0

    .line 257
    move-object v5, v14

    .line 258
    move-object v14, v1

    .line 259
    invoke-direct/range {v8 .. v14}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 262
    iput-object v15, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 264
    iput-object v5, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 266
    return-object v0

    .line 267
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_4b  #00000001
        :pswitch_46  #00000002
        :pswitch_41  #00000003
        :pswitch_3c  #00000004
        :pswitch_31  #00000005
        :pswitch_2c  #00000006
        :pswitch_27  #00000007
    .end packed-switch
.end method

.method private static parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/airbnb/lottie/value/Keyframe;

    .line 7
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 10
    return-object p1
.end method

.method private static pathInterpolatorCache()Landroidx/collection/g;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/g<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/g;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/collection/g;

    .line 7
    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    .line 10
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/g;

    .line 12
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/g;

    .line 14
    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/g;

    .line 6
    invoke-virtual {v1, p0, p1}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw p0
.end method
