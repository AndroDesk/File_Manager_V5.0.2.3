.class public Lorg/jaudiotagger/tag/datatype/Artwork;
.super Ljava/lang/Object;
.source "Artwork.java"


# instance fields
.field private binaryData:[B

.field private description:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private isLinked:Z

.field private mimeType:Ljava/lang/String;

.field private pictureType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->mimeType:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->description:Ljava/lang/String;

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->isLinked:Z

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->imageUrl:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->pictureType:I

    .line 18
    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 2

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setFromFile(Ljava/io/File;)V

    .line 9
    return-object v0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 2

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V

    .line 9
    return-object v0
.end method


# virtual methods
.method public getBinaryData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->binaryData:[B

    .line 3
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->imageUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPictureType()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->pictureType:I

    .line 3
    return v0
.end method

.method public isLinked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->isLinked:Z

    .line 3
    return v0
.end method

.method public setBinaryData([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->binaryData:[B

    .line 3
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->description:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFromFile(Ljava/io/File;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 3
    const-string v1, "r"

    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 11
    move-result-wide v1

    .line 12
    long-to-int p1, v1

    .line 13
    new-array p1, p1, [B

    .line 15
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 21
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 24
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 31
    const-string p1, ""

    .line 33
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setDescription(Ljava/lang/String;)V

    .line 36
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    .line 45
    return-void
.end method

.method public setFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getDescription()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setDescription(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getPictureType()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    .line 22
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2a

    .line 28
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setLinked(Z)V

    .line 35
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageUrl()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setImageUrl(Ljava/lang/String;)V

    .line 42
    goto :goto_31

    .line 43
    :cond_2a
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 50
    :goto_31
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->imageUrl:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLinked(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->isLinked:Z

    .line 3
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->mimeType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPictureType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->pictureType:I

    .line 3
    return-void
.end method
