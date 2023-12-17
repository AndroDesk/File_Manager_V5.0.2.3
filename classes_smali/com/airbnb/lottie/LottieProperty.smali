.class public interface abstract Lcom/airbnb/lottie/LottieProperty;
.super Ljava/lang/Object;
.source "LottieProperty.java"


# static fields
.field public static final COLOR:Ljava/lang/Integer;

.field public static final COLOR_FILTER:Landroid/graphics/ColorFilter;

.field public static final CORNER_RADIUS:Ljava/lang/Float;

.field public static final ELLIPSE_SIZE:Landroid/graphics/PointF;

.field public static final GRADIENT_COLOR:[Ljava/lang/Integer;

.field public static final OPACITY:Ljava/lang/Integer;

.field public static final POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

.field public static final POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

.field public static final POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

.field public static final POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

.field public static final POLYSTAR_POINTS:Ljava/lang/Float;

.field public static final POLYSTAR_ROTATION:Ljava/lang/Float;

.field public static final POSITION:Landroid/graphics/PointF;

.field public static final RECTANGLE_SIZE:Landroid/graphics/PointF;

.field public static final REPEATER_COPIES:Ljava/lang/Float;

.field public static final REPEATER_OFFSET:Ljava/lang/Float;

.field public static final STROKE_COLOR:Ljava/lang/Integer;

.field public static final STROKE_WIDTH:Ljava/lang/Float;

.field public static final TEXT_SIZE:Ljava/lang/Float;

.field public static final TEXT_TRACKING:Ljava/lang/Float;

.field public static final TIME_REMAP:Ljava/lang/Float;

.field public static final TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

.field public static final TRANSFORM_END_OPACITY:Ljava/lang/Float;

.field public static final TRANSFORM_OPACITY:Ljava/lang/Integer;

.field public static final TRANSFORM_POSITION:Landroid/graphics/PointF;

.field public static final TRANSFORM_ROTATION:Ljava/lang/Float;

.field public static final TRANSFORM_SCALE:Lcom/airbnb/lottie/value/ScaleXY;

.field public static final TRANSFORM_SKEW:Ljava/lang/Float;

.field public static final TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

.field public static final TRANSFORM_START_OPACITY:Ljava/lang/Float;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_OPACITY:Ljava/lang/Integer;

    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    .line 31
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 34
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    .line 38
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 41
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_POSITION:Landroid/graphics/PointF;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    .line 45
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 48
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    .line 52
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 55
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->RECTANGLE_SIZE:Landroid/graphics/PointF;

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->CORNER_RADIUS:Ljava/lang/Float;

    .line 64
    new-instance v1, Landroid/graphics/PointF;

    .line 66
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 69
    sput-object v1, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 71
    new-instance v1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 73
    invoke-direct {v1}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    .line 76
    sput-object v1, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SCALE:Lcom/airbnb/lottie/value/ScaleXY;

    .line 78
    const/high16 v1, 0x3f800000  # 1.0f

    .line 80
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 83
    move-result-object v1

    .line 84
    sput-object v1, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ROTATION:Ljava/lang/Float;

    .line 86
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW:Ljava/lang/Float;

    .line 88
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

    .line 90
    const/high16 v0, 0x40000000  # 2.0f

    .line 92
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 98
    const/high16 v0, 0x40400000  # 3.0f

    .line 100
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    .line 106
    const/high16 v0, 0x40800000  # 4.0f

    .line 108
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->REPEATER_COPIES:Ljava/lang/Float;

    .line 114
    const/high16 v0, 0x40a00000  # 5.0f

    .line 116
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->REPEATER_OFFSET:Ljava/lang/Float;

    .line 122
    const/high16 v0, 0x40c00000  # 6.0f

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    .line 130
    const/high16 v0, 0x40e00000  # 7.0f

    .line 132
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 135
    move-result-object v0

    .line 136
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    .line 138
    const/high16 v0, 0x41000000  # 8.0f

    .line 140
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    .line 146
    const/high16 v0, 0x41100000  # 9.0f

    .line 148
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 151
    move-result-object v0

    .line 152
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    .line 154
    const/high16 v0, 0x41200000  # 10.0f

    .line 156
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    .line 162
    const/high16 v0, 0x41300000  # 11.0f

    .line 164
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 167
    move-result-object v0

    .line 168
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    .line 170
    const/high16 v0, 0x41400000  # 12.0f

    .line 172
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    move-result-object v0

    .line 176
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_START_OPACITY:Ljava/lang/Float;

    .line 178
    const v0, 0x4141999a  # 12.1f

    .line 181
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    move-result-object v0

    .line 185
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_END_OPACITY:Ljava/lang/Float;

    .line 187
    const/high16 v0, 0x41500000  # 13.0f

    .line 189
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    move-result-object v0

    .line 193
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    .line 195
    const/high16 v0, 0x41600000  # 14.0f

    .line 197
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    .line 203
    new-instance v0, Landroid/graphics/ColorFilter;

    .line 205
    invoke-direct {v0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 208
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 210
    const/4 v0, 0x0

    .line 211
    new-array v0, v0, [Ljava/lang/Integer;

    .line 213
    sput-object v0, Lcom/airbnb/lottie/LottieProperty;->GRADIENT_COLOR:[Ljava/lang/Integer;

    .line 215
    return-void
.end method
