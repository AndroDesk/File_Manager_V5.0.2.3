.class public Lorg/jaudiotagger/tag/id3/ID3v24Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.source "ID3v24Tag.java"


# static fields
.field public static final MAJOR_VERSION:B = 0x4t

.field public static final MASK_V24_COMPRESSION:I = 0x10

.field public static final MASK_V24_CRC_DATA_PRESENT:I = 0x20

.field public static final MASK_V24_DATA_LENGTH_INDICATOR:I = 0x2

.field public static final MASK_V24_ENCRYPTION:I = 0x8

.field public static final MASK_V24_EXPERIMENTAL:I = 0x20

.field public static final MASK_V24_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V24_FILE_ALTER_PRESERVATION:I = 0x20

.field public static final MASK_V24_FOOTER_PRESENT:I = 0x10

.field public static final MASK_V24_FRAME_UNSYNCHRONIZATION:I = 0x4

.field public static final MASK_V24_GROUPING_IDENTITY:I = 0x40

.field public static final MASK_V24_IMAGE_ENCODING:I = 0x4

.field public static final MASK_V24_IMAGE_SIZE_RESTRICTIONS:I = 0x6

.field public static final MASK_V24_READ_ONLY:I = 0x10

.field public static final MASK_V24_TAG_ALTER_PRESERVATION:I = 0x40

.field public static final MASK_V24_TAG_RESTRICTIONS:I = 0x10

.field public static final MASK_V24_TAG_SIZE_RESTRICTIONS:I = -0x40

.field public static final MASK_V24_TAG_UPDATE:I = 0x40

.field public static final MASK_V24_TEXT_ENCODING_RESTRICTIONS:I = 0x20

.field public static final MASK_V24_TEXT_FIELD_SIZE_RESTRICTIONS:I = 0x18

.field public static final MASK_V24_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field public static TAG_EXT_HEADER_CRC_DATA_LENGTH:I = 0x5

.field public static TAG_EXT_HEADER_CRC_LENGTH:I = 0x6

.field public static TAG_EXT_HEADER_LENGTH:I = 0x6

.field public static TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I = 0x1

.field public static TAG_EXT_HEADER_RESTRICTION_LENGTH:I = 0x2

.field public static TAG_EXT_HEADER_UPDATE_LENGTH:I = 0x1

.field public static TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I = 0x1

.field public static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field public static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field public static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field public static final TYPE_FOOTER:Ljava/lang/String; = "footer"

.field public static final TYPE_IMAGEENCODINGRESTRICTION:Ljava/lang/String; = "imageEncodingRestriction"

.field public static final TYPE_IMAGESIZERESTRICTION:Ljava/lang/String; = "imageSizeRestriction"

.field public static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field public static final TYPE_TAGRESTRICTION:Ljava/lang/String; = "tagRestriction"

.field public static final TYPE_TAGSIZERESTRICTION:Ljava/lang/String; = "tagSizeRestriction"

.field public static final TYPE_TEXTENCODINGRESTRICTION:Ljava/lang/String; = "textEncodingRestriction"

.field public static final TYPE_TEXTFIELDSIZERESTRICTION:Ljava/lang/String; = "textFieldSizeRestriction"

.field public static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"

.field public static final TYPE_UPDATETAG:Ljava/lang/String; = "updateTag"


# instance fields
.field public crcData:I

.field public crcDataFlag:Z

.field public experimental:Z

.field public extended:Z

.field public footer:Z

.field public imageEncodingRestriction:B

.field public imageSizeRestriction:B

.field public paddingSize:I

.field public tagRestriction:Z

.field public tagSizeRestriction:B

.field public textEncodingRestriction:B

.field public textFieldSizeRestriction:B

.field public unsynchronization:Z

