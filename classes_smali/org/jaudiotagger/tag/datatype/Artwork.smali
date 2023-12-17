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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->description:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->isLinked:Z

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->imageUrl:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->pictureType:I

    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 2

    new-instance v0, Lorg/jaudiotagger/tag/datatype/Artwork;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setFromFile(Ljava/io/File;)V

    return-object v0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 2

    new-instance v0, Lorg/jaudiotagger/tag/datatype/Artwork;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V

    return-object v0
.end method


# virtual methods
.method public getBinaryData()[B
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->binaryData:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->pictureType:I

    return v0
.end method

.method public isLinked()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->isLinked:Z

    return v0
.end method

.method public setBinaryData([B)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->binaryData:[B

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->description:Ljava/lang/String;

    return-void
.end method

.method public setFromFile(Ljava/io/File;)V
    .registers 5

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setDescription(Ljava/lang/String;)V

    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    return-void
.end method

.method public setFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V
    .registers 3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getPictureType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/Artwork;->setLinked(Z)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_31

    :cond_2a
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    :goto_31
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLinked(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->isLinked:Z

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setPictureType(I)V
    .registers 2

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/Artwork;->pictureType:I

    return-void
.end method
