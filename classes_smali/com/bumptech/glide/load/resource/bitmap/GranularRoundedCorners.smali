.class public final Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "GranularRoundedCorners.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners"

.field private static final ID_BYTES:[B


# instance fields
.field private final bottomLeft:F

.field private final bottomRight:F

.field private final topLeft:F

.field private final topRight:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 3
    const-string v1, "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->ID_BYTES:[B

    .line 11
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 4
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topLeft:F

    .line 6
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topRight:F

    .line 8
    iput p3, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomRight:F

    .line 10
    iput p4, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomLeft:F

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_28

    .line 6
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;

    .line 8
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topLeft:F

    .line 10
    iget v2, p1, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topLeft:F

    .line 12
    cmpl-float v0, v0, v2

    .line 14
    if-nez v0, :cond_28

    .line 16
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topRight:F

    .line 18
    iget v2, p1, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topRight:F

    .line 20
    cmpl-float v0, v0, v2

    .line 22
    if-nez v0, :cond_28

    .line 24
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomRight:F

    .line 26
    iget v2, p1, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomRight:F

    .line 28
    cmpl-float v0, v0, v2

    .line 30
    if-nez v0, :cond_28

    .line 32
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomLeft:F

    .line 34
    iget p1, p1, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomLeft:F

    .line 36
    cmpl-float p1, v0, p1

    .line 38
    if-nez p1, :cond_28

    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_28
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topLeft:F

    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->hashCode(F)I

    .line 6
    move-result v0

    .line 7
    const v1, -0x78051026

    .line 10
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topRight:F

    .line 16
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(FI)I

    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomRight:F

    .line 22
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(FI)I

    .line 25
    move-result v0

    .line 26
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomLeft:F

    .line 28
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(FI)I

    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    .line 1
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topLeft:F

    .line 3
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topRight:F

    .line 5
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomRight:F

    .line 7
    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomLeft:F

    .line 9
    move-object v0, p1

    .line 10
    move-object v1, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->ID_BYTES:[B

    .line 3
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    const/16 v0, 0x10

    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topLeft:F

    .line 14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->topRight:F

    .line 20
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomRight:F

    .line 26
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GranularRoundedCorners;->bottomLeft:F

    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    return-void
.end method
