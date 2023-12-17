.class public Lcom/android/fileexplorer/view/crop/BorderRoundTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "BorderRoundTransform.java"


# static fields
.field private static final ID:Ljava/lang/String; = "jp.wasabeef.glide.transformations.CropCircleWithBorderTransformation.1"

.field private static final VERSION:I = 0x1


# instance fields
.field private final borderColor:I

.field private final borderSize:F

.field private bottomPadding:I

.field private horizontalPadding:I

.field private maskColor:I

.field private maskResId:I

.field private needBorder:Z

.field private final radius:I

.field private srcRec:Landroid/graphics/Rect;

.field private toRec:Landroid/graphics/Rect;

.field private topPadding:I


# direct methods
.method public constructor <init>(FII)V
    .registers 5

    .line 12
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 19
    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 20
    iput p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 21
    iput p3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    return-void
.end method

.method public constructor <init>(FIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 8
    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 9
    iput p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 10
    iput p3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    .line 11
    iput p4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    return-void
.end method

.method public constructor <init>(FIIIIZIII)V
    .registers 11

    .line 23
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 26
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 27
    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 30
    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 31
    iput p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 32
    iput p3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    .line 33
    iput-boolean p6, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    .line 34
    iput p4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 35
    iput p5, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskResId:I

    .line 36
    iput p7, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 37
    iput p8, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 38
    iput p9, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    check-cast p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    .line 7
    iget v0, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 9
    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 11
    cmpl-float v0, v0, v1

    .line 13
    if-nez v0, :cond_1c

    .line 15
    iget v0, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 17
    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 19
    if-ne v0, v1, :cond_1c

    .line 21
    iget p1, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 23
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 25
    if-ne p1, v0, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const v0, 0x349c3455

    .line 4
    int-to-float v0, v0

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 7
    const/high16 v2, 0x42c80000  # 100.0f

    .line 9
    mul-float/2addr v1, v2

    .line 10
    add-float/2addr v1, v0

    .line 11
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 13
    int-to-float v0, v0

    .line 14
    add-float/2addr v1, v0

    .line 15
    const/high16 v0, 0x41200000  # 10.0f

    .line 17
    add-float/2addr v1, v0

    .line 18
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 20
    int-to-float v0, v0

    .line 21
    add-float/2addr v1, v0

    .line 22
    float-to-int v0, v1

    .line 23
    return v0
.end method

.method public setCanvasBitmapDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 8
    return-void
.end method

.method public transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 13

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    .line 3
    invoke-static {p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->setCanvasBitmapDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 10
    new-instance v1, Landroid/graphics/Paint;

    .line 12
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    move-result v3

    .line 27
    iget v4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 29
    if-nez v4, :cond_52

    .line 31
    iget v4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 33
    if-nez v4, :cond_52

    .line 35
    iget v4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    .line 37
    if-nez v4, :cond_52

    .line 39
    int-to-float v2, p3

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    move-result v3

    .line 44
    int-to-float v3, v3

    .line 45
    div-float/2addr v2, v3

    .line 46
    int-to-float v3, p4

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    div-float/2addr v3, v4

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 56
    move-result v2

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 60
    move-result v3

    .line 61
    int-to-float v3, v3

    .line 62
    mul-float/2addr v3, v2

    .line 63
    float-to-int v3, v3

    .line 64
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 67
    move-result p2

    .line 68
    int-to-float p2, p2

    .line 69
    mul-float/2addr v2, p2

    .line 70
    float-to-int p2, v2

    .line 71
    sub-int v2, p3, v3

    .line 73
    div-int/lit8 v2, v2, 0x2

    .line 75
    iput v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 77
    sub-int v2, p4, p2

    .line 79
    iput v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 81
    move v2, v3

    .line 82
    move v3, p2

    .line 83
    :cond_52
    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    .line 85
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 87
    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 89
    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 91
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result v2

    .line 98
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 100
    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 102
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 104
    if-lez v2, :cond_6c

    .line 106
    sub-int v2, p3, v2

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move v2, p3

    .line 110
    :goto_6d
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 112
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 117
    move-result v2

    .line 118
    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 120
    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 122
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    .line 124
    sub-int v2, p4, v2

    .line 126
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 128
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 130
    invoke-interface {p1, p3, p4, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Landroid/graphics/Canvas;

    .line 136
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 141
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    .line 146
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 148
    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 151
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    .line 153
    if-eqz v0, :cond_e4

    .line 155
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 157
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 162
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 167
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    .line 172
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 174
    int-to-float v2, v2

    .line 175
    iget v3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 177
    const/high16 v4, 0x40000000  # 2.0f

    .line 179
    div-float v5, v3, v4

    .line 181
    add-float/2addr v5, v2

    .line 182
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    .line 184
    int-to-float v2, v2

    .line 185
    div-float v6, v3, v4

    .line 187
    sub-float/2addr v2, v6

    .line 188
    div-float/2addr v3, v4

    .line 189
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 192
    move-result v2

    .line 193
    int-to-float v3, p3

    .line 194
    iget v6, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 196
    div-float v7, v6, v4

    .line 198
    sub-float/2addr v3, v7

    .line 199
    iget v7, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    .line 201
    sub-int v7, p3, v7

    .line 203
    int-to-float v7, v7

    .line 204
    div-float/2addr v6, v4

    .line 205
    sub-float/2addr v7, v6

    .line 206
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    .line 209
    move-result v3

    .line 210
    iget v6, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    .line 212
    sub-int v6, p4, v6

    .line 214
    int-to-float v6, v6

    .line 215
    iget v7, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 217
    div-float/2addr v7, v4

    .line 218
    sub-float/2addr v6, v7

    .line 219
    invoke-direct {v0, v5, v2, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 222
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    .line 224
    int-to-float v3, v2

    .line 225
    int-to-float v2, v2

    .line 226
    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 229
    :cond_e4
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 231
    const/4 v2, -0x1

    .line 232
    if-eq v0, v2, :cond_10f

    .line 234
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 236
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 241
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskResId:I

    .line 246
    if-eq v0, v2, :cond_100

    .line 248
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 251
    move-result-object p3

    .line 252
    invoke-static {p3}, Lcom/android/fileexplorer/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 255
    move-result-object p3

    .line 256
    goto :goto_108

    .line 257
    :cond_100
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    .line 259
    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 261
    invoke-static {p3, p4, v0, v2}, Lcom/android/fileexplorer/util/BitmapUtils;->getBitmap(IIII)Landroid/graphics/Bitmap;

    .line 264
    move-result-object p3

    .line 265
    :goto_108
    iget-object p4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    .line 267
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    .line 269
    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 272
    :cond_10f
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4

    .line 1
    const-string v0, "jp.wasabeef.glide.transformations.CropCircleWithBorderTransformation.1"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    return-void
.end method
