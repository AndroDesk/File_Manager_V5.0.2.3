.class public Lcom/bumptech/glide/load/resource/bitmap/Rotate;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "Rotate.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.Rotate"

.field private static final ID_BYTES:[B


# instance fields
.field private final degreesToRotate:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 3
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Rotate"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 4
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 6
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;

    .line 8
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    .line 10
    iget p1, p1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    .line 12
    if-ne v0, p1, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->hashCode(I)I

    .line 6
    move-result v0

    .line 7
    const v1, -0x38a7c59c

    .line 10
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    .line 3
    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    .line 3
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 24
    return-void
.end method
