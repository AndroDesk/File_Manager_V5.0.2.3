.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;
.super Ljava/lang/Object;
.source "MetadataBlockDataPicture.java"

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;
.implements Lorg/jaudiotagger/tag/TagField;


# static fields
.field public static final IMAGE_IS_URL:Ljava/lang/String; = "-->"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private colourDepth:I

.field private description:Ljava/lang/String;

.field private height:I

.field private imageData:[B

.field private indexedColouredCount:I

.field private mimeType:Ljava/lang/String;

.field private pictureType:I

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.flac.MetadataBlockDataPicture"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->initFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v1

    if-lt p2, v1, :cond_20

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->initFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void

    .line 9
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to read required number of databytes read:"

    const-string v2, ":required:"

    .line 10
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 9

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    .line 19
    iput-object p3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 21
    iput p5, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 22
    iput p6, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 23
    iput p7, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 24
    iput p8, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 25
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    return-void
.end method

.method private getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-array p2, p2, [B

    .line 3
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    new-instance p1, Ljava/lang/String;

    .line 8
    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 11
    return-object p1
.end method

.method private initFromByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    .line 7
    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getSize()I

    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_62

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 20
    move-result v0

    .line 21
    const-string v1, "ISO-8859-1"

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 32
    move-result v0

    .line 33
    const-string v1, "UTF-8"

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 68
    move-result v0

    .line 69
    new-array v0, v0, [B

    .line 71
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    .line 73
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 76
    sget-object p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->logger:Ljava/util/logging/Logger;

    .line 78
    const-string v0, "Read image:"

    .line 80
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 98
    return-void

    .line 99
    :cond_62
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 101
    const-string v0, "PictureType was:"

    .line 103
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object v0

    .line 107
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "but the maximum allowed is "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getSize()I

    .line 124
    move-result v1

    .line 125
    add-int/lit8 v1, v1, -0x1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p1
.end method


# virtual methods
.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public getBytes()[B
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    .line 8
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 15
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 28
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 30
    const-string v2, "ISO-8859-1"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 52
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 54
    const-string v2, "UTF-8"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 63
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 65
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 72
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 74
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 81
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 83
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 90
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 92
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    .line 101
    array-length v1, v1

    .line 102
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 109
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    .line 111
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 117
    move-result-object v0
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_75} :catch_76

    .line 118
    return-object v0

    .line 119
    :catch_76
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    throw v1
.end method

.method public getColourDepth()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 3
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getImageData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    .line 3
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    .line 15
    move-result-object v2

    .line 16
    array-length v2, v2

    .line 17
    const-string v3, "ISO-8859-1"

    .line 19
    invoke-static {v0, v1, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    const-string v0, ""

    .line 26
    return-object v0
.end method

.method public getIndexedColourCount()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 3
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()[B

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPictureType()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    .line 3
    return v0
.end method

.method public getRawContent()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 3
    return v0
.end method

.method public isBinary(Z)V
    .registers 2

    return-void
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCommon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isImageUrl()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "-->"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    .line 12
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ":"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 34
    const-string v3, "width:"

    .line 36
    invoke-static {v0, v2, v1, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ":height:"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ":colourdepth:"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ":indexedColourCount:"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ":image size in bytes:"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    .line 81
    array-length v1, v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
