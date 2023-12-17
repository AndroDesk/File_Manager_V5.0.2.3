.class public final Lcom/bumptech/glide/load/ImageHeaderParserUtils;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;,
        Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;
    }
.end annotation


# static fields
.field private static final MARK_READ_LIMIT:I = 0x500000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/util/List;Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$5;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils$5;-><init>(Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientationInternal(Ljava/util/List;Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;)I

    move-result p0

    return p0
.end method

.method public static getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object p1, v0

    :cond_10
    const/high16 v0, 0x500000

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientationInternal(Ljava/util/List;Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;)I

    move-result p0

    return p0
.end method

.method private static getOrientationInternal(Ljava/util/List;Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    const/4 v2, -0x1

    .line 7
    if-ge v1, v0, :cond_18

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 15
    invoke-interface {p1, v3}, Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;->getOrientation(Lcom/bumptech/glide/load/ImageHeaderParser;)I

    .line 18
    move-result v3

    .line 19
    if-eq v3, v2, :cond_15

    .line 21
    return v3

    .line 22
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_5

    .line 25
    :cond_18
    return v2
.end method

.method public static getType(Ljava/util/List;Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$3;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils$3;-><init>(Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    .line 2
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object p1, v0

    :cond_11
    const/high16 p2, 0x500000

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 5
    new-instance p2, Lcom/bumptech/glide/load/ImageHeaderParserUtils$1;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils$1;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, p2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 6
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    .line 7
    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$2;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, v0}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeInternal(Ljava/util/List;Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_19

    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 14
    invoke-interface {p1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;->getType(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 20
    if-eq v2, v3, :cond_16

    .line 22
    return-object v2

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_5

    .line 26
    :cond_19
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 28
    return-object p0
.end method
