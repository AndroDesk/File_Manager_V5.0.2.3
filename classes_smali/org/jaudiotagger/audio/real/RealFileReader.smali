.class public Lorg/jaudiotagger/audio/real/RealFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "RealFileReader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    .line 4
    return-void
.end method

.method private findContChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;
    .registers 4

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 4
    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 7
    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/real/RealChunk;->isCONT()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_15

    .line 17
    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 20
    move-result-object v0

    .line 21
    goto :goto_a

    .line 22
    :cond_15
    return-object v0
.end method

.method private findPropChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;
    .registers 2

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 4
    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 9

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/real/RealFileReader;->findPropChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_4e

    .line 20
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 23
    move-result-wide v1

    .line 24
    const-wide/16 v3, 0x3e8

    .line 26
    div-long/2addr v1, v3

    .line 27
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 30
    move-result-wide v5

    .line 31
    div-long/2addr v5, v3

    .line 32
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 35
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 38
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 41
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32AsInt(Ljava/io/DataInput;)I

    .line 44
    move-result v3

    .line 45
    div-int/lit16 v3, v3, 0x3e8

    .line 47
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 50
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 53
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 56
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 59
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 62
    long-to-int p1, v5

    .line 63
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 66
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setLength(I)V

    .line 69
    cmp-long p1, v1, v5

    .line 71
    if-eqz p1, :cond_4a

    .line 73
    const/4 p1, 0x1

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    const/4 p1, 0x0

    .line 76
    :goto_4b
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 79
    :cond_4e
    return-object v0
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/real/RealFileReader;->findContChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 20
    move-result v1

    .line 21
    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 28
    move-result v2

    .line 29
    invoke-static {p1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 36
    move-result v3

    .line 37
    invoke-static {p1, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    new-instance v3, Lorg/jaudiotagger/audio/real/RealTag;

    .line 43
    invoke-direct {v3}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    .line 46
    :try_start_2d
    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_37

    .line 54
    move-object v5, v1

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move-object v5, v0

    .line 57
    :goto_38
    invoke-virtual {v3, v4, v5}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V

    .line 60
    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_44

    .line 68
    move-object v1, v2

    .line 69
    :cond_44
    invoke-virtual {v3, v4, v1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    .line 74
    invoke-virtual {v3, v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_2d .. :try_end_4c} :catch_4d

    .line 77
    return-object v3

    .line 78
    :catch_4d
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    .line 81
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 84
    throw v0
.end method
