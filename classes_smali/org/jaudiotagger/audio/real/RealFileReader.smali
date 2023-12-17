.class public Lorg/jaudiotagger/audio/real/RealFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "RealFileReader.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private findContChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;
    .registers 4

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object v0

    :goto_a
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/real/RealChunk;->isCONT()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object v0

    goto :goto_a

    :cond_15
    return-object v0
.end method

.method private findPropChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;
    .registers 2

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 9

    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/real/RealFileReader;->findPropChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v1

    if-nez v1, :cond_4e

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32AsInt(Ljava/io/DataInput;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    long-to-int p1, v5

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setLength(I)V

    cmp-long p1, v1, v5

    if-eqz p1, :cond_4a

    const/4 p1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    :goto_4b
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    :cond_4e
    return-object v0
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 8

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/real/RealFileReader;->findContChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {p1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {p1, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/jaudiotagger/audio/real/RealTag;

    invoke-direct {v3}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    :try_start_2d
    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_37

    move-object v5, v1

    goto :goto_38

    :cond_37
    move-object v5, v0

    :goto_38
    invoke-virtual {v3, v4, v5}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V

    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_44

    move-object v1, v2

    :cond_44
    invoke-virtual {v3, v4, v1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v3, v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_2d .. :try_end_4c} :catch_4d

    return-object v3

    :catch_4d
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
