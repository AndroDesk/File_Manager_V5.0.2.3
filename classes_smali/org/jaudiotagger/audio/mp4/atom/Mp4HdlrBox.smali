.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4HdlrBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    }
.end annotation


# static fields
.field public static final HANDLER_LENGTH:I = 0x4

.field public static final HANDLER_POS:I = 0x8

.field public static final ITUNES_META_HDLR_DAT_LENGTH:I = 0x1a

.field public static final NAME_LENGTH:I = 0x2

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final RESERVED1_LENGTH:I = 0x4

.field public static final RESERVED1_POS:I = 0xc

.field public static final RESERVED2_LENGTH:I = 0x4

.field public static final RESERVED3_LENGTH:I = 0x4

.field public static final RESERVED_FLAG_LENGTH:I = 0x4

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field private static mediaDataTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handlerType:Ljava/lang/String;

.field private mediaDataType:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field private name:Ljava/lang/String;

.field private reserved:I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    .line 8
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_1d

    .line 16
    aget-object v3, v0, v2

    .line 18
    sget-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    .line 20
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->getId()Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 24
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 8
    return-void
.end method

.method public static createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 5
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 12
    const/16 v1, 0x22

    .line 14
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 17
    const/16 v1, 0x1a

    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x8

    .line 25
    const/16 v3, 0x6d

    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 30
    const/16 v2, 0x9

    .line 32
    const/16 v3, 0x64

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 37
    const/16 v2, 0xa

    .line 39
    const/16 v3, 0x69

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 44
    const/16 v2, 0xb

    .line 46
    const/16 v3, 0x72

    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 51
    const/16 v2, 0xc

    .line 53
    const/16 v3, 0x61

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 58
    const/16 v2, 0xd

    .line 60
    const/16 v3, 0x70

    .line 62
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 65
    const/16 v2, 0xe

    .line 67
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 70
    const/16 v2, 0xf

    .line 72
    const/16 v3, 0x6c

    .line 74
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 80
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    .line 82
    invoke-direct {v2, v0, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 85
    return-object v2
.end method


# virtual methods
.method public getHandlerType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMediaDataType()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 3
    return-object v0
.end method

.method public processData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 9
    add-int/lit8 v1, v1, 0x3

    .line 11
    const/4 v2, 0x4

    .line 12
    add-int/2addr v1, v2

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    const-string v0, "ISO-8859-1"

    .line 18
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 25
    move-result-object v0

    .line 26
    :try_start_19
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_19 .. :try_end_2f} :catch_2f

    .line 48
    :catch_2f
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    .line 50
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    .line 52
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 58
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "handlerType:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ":human readable:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->getDescription()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
