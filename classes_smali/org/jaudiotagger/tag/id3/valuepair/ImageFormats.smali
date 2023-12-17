.class public Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;
.super Ljava/lang/Object;
.source "ImageFormats.java"


# static fields
.field public static final MIME_TYPE_BMP:Ljava/lang/String; = "image/bmp"

.field public static final MIME_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_JPG:Ljava/lang/String; = "image/jpg"

.field public static final MIME_TYPE_PDF:Ljava/lang/String; = "image/pdf"

.field public static final MIME_TYPE_PICT:Ljava/lang/String; = "image/x-pict"

.field public static final MIME_TYPE_PNG:Ljava/lang/String; = "image/png"

.field public static final MIME_TYPE_TIFF:Ljava/lang/String; = "image/tiff"

.field public static final V22_BMP_FORMAT:Ljava/lang/String; = "BMP"

.field public static final V22_GIF_FORMAT:Ljava/lang/String; = "GIF"

.field public static final V22_JPG_FORMAT:Ljava/lang/String; = "JPG"

.field public static final V22_PDF_FORMAT:Ljava/lang/String; = "PDF"

.field public static final V22_PIC_FORMAT:Ljava/lang/String; = "PIC"

.field public static final V22_PNG_FORMAT:Ljava/lang/String; = "PNG"

.field public static final V22_TIF_FORMAT:Ljava/lang/String; = "TIF"

.field private static imageFormatsToMimeType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static imageMimeTypeToFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "JPG"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v2, "PNG"

    const-string v3, "image/png"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v2, "GIF"

    const-string v3, "image/gif"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v2, "BMP"

    const-string v3, "image/bmp"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v2, "TIF"

    const-string v3, "image/tiff"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v2, "PDF"

    const-string v3, "image/pdf"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v2, "PIC"

    const-string v3, "image/x-pict"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :cond_71
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    const-string v2, "image/jpg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryDataIsBmpFormat([B)Z
    .registers 5

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    const/16 v3, 0x42

    if-ne v3, v1, :cond_13

    const/16 v1, 0x4d

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    if-ne v1, p0, :cond_13

    move v0, v2

    :cond_13
    return v0
.end method

.method public static binaryDataIsGifFormat([B)Z
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x47

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-ne v0, v2, :cond_21

    const/16 v0, 0x49

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    if-ne v0, v2, :cond_21

    const/16 v0, 0x46

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    if-ne v0, p0, :cond_21

    move v1, v3

    :cond_21
    return v1
.end method

.method public static binaryDataIsJpgFormat([B)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_6

    return v1

    :cond_6
    aget-byte v0, p0, v1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_24

    const/16 v0, 0xd8

    aget-byte v4, p0, v3

    and-int/2addr v4, v2

    if-ne v0, v4, :cond_24

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/2addr v0, v2

    if-ne v2, v0, :cond_24

    const/16 v0, 0xe0

    const/4 v4, 0x3

    aget-byte p0, p0, v4

    and-int/2addr p0, v2

    if-gt v0, p0, :cond_24

    move v1, v3

    :cond_24
    return v1
.end method

.method public static binaryDataIsPdfFormat([B)Z
    .registers 5

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    const/16 v3, 0x25

    if-ne v3, v1, :cond_25

    const/16 v1, 0x50

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v1, v3, :cond_25

    const/16 v1, 0x44

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v1, v3, :cond_25

    const/16 v1, 0x46

    const/4 v3, 0x3

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    if-ne v1, p0, :cond_25

    move v0, v2

    :cond_25
    return v0
.end method

.method public static binaryDataIsPngFormat([B)Z
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x89

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2a

    const/16 v0, 0x50

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    if-ne v0, v2, :cond_2a

    const/16 v0, 0x4e

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v0, v2, :cond_2a

    const/16 v0, 0x47

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    if-ne v0, p0, :cond_2a

    move v1, v3

    :cond_2a
    return v1
.end method

.method public static binaryDataIsTiffFormat([B)Z
    .registers 9

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x2a

    const/16 v6, 0x49

    const/4 v7, 0x1

    if-ne v6, v2, :cond_20

    aget-byte v2, p0, v7

    and-int/lit16 v2, v2, 0xff

    if-ne v6, v2, :cond_20

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    if-ne v5, v2, :cond_20

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_38

    :cond_20
    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x4d

    if-ne v2, v1, :cond_39

    aget-byte v1, p0, v7

    and-int/lit16 v1, v1, 0xff

    if-ne v2, v1, :cond_39

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_39

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    if-ne v5, p0, :cond_39

    :cond_38
    move v0, v7

    :cond_39
    return v0
.end method

.method public static getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getMimeTypeForBinarySignature([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "image/png"

    return-object p0

    :cond_9
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "image/jpeg"

    return-object p0

    :cond_12
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "image/gif"

    return-object p0

    :cond_1b
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsBmpFormat([B)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "image/bmp"

    return-object p0

    :cond_24
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPdfFormat([B)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p0, "image/pdf"

    return-object p0

    :cond_2d
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsTiffFormat([B)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "image/tiff"

    return-object p0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isPortableFormat([B)Z
    .registers 2

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
