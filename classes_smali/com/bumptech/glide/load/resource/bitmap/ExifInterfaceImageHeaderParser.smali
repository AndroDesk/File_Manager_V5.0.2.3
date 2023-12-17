.class public final Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;
.super Ljava/lang/Object;
.source "ExifInterfaceImageHeaderParser.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .registers 4

    .line 1
    new-instance p2, Lv0/a;

    invoke-direct {p2, p1}, Lv0/a;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Orientation"

    .line 2
    invoke-virtual {p2, p1}, Lv0/a;->d(Ljava/lang/String;)Lv0/a$b;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_f

    goto :goto_15

    .line 3
    :cond_f
    :try_start_f
    iget-object p2, p2, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_15} :catch_15

    :catch_15
    :goto_15
    if-nez v0, :cond_19

    const/4 p1, -0x1

    return p1

    :cond_19
    return v0
.end method

.method public getOrientation(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .registers 3

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/util/ByteBufferUtil;->toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result p1

    return p1
.end method

.method public getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 2

    .line 1
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method public getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 2

    .line 2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method
