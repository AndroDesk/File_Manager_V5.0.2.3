.class public final Lcom/google/android/gms/common/util/DataUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 8
    iput v1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 10
    goto :goto_26

    .line 11
    :cond_a
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 13
    if-eqz v0, :cond_20

    .line 15
    array-length v0, v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_16

    .line 22
    goto :goto_20

    .line 23
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    move-result v0

    .line 27
    iget-object v2, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 29
    invoke-virtual {p0, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 32
    goto :goto_26

    .line 33
    :cond_20
    :goto_20
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 39
    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    move-result p0

    .line 43
    iput p0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 45
    return-void
.end method

.method public static loadImageBytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 8
    const/16 v2, 0x64

    .line 10
    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
