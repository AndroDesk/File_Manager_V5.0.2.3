.class public Lcom/android/fileexplorer/view/crop/BorderRoundTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "BorderRoundTransform.java"


# static fields
.field private static final ID:Ljava/lang/String; = "jp.wasabeef.glide.transformations.CropCircleWithBorderTransformation.1"

.field private static final VERSION:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->VERSION:I

    return-void
.end method

.method public constructor <init>(FII)V
    .registers 5

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    iput p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    iput p3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    return-void
.end method

.method public constructor <init>(FIII)V
    .registers 6

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    iput p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    iput p3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    iput p4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    return-void
.end method

.method public constructor <init>(FIIIIZIII)V
    .registers 11

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    iput p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    iput p3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    iput-boolean p6, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    iput p4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    iput p5, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskResId:I

    iput p7, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    iput p8, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    iput p9, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    iget v0, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    iget v0, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    if-ne v0, v1, :cond_1c

    iget p1, p1, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public hashCode()I
    .registers 4

    const v0, 0x349c3455

    int-to-float v0, v0

    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    const/high16 v0, 0x41200000  # 10.0f

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public setCanvasBitmapDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-void
.end method

.method public transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 13

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    invoke-static {p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->setCanvasBitmapDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    if-nez v4, :cond_52

    iget v4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    if-nez v4, :cond_52

    iget v4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    if-nez v4, :cond_52

    int-to-float v2, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v2, p2

    float-to-int p2, v2

    sub-int v2, p3, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    sub-int v2, p4, p2

    iput v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    move v2, v3

    move v3, p2

    :cond_52
    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    iput v2, p2, Landroid/graphics/Rect;->right:I

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    if-lez v2, :cond_6c

    sub-int v2, p3, v2

    goto :goto_6d

    :cond_6c
    move v2, p3

    :goto_6d
    iput v2, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    sub-int v2, p4, v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->needBorder:Z

    if-eqz v0, :cond_e4

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float v5, v3, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->topPadding:I

    int-to-float v2, v2

    div-float v6, v3, v4

    sub-float/2addr v2, v6

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    int-to-float v3, p3

    iget v6, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    div-float v7, v6, v4

    sub-float/2addr v3, v7

    iget v7, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->horizontalPadding:I

    sub-int v7, p3, v7

    int-to-float v7, v7

    div-float/2addr v6, v4

    sub-float/2addr v7, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v6, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->bottomPadding:I

    sub-int v6, p4, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    invoke-direct {v0, v5, v2, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_e4
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_10f

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskResId:I

    if-eq v0, v2, :cond_100

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_108

    :cond_100
    iget v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->radius:I

    iget v2, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    invoke-static {p3, p4, v0, v2}, Lcom/android/fileexplorer/util/BitmapUtils;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_108
    iget-object p4, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->srcRec:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->toRec:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_10f
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4

    const-string v0, "jp.wasabeef.glide.transformations.CropCircleWithBorderTransformation.1"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->borderColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;->maskColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