.field public updateTag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 3
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 4
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 6
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 7
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 8
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 9
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 10
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 11
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 12
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 13
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 14
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 15
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, ""

    .line 130
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 114
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 115
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 116
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 117
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 119
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 120
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 121
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 122
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 123
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 124
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 125
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 128
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 8

    .line 36
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 38
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 39
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 40
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 41
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 42
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 43
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 44
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 45
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 46
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 47
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 48
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 49
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 50
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 51
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v2, "Creating tag from a tag of a different version"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1be

    .line 54
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-nez v1, :cond_1b6

    .line 55
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_50

    .line 56
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 58
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    goto/16 :goto_1be

    .line 59
    :cond_50
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v1, :cond_17a

    .line 60
    move-object v1, p1

    check-cast v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 61
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_79

    .line 62
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    .line 63
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TIT2"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 65
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_79
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9b

    .line 67
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    .line 68
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TPE1"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 70
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_9b
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_bd

    .line 72
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    .line 73
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TALB"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 75
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_bd
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_df

    .line 77
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;-><init>(BLjava/lang/String;)V

    .line 78
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TDRC"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 80
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_df
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_105

    .line 82
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    const-string v4, "ENG"

    const-string v5, ""

    invoke-direct {v2, v0, v4, v5, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "COMM"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 85
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_105
    iget-byte v1, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    and-int/lit16 v2, v1, 0xff

    if-ltz v2, :cond_153

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0xff

    if-eq v2, v3, :cond_153

    and-int/2addr v1, v3

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-direct {v2, v0, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    .line 90
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v3, "TCON"

    invoke-direct {v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 92
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_153
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    if-eqz v1, :cond_1be

    .line 94
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    .line 95
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-lez p1, :cond_1be

    .line 96
    new-instance v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    .line 97
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v0, "TRCK"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1be

    .line 100
    :cond_17a
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    if-eqz v0, :cond_1be

    .line 101
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_18a

    .line 102
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;)V

    goto :goto_18f

    .line 103
    :cond_18a
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    .line 104
    :goto_18f
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 105
    :goto_193
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 106
    :try_start_199
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 107
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V

    .line 108
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ad
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_199 .. :try_end_1ad} :catch_1ae

    goto :goto_193

    .line 109
    :catch_1ae
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Unable to convert Lyrics3 to v24 Frame:Frame Identifier"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_193

    .line 110
    :cond_1b6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1be
    :goto_1be
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Tag;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 20
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 21
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 22
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 23
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 24
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 25
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 26
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 27
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 28
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 29
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 30
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 31
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 32
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 33
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 35
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 4
    move-result p2

    .line 5
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-le p2, v0, :cond_82

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 18
    move-result p2

    .line 19
    and-int/lit8 v0, p2, 0x40

    .line 21
    if-eqz v0, :cond_18

    .line 23
    move v0, v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v3

    .line 26
    :goto_19
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 28
    and-int/lit8 v4, p2, 0x20

    .line 30
    if-eqz v4, :cond_21

    .line 32
    move v4, v2

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v4, v3

    .line 35
    :goto_22
    iput-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 37
    and-int/lit8 p2, p2, 0x10

    .line 39
    if-eqz p2, :cond_2a

    .line 41
    move p2, v2

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move p2, v3

    .line 44
    :goto_2b
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 46
    if-eqz v0, :cond_32

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 51
    :cond_32
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 53
    if-eqz p2, :cond_53

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 58
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    .line 60
    new-array v0, p2, [B

    .line 62
    invoke-virtual {p1, v0, v3, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 65
    iput v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 67
    move p2, v3

    .line 68
    :goto_43
    sget v4, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    .line 70
    if-ge p2, v4, :cond_53

    .line 72
    iget v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 74
    shl-int/lit8 v4, v4, 0x8

    .line 76
    aget-byte v5, v0, p2

    .line 78
    add-int/2addr v4, v5

    .line 79
    iput v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 83
    goto :goto_43

    .line 84
    :cond_53
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 86
    if-eqz p2, :cond_81

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 91
    new-array p2, v2, [B

    .line 93
    invoke-virtual {p1, p2, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 96
    aget-byte p1, p2, v3

    .line 98
    and-int/lit8 p2, p1, -0x40

    .line 100
    shr-int/lit8 p2, p2, 0x6

    .line 102
    int-to-byte p2, p2

    .line 103
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 105
    and-int/lit8 p2, p1, 0x20

    .line 107
    shr-int/lit8 p2, p2, 0x5

    .line 109
    int-to-byte p2, p2

    .line 110
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 112
    and-int/lit8 p2, p1, 0x18

    .line 114
    shr-int/lit8 p2, p2, 0x3

    .line 116
    int-to-byte p2, p2

    .line 117
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 119
    and-int/lit8 p2, p1, 0x4

    .line 121
    shr-int/2addr p2, v1

    .line 122
    int-to-byte p2, p2

    .line 123
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 125
    and-int/lit8 p1, p1, 0x6

    .line 127
    int-to-byte p1, p1

    .line 128
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 130
    :cond_81
    return-void

    .line 131
    :cond_82
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    .line 133
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 141
    aput-object v4, v1, v3

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object p2

    .line 147
    aput-object p2, v1, v2

    .line 149
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p1
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result p1

    .line 5
    and-int/lit16 v0, p1, 0x80

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_c

    .line 11
    move v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 16
    and-int/lit8 v0, p1, 0x40

    .line 18
    if-eqz v0, :cond_15

    .line 20
    move v0, v2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v1

    .line 23
    :goto_16
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 25
    and-int/lit8 v0, p1, 0x20

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    move v0, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v0, v1

    .line 32
    :goto_1f
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 34
    and-int/lit8 v0, p1, 0x10

    .line 36
    if-eqz v0, :cond_27

    .line 38
    move v0, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v0, v1

    .line 41
    :goto_28
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 43
    and-int/lit8 v0, p1, 0x8

    .line 45
    const/4 v3, 0x2

    .line 46
    if-eqz v0, :cond_4a

    .line 48
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 50
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 52
    new-array v5, v3, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 57
    move-result-object v6

    .line 58
    aput-object v6, v5, v1

    .line 60
    const/16 v6, 0x8

    .line 62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v6

    .line 66
    aput-object v6, v5, v2

    .line 68
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 75
    :cond_4a
    and-int/lit8 v0, p1, 0x4

    .line 77
    if-eqz v0, :cond_68

    .line 79
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 81
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 83
    new-array v5, v3, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    aput-object v6, v5, v1

    .line 91
    const/4 v6, 0x4

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v6

    .line 96
    aput-object v6, v5, v2

    .line 98
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 105
    :cond_68
    and-int/lit8 v0, p1, 0x2

    .line 107
    if-eqz v0, :cond_85

    .line 109
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 111
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 113
    new-array v5, v3, [Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    aput-object v6, v5, v1

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v6

    .line 125
    aput-object v6, v5, v2

    .line 127
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 134
    :cond_85
    and-int/2addr p1, v2

    .line 135
    if-eqz p1, :cond_a1

    .line 137
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 139
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 141
    new-array v3, v3, [Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 146
    move-result-object v4

    .line 147
    aput-object v4, v3, v1

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v4

    .line 153
    aput-object v4, v3, v2

    .line 155
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 162
    :cond_a1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_ba

    .line 168
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 170
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 172
    new-array v3, v2, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 177
    move-result-object v4

    .line 178
    aput-object v4, v3, v1

    .line 180
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 187
    :cond_ba
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 189
    if-eqz p1, :cond_d1

    .line 191
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 193
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 195
    new-array v3, v2, [Ljava/lang/Object;

    .line 197
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 200
    move-result-object v4

    .line 201
    aput-object v4, v3, v1

    .line 203
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 210
    :cond_d1
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 212
    if-eqz p1, :cond_e8

    .line 214
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 216
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 218
    new-array v3, v2, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 223
    move-result-object v4

    .line 224
    aput-object v4, v3, v1

    .line 226
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 233
    :cond_e8
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 235
    if-eqz p1, :cond_ff

    .line 237
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 239
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_FOOTER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 241
    new-array v2, v2, [Ljava/lang/Object;

    .line 243
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 246
    move-result-object v3

    .line 247
    aput-object v3, v2, v1

    .line 249
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 256
    :cond_ff
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 4
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 6
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 8
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 10
    const/16 v1, 0xa

    .line 12
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    .line 18
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getMajorVersion()B

    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getRevision()B

    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2c

    .line 41
    const/16 v2, 0x80

    .line 43
    int-to-byte v2, v2

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v2, v0

    .line 46
    :goto_2d
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 48
    if-eqz v3, :cond_34

    .line 50
    or-int/lit8 v2, v2, 0x40

    .line 52
    int-to-byte v2, v2

    .line 53
    :cond_34
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 55
    if-eqz v3, :cond_3b

    .line 57
    or-int/lit8 v2, v2, 0x20

    .line 59
    int-to-byte v2, v2

    .line 60
    :cond_3b
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 62
    if-eqz v3, :cond_42

    .line 64
    or-int/lit8 v2, v2, 0x10

    .line 66
    int-to-byte v2, v2

    .line 67
    :cond_42
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 72
    if-eqz v2, :cond_62

    .line 74
    sget v2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 76
    add-int/2addr v2, v0

    .line 77
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 79
    if-eqz v3, :cond_53

    .line 81
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    .line 83
    add-int/2addr v2, v3

    .line 84
    :cond_53
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 86
    if-eqz v3, :cond_5a

    .line 88
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 90
    add-int/2addr v2, v3

    .line 91
    :cond_5a
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 93
    if-eqz v3, :cond_63

    .line 95
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    .line 97
    add-int/2addr v2, v3

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v2, v0

    .line 100
    :cond_63
    :goto_63
    add-int/2addr p1, p2

    .line 101
    add-int/2addr p1, v2

    .line 102
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    const/4 p1, 0x0

    .line 110
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 112
    if-eqz p2, :cond_d6

    .line 114
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 116
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 118
    if-eqz p2, :cond_7a

    .line 120
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    .line 122
    add-int/2addr p1, p2

    .line 123
    :cond_7a
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 125
    if-eqz p2, :cond_81

    .line 127
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 129
    add-int/2addr p1, p2

    .line 130
    :cond_81
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 132
    if-eqz p2, :cond_88

    .line 134
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    .line 136
    add-int/2addr p1, p2

    .line 137
    :cond_88
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 144
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I

    .line 146
    int-to-byte p1, p1

    .line 147
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 152
    if-eqz p1, :cond_9d

    .line 154
    const/16 p1, 0x40

    .line 156
    int-to-byte p1, p1

    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    move p1, v0

    .line 159
    :goto_9e
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 161
    if-eqz v2, :cond_a5

    .line 163
    or-int/lit8 p1, p1, 0x20

    .line 165
    int-to-byte p1, p1

    .line 166
    :cond_a5
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 168
    if-eqz v2, :cond_ac

    .line 170
    or-int/lit8 p1, p1, 0x10

    .line 172
    int-to-byte p1, p1

    .line 173
    :cond_ac
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 176
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 178
    if-eqz p1, :cond_b6

    .line 180
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    :cond_b6
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 185
    if-eqz p1, :cond_c8

    .line 187
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    .line 189
    int-to-byte p1, p1

    .line 190
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 196
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 198
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 201
    :cond_c8
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 203
    if-eqz p1, :cond_d5

    .line 205
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I

    .line 207
    int-to-byte p1, p1

    .line 208
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 214
    :cond_d5
    move-object p1, p2

    .line 215
    :cond_d6
    if-eqz p1, :cond_de

    .line 217
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 220
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 223
    :cond_de
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 226
    return-object v1
.end method


# virtual methods
.method public addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 5

    .line 1
    :try_start_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 12
    goto :goto_31

    .line 13
    :cond_c
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 15
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 18
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_18
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_18} :catch_19

    .line 25
    goto :goto_31

    .line 26
    :catch_19
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 28
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 30
    const-string v2, "Unable to convert frame:"

    .line 32
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 50
    :goto_31
    return-void
.end method

.method public copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_f6

    .line 13
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 25
    if-eqz v0, :cond_f0

    .line 27
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 29
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 39
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 42
    move-result-object v0

    .line 43
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 45
    if-eqz v0, :cond_db

    .line 47
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 50
    move-result-object v0

    .line 51
    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 53
    if-eqz v0, :cond_b2

    .line 55
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 57
    const-string v1, "Modifying frame in map:"

    .line 59
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 83
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 89
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_5f

    .line 95
    return-void

    .line 96
    :cond_5f
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    const-string v1, "TYER"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_73

    .line 108
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 115
    goto :goto_a8

    .line 116
    :cond_73
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    const-string v1, "TDAT"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_8e

    .line 128
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    .line 138
    move-result p2

    .line 139
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    .line 142
    goto :goto_a8

    .line 143
    :cond_8e
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    const-string v1, "TIME"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_a8

    .line 155
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    .line 165
    move-result p2

    .line 166
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    .line 169
    :cond_a8
    :goto_a8
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    const-string v0, "Text"

    .line 175
    invoke-virtual {p1, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    goto :goto_ff

    .line 179
    :cond_b2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 182
    move-result-object p1

    .line 183
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    .line 185
    if-eqz p1, :cond_c4

    .line 187
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 189
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    goto :goto_ff

    .line 197
    :cond_c4
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 199
    const-string v0, "Found duplicate TDRC frame in invalid situation,discarding:"

    .line 201
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 219
    goto :goto_ff

    .line 220
    :cond_db
    new-instance v0, Ljava/util/ArrayList;

    .line 222
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 233
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    goto :goto_ff

    .line 241
    :cond_f0
    check-cast p1, Ljava/util/List;

    .line 243
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    goto :goto_ff

    .line 247
    :cond_f6
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 249
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :goto_ff
    return-void
.end method

.method public copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Copying primitives"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 11
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 13
    if-eqz v0, :cond_30

    .line 15
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 17
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 19
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 21
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 23
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 25
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 27
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 29
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 31
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 33
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 35
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 37
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 39
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 41
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 43
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 45
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 47
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 49
    :cond_30
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 21
    const-string v2, "PictureData"

    .line 23
    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 28
    const-string v2, "PictureType"

    .line 30
    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string p1, "MIMEType"

    .line 35
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string p1, "Description"

    .line 40
    const-string p2, ""

    .line 42
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    move-result-object v2

    const-string v3, "PictureData"

    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getPictureType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PictureType"

    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MIMEType"

    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    const-string v2, ""

    .line 8
    invoke-virtual {v1, p1, v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 5

    if-eqz p1, :cond_14

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 2
    :cond_14
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    move-result-object p1

    return-object p1
.end method

.method public createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;
    .registers 3

    .line 2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .registers 6

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "tag"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 17
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "header"

    .line 23
    const-string v3, ""

    .line 25
    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    .line 35
    move-result v3

    .line 36
    const-string v4, "unsyncronisation"

    .line 38
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 41
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 44
    move-result-object v0

    .line 45
    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 47
    const-string v4, "crcdata"

    .line 49
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 52
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 55
    move-result-object v0

    .line 56
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 58
    const-string v4, "experimental"

    .line 60
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 63
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 66
    move-result-object v0

    .line 67
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 69
    const-string v4, "extended"

    .line 71
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 74
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 77
    move-result-object v0

    .line 78
    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 80
    const-string v4, "paddingsize"

    .line 82
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 85
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 88
    move-result-object v0

    .line 89
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 91
    const-string v4, "footer"

    .line 93
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 96
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 99
    move-result-object v0

    .line 100
    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 102
    const-string v4, "imageEncodingRestriction"

    .line 104
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 107
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 110
    move-result-object v0

    .line 111
    iget-byte v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 113
    const-string v4, "imageSizeRestriction"

    .line 115
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 118
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 121
    move-result-object v0

    .line 122
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 124
    const-string v4, "tagRestriction"

    .line 126
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 129
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 132
    move-result-object v0

    .line 133
    iget-byte v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 135
    const-string v4, "tagSizeRestriction"

    .line 137
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 140
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 143
    move-result-object v0

    .line 144
    iget-byte v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 146
    const-string v4, "textFieldSizeRestriction"

    .line 148
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 151
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 154
    move-result-object v0

    .line 155
    iget-byte v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 157
    const-string v4, "textEncodingRestriction"

    .line 159
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 162
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 165
    move-result-object v0

    .line 166
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 168
    const-string v4, "updateTag"

    .line 170
    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 173
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 183
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .registers 4

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 2
    :cond_13
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 10
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 12
    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 19
    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 21
    if-eq v2, v3, :cond_17

    .line 23
    return v1

    .line 24
    :cond_17
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 26
    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 28
    if-eq v2, v3, :cond_1e

    .line 30
    return v1

    .line 31
    :cond_1e
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 33
    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 35
    if-eq v2, v3, :cond_25

    .line 37
    return v1

    .line 38
    :cond_25
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 40
    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 42
    if-eq v2, v3, :cond_2c

    .line 44
    return v1

    .line 45
    :cond_2c
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 47
    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 49
    if-eq v2, v3, :cond_33

    .line 51
    return v1

    .line 52
    :cond_33
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 54
    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 56
    if-eq v2, v3, :cond_3a

    .line 58
    return v1

    .line 59
    :cond_3a
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 61
    iget-boolean v0, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 63
    if-ne v2, v0, :cond_47

    .line 65
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_47

    .line 71
    const/4 v1, 0x1

    .line 72
    :cond_47
    return v1
.end method

.method public getArtworkList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Artwork;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_57

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 32
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 34
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 40
    new-instance v3, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 42
    invoke-direct {v3}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    .line 45
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    .line 59
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4c

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setLinked(Z)V

    .line 69
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->setImageUrl(Ljava/lang/String;)V

    .line 76
    goto :goto_53

    .line 77
    :cond_4c
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 84
    :goto_53
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    goto :goto_13

    .line 88
    :cond_57
    return-object v1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;)Ljava/lang/String;
    .registers 5

    .line 1
    if-eqz p1, :cond_81

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, p0, v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;

    .line 18
    if-ne p1, v1, :cond_2a

    .line 20
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 34
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2a
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;

    .line 45
    if-ne p1, v1, :cond_45

    .line 47
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    .line 61
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_45
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;

    .line 72
    if-ne p1, v1, :cond_60

    .line 74
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 88
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :cond_60
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;

    .line 99
    if-ne p1, v1, :cond_7b

    .line 101
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    .line 115
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :cond_7b
    const/4 p1, 0x0

    .line 125
    invoke-super {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    :cond_81
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 132
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 135
    throw p1
.end method

.method public getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getId3KeyFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    new-instance p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-object p1

    .line 25
    :cond_18
    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 27
    const-string v1, "Unable to find key for "

    .line 29
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0
.end method

.method public getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "ID3v2.40"

    return-object v0
.end method

.method public getMajorVersion()B
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .registers 2

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRelease()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getRevision()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .registers 5

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 3
    const/16 v1, 0xa

    .line 5
    if-eqz v0, :cond_1f

    .line 7
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 12
    if-eqz v1, :cond_10

    .line 14
    sget v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    .line 16
    add-int/2addr v0, v1

    .line 17
    :cond_10
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 19
    if-eqz v1, :cond_17

    .line 21
    sget v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 23
    add-int/2addr v0, v1

    .line 24
    :cond_17
    move v1, v0

    .line 25
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    .line 31
    add-int/2addr v1, v0

    .line 32
    :cond_1f
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    .line 35
    move-result v0

    .line 36
    add-int/2addr v1, v0

    .line 37
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v3, "Tag Size is"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 59
    return v1
.end method

.method public isUnsynchronization()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 3
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ":"

    .line 7
    if-eqz v0, :cond_57

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "Reading ID3v24 tag"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 41
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 44
    move-result v0

    .line 45
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "Reading tag from file size set in header is"

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 79
    if-eqz v1, :cond_53

    .line 81
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    .line 84
    :cond_53
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 87
    return-void

    .line 88
    :cond_57
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, " tag not found"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p1
.end method

.method public readFrames(Ljava/nio/ByteBuffer;I)V
    .registers 8

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ":"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Start of frame body at"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 41
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 48
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 53
    iput p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 55
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "Start of frame body at:"

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 80
    move-result v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v3, ",frames data size is:"

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 99
    :goto_62
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 102
    move-result v0

    .line 103
    if-gt v0, p2, :cond_16d

    .line 105
    :try_start_68
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "looking for next frame at:"

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 130
    move-result v3

    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 143
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, p1, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_9c
    .catch Lorg/jaudiotagger/tag/PaddingException; {:try_start_68 .. :try_end_9c} :catch_14c
    .catch Lorg/jaudiotagger/tag/EmptyFrameException; {:try_start_68 .. :try_end_9c} :catch_11f
    .catch Lorg/jaudiotagger/tag/InvalidFrameIdentifierException; {:try_start_68 .. :try_end_9c} :catch_f3
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_68 .. :try_end_9c} :catch_c6
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_68 .. :try_end_9c} :catch_9d

    .line 157
    goto :goto_62

    .line 158
    :catch_9d
    move-exception v0

    .line 159
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v4, ":Corrupt Frame:"

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 192
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 196
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 198
    goto :goto_62

    .line 199
    :catch_c6
    move-exception p1

    .line 200
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "Invalid Frame:"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 236
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 238
    add-int/lit8 p1, p1, 0x1

    .line 240
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 242
    goto/16 :goto_16d

    .line 244
    :catch_f3
    move-exception p1

    .line 245
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "Invalid Frame Identifier:"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 281
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 283
    add-int/lit8 p1, p1, 0x1

    .line 285
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 287
    goto :goto_16d

    .line 288
    :catch_11f
    move-exception v0

    .line 289
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v4, "Empty Frame:"

    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 325
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 327
    add-int/lit8 v0, v0, 0xa

    .line 329
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 331
    goto/16 :goto_62

    .line 333
    :catch_14c
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ":Found padding starting at:"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 355
    move-result p1

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 366
    :cond_16d
    :goto_16d
    return-void
.end method

.method public readSize(Ljava/nio/ByteBuffer;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    .line 7
    move-result p1

    .line 8
    add-int/lit8 p1, p1, 0xa

    .line 10
    return p1
.end method

.method public write(Ljava/io/File;J)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing tag to file:"

    .line 3
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 6
    array-length v0, v4

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result v6

    .line 7
    array-length v0, v4

    add-int/lit8 v0, v0, 0xa

    sub-int v5, v6, v0

    .line 8
    array-length v0, v4

    invoke-direct {p0, v5, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v7, p2

    .line 9
    invoke-virtual/range {v1 .. v8}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .registers 5

    .line 13
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing tag to channel"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 16
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 17
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
