.class public Lorg/jaudiotagger/audio/asf/AsfFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "AsfFileReader.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final HEADER_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "org.jaudiotagger.audio.asf"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const-class v1, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-class v1, Lorg/jaudiotagger/audio/asf/io/ContentBrandingReader;

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-class v1, Lorg/jaudiotagger/audio/asf/io/MetadataReader;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    const-class v1, Lorg/jaudiotagger/audio/asf/io/LanguageListReader;

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, v0, v2}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 40
    const-class v3, Lorg/jaudiotagger/audio/asf/io/FileHeaderReader;

    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-class v3, Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v3, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 52
    invoke-direct {v3, v0, v2}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 55
    sput-object v3, Lorg/jaudiotagger/audio/asf/AsfFileReader;->HEADER_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 57
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    .line 4
    return-void
.end method

.method private determineVariableBitrate(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->findExtendedContentDescription()Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_29

    .line 8
    const-string v1, "IsVBR"

    .line 10
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_29

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_29

    .line 22
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 34
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    :cond_29
    return v0
.end method

.method private getAudioHeader(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 7

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lorg/jaudiotagger/audio/asf/data/FileHeader;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_7f

    .line 12
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_77

    .line 18
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getKbps()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 29
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getChannelCount()J

    .line 36
    move-result-wide v1

    .line 37
    long-to-int v1, v1

    .line 38
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v2, "ASF (audio): "

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getCompressionFormat()J

    .line 76
    move-result-wide v1

    .line 77
    const-wide/16 v3, 0x163

    .line 79
    cmp-long v1, v1, v3

    .line 81
    if-nez v1, :cond_54

    .line 83
    const/4 v1, 0x1

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    const/4 v1, 0x0

    .line 86
    :goto_55
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setLossless(Z)V

    .line 89
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lorg/jaudiotagger/audio/asf/data/FileHeader;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/FileHeader;->getPreciseDuration()F

    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(F)V

    .line 100
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getSamplingRate()J

    .line 107
    move-result-wide v1

    .line 108
    long-to-int v1, v1

    .line 109
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 112
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/AsfFileReader;->determineVariableBitrate(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Z

    .line 115
    move-result p1

    .line 116
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 119
    return-object v0

    .line 120
    :cond_77
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 122
    const-string v0, "Invalid ASF/WMA file. No audio stream contained."

    .line 124
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p1

    .line 128
    :cond_7f
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 130
    const-string v0, "Invalid ASF/WMA file. File header object not available."

    .line 132
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p1
.end method

.method private getTag(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/tag/asf/AsfTag;
    .registers 2

    .line 2
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/TagConverter;->createTagOf(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/tag/asf/AsfTag;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    :try_start_5
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->readInfoHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_10

    .line 12
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/AsfFileReader;->getAudioHeader(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_10
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 19
    const-string v0, "Some values must have been incorrect for interpretation as asf with wma content."

    .line 21
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_18

    .line 25
    :catch_18
    move-exception p1

    .line 26
    instance-of v0, p1, Ljava/io/IOException;

    .line 28
    if-nez v0, :cond_3b

    .line 30
    instance-of v0, p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 32
    if-eqz v0, :cond_24

    .line 34
    check-cast p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 36
    throw p1

    .line 37
    :cond_24
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 39
    const-string v1, "Failed to read. Cause: "

    .line 41
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    throw v0

    .line 60
    :cond_3b
    check-cast p1, Ljava/io/IOException;

    .line 62
    throw p1
.end method

.method public bridge synthetic getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/AsfFileReader;->getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/asf/AsfTag;

    move-result-object p1

    return-object p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/asf/AsfTag;
    .registers 4

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    :try_start_5
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->readTagHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 5
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/TagConverter;->createTagOf(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/tag/asf/AsfTag;

    move-result-object p1

    return-object p1

    .line 6
    :cond_10
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v0, "Some values must have been incorrect for interpretation as asf with wma content."

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_18

    :catch_18
    move-exception p1

    .line 7
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 8
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_44

    .line 9
    instance-of v0, p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    if-eqz v0, :cond_2d

    .line 10
    check-cast p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    throw p1

    .line 11
    :cond_2d
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v1, "Failed to read. Cause: "

    .line 12
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_44
    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 13

    .line 1
    const-string v0, "\" :"

    .line 3
    const-string v1, "\""

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_119

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_d
    new-instance v5, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;

    .line 16
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 18
    new-instance v7, Ljava/io/FileInputStream;

    .line 20
    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 23
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    invoke-direct {v5, v6}, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_d .. :try_end_1c} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_d4
    .catchall {:try_start_d .. :try_end_1c} :catchall_d0

    .line 29
    :try_start_1c
    sget-object v2, Lorg/jaudiotagger/audio/asf/AsfFileReader;->HEADER_READER:Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;

    .line 31
    invoke-static {v5}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 34
    move-result-object v6

    .line 35
    const-wide/16 v7, 0x0

    .line 37
    invoke-virtual {v2, v6, v5, v7, v8}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    .line 43
    if-eqz v2, :cond_b8

    .line 45
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lorg/jaudiotagger/audio/asf/data/FileHeader;

    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_a4

    .line 51
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lorg/jaudiotagger/audio/asf/data/FileHeader;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    .line 62
    move-result-wide v6

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 66
    move-result-wide v8

    .line 67
    cmp-long v6, v6, v8

    .line 69
    if-eqz v6, :cond_77

    .line 71
    sget-object v6, Lorg/jaudiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    .line 73
    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->ASF_FILE_HEADER_SIZE_DOES_NOT_MATCH_FILE_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 75
    const/4 v8, 0x3

    .line 76
    new-array v8, v8, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 81
    move-result-object v9

    .line 82
    aput-object v9, v8, v3

    .line 84
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lorg/jaudiotagger/audio/asf/data/FileHeader;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    .line 95
    move-result-wide v9

    .line 96
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    move-result-object v3

    .line 100
    aput-object v3, v8, v4

    .line 102
    const/4 v3, 0x2

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 106
    move-result-wide v9

    .line 107
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v4

    .line 111
    aput-object v4, v8, v3

    .line 113
    invoke-virtual {v7, v8}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v6, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 120
    :cond_77
    new-instance v3, Lorg/jaudiotagger/audio/AudioFile;

    .line 122
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/asf/AsfFileReader;->getAudioHeader(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 125
    move-result-object v4

    .line 126
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/asf/AsfFileReader;->getTag(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/tag/asf/AsfTag;

    .line 129
    move-result-object v2

    .line 130
    invoke-direct {v3, p1, v4, v2}, Lorg/jaudiotagger/audio/AudioFile;-><init>(Ljava/io/File;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    :try_end_84
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_1c .. :try_end_84} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_84} :catch_cc
    .catchall {:try_start_1c .. :try_end_84} :catchall_f6

    .line 133
    :try_start_84
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    .line 136
    goto :goto_a3

    .line 137
    :catch_88
    move-exception v2

    .line 138
    sget-object v4, Lorg/jaudiotagger/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v4, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 164
    :goto_a3
    return-object v3

    .line 165
    :cond_a4
    :try_start_a4
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 167
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->ASF_FILE_HEADER_MISSING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 169
    new-array v4, v4, [Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 174
    move-result-object v7

    .line 175
    aput-object v7, v4, v3

    .line 177
    invoke-virtual {v6, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    move-result-object v3

    .line 181
    invoke-direct {v2, v3}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 184
    throw v2

    .line 185
    :cond_b8
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 187
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->ASF_HEADER_MISSING:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 189
    new-array v4, v4, [Ljava/lang/Object;

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 194
    move-result-object v7

    .line 195
    aput-object v7, v4, v3

    .line 197
    invoke-virtual {v6, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    move-result-object v3

    .line 201
    invoke-direct {v2, v3}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 204
    throw v2
    :try_end_cc
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_a4 .. :try_end_cc} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_cc} :catch_cc
    .catchall {:try_start_a4 .. :try_end_cc} :catchall_f6

    .line 205
    :catch_cc
    move-exception v2

    .line 206
    goto :goto_d7

    .line 207
    :catch_ce
    move-exception v2

    .line 208
    goto :goto_f5

    .line 209
    :catchall_d0
    move-exception v3

    .line 210
    move-object v5, v2

    .line 211
    move-object v2, v3

    .line 212
    goto :goto_f7

    .line 213
    :catch_d4
    move-exception v3

    .line 214
    move-object v5, v2

    .line 215
    move-object v2, v3

    .line 216
    :goto_d7
    :try_start_d7
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v4

    .line 239
    invoke-direct {v3, v4, v2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    throw v3

    .line 243
    :catch_f2
    move-exception v3

    .line 244
    move-object v5, v2

    .line 245
    move-object v2, v3

    .line 246
    :goto_f5
    throw v2
    :try_end_f6
    .catchall {:try_start_d7 .. :try_end_f6} :catchall_f6

    .line 247
    :catchall_f6
    move-exception v2

    .line 248
    :goto_f7
    if-eqz v5, :cond_118

    .line 250
    :try_start_f9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_fd

    .line 253
    goto :goto_118

    .line 254
    :catch_fd
    move-exception v3

    .line 255
    sget-object v4, Lorg/jaudiotagger/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {v4, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 281
    :cond_118
    :goto_118
    throw v2

    .line 282
    :cond_119
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 284
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 286
    new-array v2, v4, [Ljava/lang/Object;

    .line 288
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 291
    move-result-object p1

    .line 292
    aput-object p1, v2, v3

    .line 294
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    move-result-object p1

    .line 298
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 301
    throw v0
.end method
