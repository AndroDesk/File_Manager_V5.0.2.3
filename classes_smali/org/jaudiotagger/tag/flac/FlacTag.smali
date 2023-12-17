.class public Lorg/jaudiotagger/tag/flac/FlacTag;
.super Ljava/lang/Object;
.source "FlacTag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 14
    iput-object p2, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 3
    :cond_c
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_11
    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 2

    .line 8
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public createArtworkField(Ljava/awt/image/BufferedImage;ILjava/lang/String;Ljava/lang/String;II)Lorg/jaudiotagger/tag/TagField;
    .registers 19

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-static {p3}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, p1

    invoke-static {p1, v1, v2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 4
    new-instance v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    move-object v3, v1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v1

    .line 5
    :catch_2d
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    const-string v1, "Unable to convert image to bytearray, check mimetype parameter"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArtworkField([BILjava/lang/String;Ljava/lang/String;IIII)Lorg/jaudiotagger/tag/TagField;
    .registers 19

    .line 1
    new-instance v9, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method

.method public createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 4

    .line 7
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 8
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 9
    :cond_13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 13

    .line 10
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getPictureType()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "-->"

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    .line 12
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_48

    .line 13
    new-instance v10, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getPictureType()I

    move-result v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v10

    .line 14
    :catch_48
    new-instance p1, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    const-string v0, "Unable to createField bufferd image from the image"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 4

    .line 4
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 6
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createLinkedArtworkField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 12

    .line 1
    new-instance v9, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 3
    const-string v0, "ISO-8859-1"

    .line 5
    invoke-static {p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 8
    move-result-object v1

    .line 9
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v2

    .line 15
    const-string v3, "-->"

    .line 17
    const-string v4, ""

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v0, v9

    .line 24
    invoke-direct/range {v0 .. v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    .line 27
    return-object v9
.end method

.method public deleteArtworkField()V
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/flac/FlacTag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    .line 6
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .registers 3

    .line 4
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_17

    .line 6
    :cond_12
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_13

    .line 3
    :cond_e
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    :goto_13
    return-void
.end method

.method public getArtworkList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Artwork;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget-object v1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_25

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 30
    invoke-static {v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->createArtworkFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_11

    .line 38
    :cond_25
    return-object v0
.end method

.method public getFieldCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFieldCount()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public getFieldCountIncludingSubValues()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/flac/FlacTag;->getFieldCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    return-object p1

    .line 5
    :cond_28
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_23
    return-object p1

    .line 11
    :cond_24
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/flac/FlacTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/flac/FlacTag;->getArtworkList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_12

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 18
    return-object v0

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 3
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    return-object p1

    :cond_1e
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_20
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    if-eqz p1, :cond_16

    .line 5
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_f

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 7
    :cond_f
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 8
    :cond_16
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSubValue(Lorg/jaudiotagger/tag/FieldKey;II)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 18
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_RETRIEVED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 20
    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public getVorbisCommentTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 3
    return-object v0
.end method

.method public hasCommonFields()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->hasCommonFields()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_18

    .line 13
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    return p1

    .line 25
    :cond_18
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 27
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->hasField(Ljava/lang/String;)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    :cond_a
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public setEncoding(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setEncoding(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 4

    .line 5
    instance-of v0, p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_1d

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 7
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_22

    .line 8
    :cond_15
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 9
    :cond_1d
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_22
    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method
