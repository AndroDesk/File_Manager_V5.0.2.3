.class public Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;
.super Ljava/lang/Object;
.source "OggVorbisTagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

.field private tc:Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->tc:Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 13
    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 18
    return-void
.end method

.method private calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    const/16 v0, 0x16

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->computeCRC([B)[B

    .line 14
    move-result-object v0

    .line 15
    :goto_e
    array-length v2, v0

    .line 16
    if-ge v1, v2, :cond_1b

    .line 18
    add-int/lit8 v2, v1, 0x16

    .line 20
    aget-byte v3, v0, v1

    .line 22
    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_e

    .line 28
    :cond_1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    return-void
.end method

.method private createSegmentTable(IILjava/util/List;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create SegmentTable CommentLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":SetupHeaderLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_2b

    .line 3
    invoke-direct {p0, p1, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    return-object p1

    :cond_2b
    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, p1, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3b

    .line 6
    invoke-direct {p0, p2, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    goto :goto_3f

    .line 7
    :cond_3b
    invoke-direct {p0, p2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 8
    :goto_3f
    sget-object v2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Created "

    .line 9
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " segments for header"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 11
    sget-object v2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 12
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 13
    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " segments for setup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 14
    :try_start_6d
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b4

    .line 17
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating segments for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packets"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 18
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 19
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    invoke-direct {p0, p2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_b3} :catch_b9

    goto :goto_9c

    .line 21
    :cond_b4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_b9
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Unable to create segment table:"

    .line 23
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createSegmentTable(ILjava/util/List;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    .line 36
    :try_start_a
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_30

    .line 38
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 39
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2f} :catch_35

    goto :goto_17

    .line 41
    :cond_30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_35
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create segment table:"

    .line 43
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createSegments(IZ)[B
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Create Segments for length:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, ":QuitStream:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-nez p1, :cond_27

    .line 35
    new-array p1, v1, [B

    .line 37
    aput-byte v0, p1, v0

    .line 39
    return-object p1

    .line 40
    :cond_27
    div-int/lit16 v2, p1, 0xff

    .line 42
    rem-int/lit16 v3, p1, 0xff

    .line 44
    if-nez v3, :cond_31

    .line 46
    if-nez p2, :cond_31

    .line 48
    move p2, v0

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move p2, v1

    .line 51
    :goto_32
    add-int/2addr v2, p2

    .line 52
    new-array p2, v2, [B

    .line 54
    :goto_35
    add-int/lit8 v3, v2, -0x1

    .line 56
    if-ge v0, v3, :cond_3f

    .line 58
    const/4 v3, -0x1

    .line 59
    aput-byte v3, p2, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_35

    .line 64
    :cond_3f
    mul-int/lit16 v0, v0, 0xff

    .line 66
    sub-int/2addr p1, v0

    .line 67
    int-to-byte p1, p1

    .line 68
    aput-byte p1, p2, v3

    .line 70
    return-object p2
.end method

.method private isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/16 v0, 0xff

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_7

    .line 6
    move v2, v1

    .line 7
    goto :goto_f

    .line 8
    :cond_7
    div-int/lit16 v2, p1, 0xff

    .line 10
    add-int/2addr v2, v1

    .line 11
    rem-int/2addr p1, v0

    .line 12
    if-nez p1, :cond_f

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 16
    :cond_f
    :goto_f
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v4, "Require:"

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v5, " segments for comment"

    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 43
    if-nez p2, :cond_2e

    .line 45
    add-int/2addr v2, v1

    .line 46
    goto :goto_37

    .line 47
    :cond_2e
    div-int/lit16 p1, p2, 0xff

    .line 49
    add-int/2addr p1, v1

    .line 50
    add-int/2addr v2, p1

    .line 51
    rem-int/2addr p2, v0

    .line 52
    if-nez p2, :cond_37

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 56
    :cond_37
    :goto_37
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, " segments for comment plus setup"

    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 81
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p1

    .line 85
    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_7b

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 97
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 100
    move-result p3

    .line 101
    if-nez p3, :cond_69

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 105
    goto :goto_54

    .line 106
    :cond_69
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 109
    move-result p3

    .line 110
    div-int/2addr p3, v0

    .line 111
    add-int/2addr p3, v1

    .line 112
    add-int/2addr p3, v2

    .line 113
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 116
    move-result p2

    .line 117
    rem-int/2addr p2, v0

    .line 118
    if-nez p2, :cond_79

    .line 120
    add-int/lit8 p3, p3, 0x1

    .line 122
    :cond_79
    move v2, p3

    .line 123
    goto :goto_54

    .line 124
    :cond_7b
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const-string p3, "Total No Of Segment If New Comment And Header Put On One Page:"

    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 146
    if-gt v2, v0, :cond_94

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    const/4 v1, 0x0

    .line 150
    :goto_95
    return v1
.end method

.method private replacePagesAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 23

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v0, p4

    .line 5
    move-object/from16 v7, p5

    .line 7
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    .line 10
    move-result v1

    .line 11
    const v2, 0xfe01

    .line 14
    div-int v3, p2, v2

    .line 16
    sget-object v4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v8, "Comment requires:"

    .line 25
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v8, " complete pages"

    .line 33
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 43
    const/16 v4, 0x1a

    .line 45
    const/4 v8, 0x5

    .line 46
    const/16 v9, 0x12

    .line 48
    const/4 v5, 0x0

    .line 49
    if-lez v3, :cond_90

    .line 51
    move v10, v5

    .line 52
    move v11, v10

    .line 53
    :goto_34
    if-ge v10, v3, :cond_8e

    .line 55
    invoke-direct {v6, v2, v5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    .line 58
    move-result-object v12

    .line 59
    array-length v13, v12

    .line 60
    add-int/lit8 v13, v13, 0x1b

    .line 62
    add-int/2addr v13, v2

    .line 63
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 66
    move-result-object v13

    .line 67
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 69
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 75
    move-result-object v14

    .line 76
    invoke-virtual {v13, v14, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 79
    array-length v14, v12

    .line 80
    int-to-byte v14, v14

    .line 81
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 84
    array-length v14, v12

    .line 85
    move v15, v5

    .line 86
    :goto_55
    if-ge v15, v14, :cond_61

    .line 88
    aget-byte v4, v12, v15

    .line 90
    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 93
    add-int/lit8 v15, v15, 0x1

    .line 95
    const/16 v4, 0x1a

    .line 97
    goto :goto_55

    .line 98
    :cond_61
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v13, v9, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 113
    if-eqz v10, :cond_7b

    .line 115
    sget-object v4, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 117
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    .line 120
    move-result v4

    .line 121
    invoke-virtual {v13, v8, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 124
    :cond_7b
    invoke-direct {v6, v13}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 127
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 134
    add-int/2addr v11, v2

    .line 135
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    add-int/lit8 v10, v10, 0x1

    .line 140
    const/16 v4, 0x1a

    .line 142
    goto :goto_34

    .line 143
    :cond_8e
    move v10, v1

    .line 144
    goto :goto_92

    .line 145
    :cond_90
    move v10, v1

    .line 146
    move v11, v5

    .line 147
    :goto_92
    rem-int v2, p2, v2

    .line 149
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string v12, "Last comment packet size:"

    .line 158
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    .line 174
    move-result v1

    .line 175
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    .line 178
    move-result-object v4

    .line 179
    invoke-direct {v6, v2, v1, v4}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_191

    .line 185
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 187
    const-string v4, "WriteOgg Type 3"

    .line 189
    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x1

    .line 193
    invoke-direct {v6, v2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    .line 196
    move-result-object v1

    .line 197
    array-length v4, v1

    .line 198
    add-int/lit8 v4, v4, 0x1b

    .line 200
    add-int/2addr v4, v2

    .line 201
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 204
    move-result-object v2

    .line 205
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 207
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 213
    move-result-object v4

    .line 214
    const/16 v12, 0x1a

    .line 216
    invoke-virtual {v2, v4, v5, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 219
    array-length v4, v1

    .line 220
    int-to-byte v4, v4

    .line 221
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 224
    array-length v4, v1

    .line 225
    move v12, v5

    .line 226
    :goto_e1
    if-ge v12, v4, :cond_eb

    .line 228
    aget-byte v13, v1, v12

    .line 230
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 233
    add-int/lit8 v12, v12, 0x1

    .line 235
    goto :goto_e1

    .line 236
    :cond_eb
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {v2, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 249
    if-lez v3, :cond_103

    .line 251
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 253
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    .line 256
    move-result v0

    .line 257
    invoke-virtual {v2, v8, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 260
    :cond_103
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    const-string v3, "Writing Last Comment Page "

    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string v3, " to file"

    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 287
    add-int/lit8 v10, v10, 0x1

    .line 289
    invoke-direct {v6, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 292
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 299
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    .line 302
    move-result v0

    .line 303
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    .line 306
    move-result-object v1

    .line 307
    invoke-direct {v6, v0, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegmentTable(ILjava/util/List;)[B

    .line 310
    move-result-object v0

    .line 311
    array-length v1, v0

    .line 312
    add-int/lit8 v1, v1, 0x1b

    .line 314
    iget-object v2, v6, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 316
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    .line 319
    move-result-wide v11

    .line 320
    invoke-virtual {v2, v11, v12, v7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    .line 323
    move-result-object v2

    .line 324
    array-length v4, v2

    .line 325
    add-int/2addr v4, v1

    .line 326
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 329
    move-result-object v1

    .line 330
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 332
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 338
    move-result-object v4

    .line 339
    const/16 v8, 0x1a

    .line 341
    invoke-virtual {v1, v4, v5, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 344
    array-length v4, v0

    .line 345
    int-to-byte v4, v4

    .line 346
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 349
    array-length v4, v0

    .line 350
    :goto_15d
    if-ge v5, v4, :cond_167

    .line 352
    aget-byte v8, v0, v5

    .line 354
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 357
    add-int/lit8 v5, v5, 0x1

    .line 359
    goto :goto_15d

    .line 360
    :cond_167
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {v1, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 366
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    const-string v4, "Writing Setup Header and packets Page "

    .line 375
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 391
    invoke-direct {v6, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 394
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 401
    goto :goto_1dd

    .line 402
    :cond_191
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 404
    const-string v3, "WriteOgg Type 4"

    .line 406
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    .line 412
    move-result v1

    .line 413
    add-int/2addr v1, v2

    .line 414
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    .line 417
    move-result v3

    .line 418
    add-int/2addr v3, v1

    .line 419
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 422
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 425
    move-result-object v5

    .line 426
    move-object/from16 v0, p0

    .line 428
    move-object/from16 v1, p1

    .line 430
    move-object/from16 v4, p3

    .line 432
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 435
    move-result-object v0

    .line 436
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    .line 439
    move-result-wide v1

    .line 440
    invoke-virtual {v7, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 443
    iget-object v1, v6, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 445
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    .line 448
    move-result-wide v2

    .line 449
    invoke-virtual {v1, v2, v3, v7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 456
    invoke-virtual {v0, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 459
    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 461
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    .line 464
    move-result v1

    .line 465
    invoke-virtual {v0, v8, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 468
    invoke-direct {v6, v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 471
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 478
    :goto_1dd
    move-object/from16 v0, p6

    .line 480
    invoke-virtual {v6, v10, v7, v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 483
    return-void
.end method

.method private replaceSecondPageAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 10

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 2"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 3
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result p3

    .line 4
    iget-object p4, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1, p6}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object p1

    .line 5
    sget-object p4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 8
    invoke-virtual {p7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 9
    invoke-virtual {p0, p3, p6, p7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method private replaceSecondPageOnly(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 12

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 1"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 3
    invoke-virtual {p8, p6, p7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    move-result p1

    invoke-virtual {p8, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 5
    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 6
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 8
    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p3

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p4

    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p5

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p7

    sub-long p7, p1, p7

    invoke-virtual/range {p3 .. p8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    return-void
.end method

.method private startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "WriteOgg Type 1"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegmentTable(IILjava/util/List;)[B

    .line 19
    move-result-object p1

    .line 20
    array-length p2, p1

    .line 21
    add-int/lit8 p2, p2, 0x1b

    .line 23
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v2, "New second page header length:"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 47
    const-string v1, "No of segments:"

    .line 49
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v1

    .line 53
    array-length v2, p1

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 64
    add-int/2addr p3, p2

    .line 65
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 68
    move-result-object p2

    .line 69
    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 71
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 77
    move-result-object p3

    .line 78
    const/4 p4, 0x0

    .line 79
    const/16 v0, 0x1a

    .line 81
    invoke-virtual {p2, p3, p4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 84
    array-length p3, p1

    .line 85
    int-to-byte p3, p3

    .line 86
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    array-length p3, p1

    .line 90
    :goto_59
    if-ge p4, p3, :cond_63

    .line 92
    aget-byte v0, p1, p4

    .line 94
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    add-int/lit8 p4, p4, 0x1

    .line 99
    goto :goto_59

    .line 100
    :cond_63
    invoke-virtual {p2, p5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 103
    return-object p2
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    :try_end_5
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_5} :catch_12

    .line 6
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 9
    move-result-object v0

    .line 10
    const-wide/16 v1, 0x0

    .line 12
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 15
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 18
    return-void

    .line 19
    :catch_12
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 26
    return-void
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 21

    .line 1
    move-object/from16 v10, p0

    .line 3
    move-object/from16 v8, p2

    .line 5
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 7
    const-string v1, "Starting to write file:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 12
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 14
    const-string v1, "Read 1st Page:identificationHeader:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 19
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    invoke-virtual {v8, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 28
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 31
    move-result-object v11

    .line 32
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 35
    move-result-object v12

    .line 36
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 39
    move-result v3

    .line 40
    add-int/lit8 v3, v3, 0x1b

    .line 42
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    .line 45
    move-result-object v4

    .line 46
    array-length v4, v4

    .line 47
    add-int/2addr v3, v4

    .line 48
    int-to-long v3, v3

    .line 49
    const-wide/16 v13, 0x0

    .line 51
    move-wide v15, v3

    .line 52
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 55
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 58
    move-result v3

    .line 59
    add-int/lit8 v3, v3, 0x1b

    .line 61
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    .line 64
    move-result-object v0

    .line 65
    array-length v0, v0

    .line 66
    add-int/2addr v3, v0

    .line 67
    move-object/from16 v9, p3

    .line 69
    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 72
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 74
    const-string v3, "Written identificationHeader:"

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 82
    move-result-object v4

    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 86
    move-result-wide v6

    .line 87
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v5, "Read 2nd Page:comment and setup and possibly audio:Header finishes at file position:"

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v8, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    iget-object v0, v10, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 114
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->readOggVorbisHeaderSizes(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;

    .line 117
    move-result-object v1

    .line 118
    iget-object v0, v10, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->tc:Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;

    .line 120
    move-object/from16 v2, p1

    .line 122
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 129
    move-result v2

    .line 130
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    .line 133
    move-result v0

    .line 134
    add-int/2addr v0, v2

    .line 135
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    .line 138
    move-result v3

    .line 139
    add-int/2addr v3, v0

    .line 140
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 142
    const-string v11, "Old 2nd Page no of packets: "

    .line 144
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object v11

    .line 148
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 151
    move-result-object v12

    .line 152
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 155
    move-result v12

    .line 156
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v11

    .line 163
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 168
    const-string v11, "Old 2nd Page size: "

    .line 170
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    move-result-object v11

    .line 174
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 177
    move-result v12

    .line 178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v11

    .line 185
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 190
    const-string v11, "Old last packet incomplete: "

    .line 192
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 199
    move-result v12

    .line 200
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v11

    .line 207
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 212
    const-string v11, "Setup Header Size: "

    .line 214
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    move-result-object v11

    .line 218
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    .line 221
    move-result v12

    .line 222
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v11

    .line 229
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 234
    const-string v11, "Extra Packets: "

    .line 236
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    move-result-object v11

    .line 240
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    .line 243
    move-result-object v12

    .line 244
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 247
    move-result v12

    .line 248
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v11

    .line 255
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 258
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 260
    const-string v11, "Extra Packet Data Size: "

    .line 262
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    move-result-object v11

    .line 266
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    .line 269
    move-result v12

    .line 270
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 282
    const-string v11, "Old comment: "

    .line 284
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-result-object v11

    .line 288
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    .line 291
    move-result v12

    .line 292
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v11

    .line 299
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 304
    new-instance v11, Ljava/lang/StringBuilder;

    .line 306
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    const-string v12, "New comment: "

    .line 311
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v11

    .line 321
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 326
    new-instance v11, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    const-string v12, "New Page Data Size: "

    .line 333
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v11

    .line 343
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    .line 349
    move-result v0

    .line 350
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    .line 353
    move-result-object v11

    .line 354
    invoke-direct {v10, v2, v0, v11}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_1ad

    .line 360
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 363
    move-result v0

    .line 364
    const v11, 0xfe01

    .line 367
    if-ge v0, v11, :cond_19c

    .line 369
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 372
    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 376
    move-result v0

    .line 377
    const/4 v11, 0x2

    .line 378
    if-ne v0, v11, :cond_181

    .line 380
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_18b

    .line 386
    :cond_181
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 389
    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 393
    move-result v0

    .line 394
    if-le v0, v11, :cond_19c

    .line 396
    :cond_18b
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 398
    const-string v11, "Header and Setup remain on single page:"

    .line 400
    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    .line 405
    move-object/from16 v8, p2

    .line 407
    move-object/from16 v9, p3

    .line 409
    invoke-direct/range {v0 .. v9}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->replaceSecondPageOnly(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 412
    goto :goto_1bf

    .line 413
    :cond_19c
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 415
    const-string v6, "Header and Setup now on single page:"

    .line 417
    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    .line 422
    move-object/from16 v6, p2

    .line 424
    move-object/from16 v7, p3

    .line 426
    invoke-direct/range {v0 .. v7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->replaceSecondPageAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 429
    goto :goto_1bf

    .line 430
    :cond_1ad
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 432
    const-string v3, "Header and Setup with shift audio:"

    .line 434
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    .line 439
    move-object v3, v4

    .line 440
    move-object v4, v5

    .line 441
    move-object/from16 v5, p2

    .line 443
    move-object/from16 v6, p3

    .line 445
    invoke-direct/range {v0 .. v6}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->replacePagesAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 448
    :goto_1bf
    return-void
.end method

.method public writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 14

    .line 1
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 12
    move-result-wide v4

    .line 13
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 16
    move-result-wide v6

    .line 17
    sub-long/2addr v4, v6

    .line 18
    long-to-int v4, v4

    .line 19
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 26
    move-result-wide v5

    .line 27
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 30
    move-result-wide v7

    .line 31
    sub-long/2addr v5, v7

    .line 32
    long-to-int v5, v5

    .line 33
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 44
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 47
    :goto_2e
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_7d

    .line 53
    invoke-static {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 60
    move-result-object v7

    .line 61
    array-length v7, v7

    .line 62
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 65
    move-result v8

    .line 66
    add-int/2addr v8, v7

    .line 67
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 70
    move-result-object v7

    .line 71
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 73
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 90
    move-result v9

    .line 91
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 97
    const/16 v8, 0x12

    .line 99
    add-int/lit8 p1, p1, 0x1

    .line 101
    invoke-virtual {v7, v8, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 104
    invoke-direct {p0, v7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 107
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 110
    move-result v8

    .line 111
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 114
    move-result v6

    .line 115
    add-int/2addr v6, v8

    .line 116
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 122
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    goto :goto_2e

    .line 126
    :cond_7d
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 129
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 136
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 139
    move-result-wide p1

    .line 140
    sub-long/2addr p1, v0

    .line 141
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    .line 144
    move-result-wide v0

    .line 145
    sub-long/2addr v0, v2

    .line 146
    cmp-long p1, p1, v0

    .line 148
    if-nez p1, :cond_96

    .line 150
    return-void

    .line 151
    :cond_96
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 153
    const-string p2, "File written counts don\'t match, file not written"

    .line 155
    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p1
.end method

.method public writeRemainingPagesOld(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 12

    .line 1
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 8
    move-result-wide v2

    .line 9
    sget-object v4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v6, "Writing audio, audio starts in original file at :"

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    const-string v6, ":Written to:"

    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 39
    :goto_26
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 42
    move-result-wide v4

    .line 43
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 46
    move-result-wide v6

    .line 47
    cmp-long v4, v4, v6

    .line 49
    if-gez v4, :cond_70

    .line 51
    sget-object v4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    .line 53
    const-string v5, "Reading Ogg Page"

    .line 55
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 65
    move-result-object v5

    .line 66
    array-length v5, v5

    .line 67
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 70
    move-result v6

    .line 71
    add-int/2addr v6, v5

    .line 72
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 75
    move-result-object v5

    .line 76
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 78
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 95
    const/16 v4, 0x12

    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 99
    invoke-virtual {v5, v4, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 102
    invoke-direct {p0, v5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 112
    goto :goto_26

    .line 113
    :cond_70
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 116
    move-result-wide p1

    .line 117
    sub-long/2addr p1, v0

    .line 118
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    .line 121
    move-result-wide v0

    .line 122
    sub-long/2addr v0, v2

    .line 123
    cmp-long p1, p1, v0

    .line 125
    if-nez p1, :cond_7f

    .line 127
    return-void

    .line 128
    :cond_7f
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 130
    const-string p2, "File written counts don\'t match, file not written"

    .line 132
    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p1
.end method
