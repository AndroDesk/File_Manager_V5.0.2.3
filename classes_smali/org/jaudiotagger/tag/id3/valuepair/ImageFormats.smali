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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    .line 15
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 17
    const-string v1, "JPG"

    .line 19
    const-string v2, "image/jpeg"

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 26
    const-string v2, "PNG"

    .line 28
    const-string v3, "image/png"

    .line 30
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 35
    const-string v2, "GIF"

    .line 37
    const-string v3, "image/gif"

    .line 39
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 44
    const-string v2, "BMP"

    .line 46
    const-string v3, "image/bmp"

    .line 48
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 53
    const-string v2, "TIF"

    .line 55
    const-string v3, "image/tiff"

    .line 57
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 62
    const-string v2, "PDF"

    .line 64
    const-string v3, "image/pdf"

    .line 66
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 71
    const-string v2, "PIC"

    .line 73
    const-string v3, "image/x-pict"

    .line 75
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 80
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v0

    .line 88
    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_71

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljava/lang/String;

    .line 100
    sget-object v3, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 102
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 108
    sget-object v4, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    .line 110
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    goto :goto_57

    .line 114
    :cond_71
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    .line 116
    const-string v2, "image/jpg"

    .line 118
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryDataIsBmpFormat([B)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 4
    and-int/lit16 v1, v1, 0xff

    .line 6
    const/4 v2, 0x1

    .line 7
    const/16 v3, 0x42

    .line 9
    if-ne v3, v1, :cond_13

    .line 11
    const/16 v1, 0x4d

    .line 13
    aget-byte p0, p0, v2

    .line 15
    and-int/lit16 p0, p0, 0xff

    .line 17
    if-ne v1, p0, :cond_13

    .line 19
    move v0, v2

    .line 20
    :cond_13
    return v0
.end method

.method public static binaryDataIsGifFormat([B)Z
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    if-ge v0, v2, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/16 v0, 0x47

    .line 9
    aget-byte v2, p0, v1

    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v2, :cond_21

    .line 16
    const/16 v0, 0x49

    .line 18
    aget-byte v2, p0, v3

    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 22
    if-ne v0, v2, :cond_21

    .line 24
    const/16 v0, 0x46

    .line 26
    const/4 v2, 0x2

    .line 27
    aget-byte p0, p0, v2

    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 31
    if-ne v0, p0, :cond_21

    .line 33
    move v1, v3

    .line 34
    :cond_21
    return v1
.end method

.method public static binaryDataIsJpgFormat([B)Z
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    if-ge v0, v2, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    aget-byte v0, p0, v1

    .line 9
    const/16 v2, 0xff

    .line 11
    and-int/2addr v0, v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v2, v0, :cond_24

    .line 15
    const/16 v0, 0xd8

    .line 17
    aget-byte v4, p0, v3

    .line 19
    and-int/2addr v4, v2

    .line 20
    if-ne v0, v4, :cond_24

    .line 22
    const/4 v0, 0x2

    .line 23
    aget-byte v0, p0, v0

    .line 25
    and-int/2addr v0, v2

    .line 26
    if-ne v2, v0, :cond_24

    .line 28
    const/16 v0, 0xe0

    .line 30
    const/4 v4, 0x3

    .line 31
    aget-byte p0, p0, v4

    .line 33
    and-int/2addr p0, v2

    .line 34
    if-gt v0, p0, :cond_24

    .line 36
    move v1, v3

    .line 37
    :cond_24
    return v1
.end method

.method public static binaryDataIsPdfFormat([B)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 4
    and-int/lit16 v1, v1, 0xff

    .line 6
    const/4 v2, 0x1

    .line 7
    const/16 v3, 0x25

    .line 9
    if-ne v3, v1, :cond_25

    .line 11
    const/16 v1, 0x50

    .line 13
    aget-byte v3, p0, v2

    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 17
    if-ne v1, v3, :cond_25

    .line 19
    const/16 v1, 0x44

    .line 21
    const/4 v3, 0x2

    .line 22
    aget-byte v3, p0, v3

    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 26
    if-ne v1, v3, :cond_25

    .line 28
    const/16 v1, 0x46

    .line 30
    const/4 v3, 0x3

    .line 31
    aget-byte p0, p0, v3

    .line 33
    and-int/lit16 p0, p0, 0xff

    .line 35
    if-ne v1, p0, :cond_25

    .line 37
    move v0, v2

    .line 38
    :cond_25
    return v0
.end method

.method public static binaryDataIsPngFormat([B)Z
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    if-ge v0, v2, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/16 v0, 0x89

    .line 9
    aget-byte v2, p0, v1

    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v2, :cond_2a

    .line 16
    const/16 v0, 0x50

    .line 18
    aget-byte v2, p0, v3

    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 22
    if-ne v0, v2, :cond_2a

    .line 24
    const/16 v0, 0x4e

    .line 26
    const/4 v2, 0x2

    .line 27
    aget-byte v2, p0, v2

    .line 29
    and-int/lit16 v2, v2, 0xff

    .line 31
    if-ne v0, v2, :cond_2a

    .line 33
    const/16 v0, 0x47

    .line 35
    const/4 v2, 0x3

    .line 36
    aget-byte p0, p0, v2

    .line 38
    and-int/lit16 p0, p0, 0xff

    .line 40
    if-ne v0, p0, :cond_2a

    .line 42
    move v1, v3

    .line 43
    :cond_2a
    return v1
.end method

.method public static binaryDataIsTiffFormat([B)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 4
    and-int/lit16 v2, v1, 0xff

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/16 v5, 0x2a

    .line 10
    const/16 v6, 0x49

    .line 12
    const/4 v7, 0x1

    .line 13
    if-ne v6, v2, :cond_20

    .line 15
    aget-byte v2, p0, v7

    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 19
    if-ne v6, v2, :cond_20

    .line 21
    aget-byte v2, p0, v4

    .line 23
    and-int/lit16 v2, v2, 0xff

    .line 25
    if-ne v5, v2, :cond_20

    .line 27
    aget-byte v2, p0, v3

    .line 29
    and-int/lit16 v2, v2, 0xff

    .line 31
    if-eqz v2, :cond_38

    .line 33
    :cond_20
    and-int/lit16 v1, v1, 0xff

    .line 35
    const/16 v2, 0x4d

    .line 37
    if-ne v2, v1, :cond_39

    .line 39
    aget-byte v1, p0, v7

    .line 41
    and-int/lit16 v1, v1, 0xff

    .line 43
    if-ne v2, v1, :cond_39

    .line 45
    aget-byte v1, p0, v4

    .line 47
    and-int/lit16 v1, v1, 0xff

    .line 49
    if-nez v1, :cond_39

    .line 51
    aget-byte p0, p0, v3

    .line 53
    and-int/lit16 p0, p0, 0xff

    .line 55
    if-ne v5, p0, :cond_39

    .line 57
    :cond_38
    move v0, v7

    .line 58
    :cond_39
    return v0
.end method

.method public static getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public static getMimeTypeForBinarySignature([B)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string p0, "image/png"

    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_12

    .line 16
    const-string p0, "image/jpeg"

    .line 18
    return-object p0

    .line 19
    :cond_12
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    const-string p0, "image/gif"

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsBmpFormat([B)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_24

    .line 34
    const-string p0, "image/bmp"

    .line 36
    return-object p0

    .line 37
    :cond_24
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPdfFormat([B)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2d

    .line 43
    const-string p0, "image/pdf"

    .line 45
    return-object p0

    .line 46
    :cond_2d
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsTiffFormat([B)Z

    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_36

    .line 52
    const-string p0, "image/tiff"

    .line 54
    return-object p0

    .line 55
    :cond_36
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public static isPortableFormat([B)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_15

    .line 7
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_15

    .line 13
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 23
    :goto_16
    return p0
.end method
