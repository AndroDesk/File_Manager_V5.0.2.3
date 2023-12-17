.class public Lorg/jaudiotagger/tag/asf/AsfTagCoverField;
.super Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;
.source "AsfTagCoverField.java"


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private description:Ljava/lang/String;

.field private endOfName:I

.field private imageDataSize:I

.field private mimeType:Ljava/lang/String;

.field private pictureType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.asf.tag"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->LOGGER:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->endOfName:I

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COVER_ART:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    .line 8
    :try_start_1d
    invoke-direct {p0}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->processRawContent()V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Descriptor type must be binary"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Descriptor description must be WM/Picture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COVER_ART:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->endOfName:I

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->createRawContent([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method

.method private createRawContent([BILjava/lang/String;Ljava/lang/String;)[B
    .registers 9

    .line 1
    const-string v0, "Unable to find encoding:"

    .line 3
    iput-object p3, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    .line 5
    if-nez p4, :cond_19

    .line 7
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    .line 10
    move-result-object p4

    .line 11
    if-nez p4, :cond_19

    .line 13
    sget-object p4, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->LOGGER:Ljava/util/logging/Logger;

    .line 15
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_UNIDENITIFED_IMAGE_FORMAT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p4, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 24
    const-string p4, "image/png"

    .line 26
    :cond_19
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 28
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 34
    array-length p2, p1

    .line 35
    invoke-static {p2}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    .line 38
    move-result-object p2

    .line 39
    const/4 v2, 0x4

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, p2, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 44
    :try_start_2b
    sget-object p2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 46
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 53
    move-result-object p4
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_35} :catch_7a

    .line 54
    array-length v2, p4

    .line 55
    invoke-virtual {v1, p4, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 58
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 64
    if-eqz p3, :cond_6b

    .line 66
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 69
    move-result p4

    .line 70
    if-lez p4, :cond_6b

    .line 72
    :try_start_47
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 79
    move-result-object p2
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_4f} :catch_54

    .line 80
    array-length p3, p2

    .line 81
    invoke-virtual {v1, p2, v3, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 84
    goto :goto_6b

    .line 85
    :catch_54
    new-instance p1, Ljava/lang/RuntimeException;

    .line 87
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object p2

    .line 91
    sget-object p3, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 93
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1

    .line 108
    :cond_6b
    :goto_6b
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    array-length p2, p1

    .line 115
    invoke-virtual {v1, p1, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 118
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :catch_7a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 125
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    move-result-object p2

    .line 129
    sget-object p3, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 131
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 134
    move-result-object p3

    .line 135
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p1
.end method

.method private processRawContent()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-byte v0, v0, v1

    .line 8
    iput v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->pictureType:I

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v0, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([BII)I

    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->imageDataSize:I

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    .line 27
    const/4 v0, 0x5

    .line 28
    move v4, v0

    .line 29
    :goto_1c
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 32
    move-result-object v5

    .line 33
    array-length v5, v5

    .line 34
    sub-int/2addr v5, v2

    .line 35
    if-ge v4, v5, :cond_64

    .line 37
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 40
    move-result-object v5

    .line 41
    aget-byte v5, v5, v4

    .line 43
    if-nez v5, :cond_61

    .line 45
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 48
    move-result-object v5

    .line 49
    add-int/lit8 v6, v4, 0x1

    .line 51
    aget-byte v5, v5, v6

    .line 53
    if-nez v5, :cond_61

    .line 55
    iget-object v5, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    .line 57
    const-string v6, "UTF-16LE"

    .line 59
    if-nez v5, :cond_4c

    .line 61
    new-instance v1, Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 66
    move-result-object v5

    .line 67
    add-int/lit8 v7, v4, -0x5

    .line 69
    invoke-direct {v1, v5, v0, v7, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 72
    iput-object v1, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    .line 74
    add-int/lit8 v1, v4, 0x2

    .line 76
    goto :goto_61

    .line 77
    :cond_4c
    iget-object v5, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    .line 79
    if-nez v5, :cond_61

    .line 81
    new-instance v0, Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 86
    move-result-object v2

    .line 87
    sub-int v5, v4, v1

    .line 89
    invoke-direct {v0, v2, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 92
    iput-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    .line 94
    add-int/2addr v4, v3

    .line 95
    iput v4, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->endOfName:I

    .line 97
    goto :goto_64

    .line 98
    :cond_61
    :goto_61
    add-int/lit8 v4, v4, 0x2

    .line 100
    goto :goto_1c

    .line 101
    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getImageDataSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->imageDataSize:I

    .line 3
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPictureType()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->pictureType:I

    .line 3
    return v0
.end method

.method public getRawImageData()[B
    .registers 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getRawContent()[B

    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->endOfName:I

    .line 12
    iget-object v3, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 14
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    .line 17
    move-result v3

    .line 18
    iget v4, p0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->endOfName:I

    .line 20
    sub-int/2addr v3, v4

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
