.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;
.super Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;
.source "Mp4TagCoverField.java"


# instance fields
.field private dataAndHeaderSize:I

.field private imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)V
    .registers 6

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 4
    invoke-static {p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->isCoverArtType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 5
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_IMAGE_FORMAT_IS_NOT_TO_EXPECTED_TYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 6
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;[B)V

    .line 7
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8
    sget-object p1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_44

    .line 9
    :cond_14
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 10
    sget-object p1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_44

    .line 11
    :cond_1f
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 12
    sget-object p1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_44

    .line 13
    :cond_2a
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsBmpFormat([B)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 14
    sget-object p1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_44

    .line 15
    :cond_35
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_UNIDENITIFED_IMAGE_FORMAT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 16
    sget-object p1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    :goto_44
    return-void
.end method

.method public static getMimeTypeForImageType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    if-ne p0, v0, :cond_7

    .line 5
    const-string p0, "image/png"

    .line 7
    return-object p0

    .line 8
    :cond_7
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 10
    if-ne p0, v0, :cond_e

    .line 12
    const-string p0, "image/jpeg"

    .line 14
    return-object p0

    .line 15
    :cond_e
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 17
    if-ne p0, v0, :cond_15

    .line 19
    const-string p0, "image/gif"

    .line 21
    return-object p0

    .line 22
    :cond_15
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 24
    if-ne p0, v0, :cond_1c

    .line 26
    const-string p0, "image/bmp"

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 9
    move-result v1

    .line 10
    iput v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    .line 12
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, 0x8

    .line 24
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    .line 29
    add-int/lit8 v0, v0, -0x8

    .line 31
    new-array v0, v0, [B

    .line 33
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 35
    array-length v1, v0

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, 0x8

    .line 50
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 53
    move-result v2

    .line 54
    if-gt v1, v2, :cond_5e

    .line 56
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 58
    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 61
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    const-string v3, "name"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_5b

    .line 73
    iget p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    .line 75
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 78
    move-result v0

    .line 79
    add-int/2addr v0, p1

    .line 80
    iput v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    .line 82
    iget p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    .line 84
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 87
    move-result v0

    .line 88
    add-int/2addr v0, p1

    .line 89
    iput v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    .line 91
    goto :goto_5e

    .line 92
    :cond_5b
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    :cond_5e
    :goto_5e
    return-void
.end method

.method public getDataAndHeaderSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    .line 3
    return v0
.end method

.method public getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    return-object v0
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ":"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 18
    array-length v1, v1

    .line 19
    const-string v2, "bytes"

    .line 21
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
