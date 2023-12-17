.class public Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;,
        Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;
    }
.end annotation


# static fields
.field public static final CAPTURE_PATTERN:[B

.field public static final FIELD_ABSOLUTE_GRANULE_LENGTH:I = 0x8

.field public static final FIELD_ABSOLUTE_GRANULE_POS:I = 0x6

.field public static final FIELD_CAPTURE_PATTERN_LENGTH:I = 0x4

.field public static final FIELD_CAPTURE_PATTERN_POS:I = 0x0

.field public static final FIELD_HEADER_TYPE_FLAG_LENGTH:I = 0x1

.field public static final FIELD_HEADER_TYPE_FLAG_POS:I = 0x5

.field public static final FIELD_PAGE_CHECKSUM_LENGTH:I = 0x4

.field public static final FIELD_PAGE_CHECKSUM_POS:I = 0x16

.field public static final FIELD_PAGE_SEGMENTS_LENGTH:I = 0x1

.field public static final FIELD_PAGE_SEGMENTS_POS:I = 0x1a

.field public static final FIELD_PAGE_SEQUENCE_NO_LENGTH:I = 0x4

.field public static final FIELD_PAGE_SEQUENCE_NO_POS:I = 0x12

.field public static final FIELD_SEGMENT_TABLE_POS:I = 0x1b

.field public static final FIELD_STREAM_SERIAL_NO_LENGTH:I = 0x4

.field public static final FIELD_STREAM_SERIAL_NO_POS:I = 0xe

.field public static final FIELD_STREAM_STRUCTURE_VERSION_LENGTH:I = 0x1

.field public static final FIELD_STREAM_STRUCTURE_VERSION_POS:I = 0x4

.field public static final MAXIMUM_NO_OF_SEGMENT_SIZE:I = 0xff

.field public static final MAXIMUM_PAGE_DATA_SIZE:I = 0xfe01

.field public static final MAXIMUM_PAGE_HEADER_SIZE:I = 0x11a

.field public static final MAXIMUM_PAGE_SIZE:I = 0xff1b

.field public static final MAXIMUM_SEGMENT_SIZE:I = 0xff

.field public static final OGG_PAGE_HEADER_FIXED_LENGTH:I = 0x1b

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private absoluteGranulePosition:D

.field private checksum:I

.field private headerTypeFlag:B

.field private isValid:Z

.field private lastPacketIncomplete:Z

.field private packetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation
.end field

.field private pageLength:I

.field private pageSequenceNumber:I

.field private rawHeaderData:[B

.field private segmentTable:[B

.field private streamSerialNumber:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg.atom"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    .line 9
    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [B

    .line 12
    fill-array-data v0, :array_12

    .line 15
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_12
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    .line 7
    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    .line 16
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    .line 18
    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    .line 20
    const/4 v1, 0x4

    .line 21
    aget-byte v1, p1, v1

    .line 23
    const/4 v2, 0x5

    .line 24
    aget-byte v2, p1, v2

    .line 26
    iput-byte v2, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    .line 28
    if-nez v1, :cond_c6

    .line 30
    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 34
    move v1, v0

    .line 35
    :goto_22
    const/16 v2, 0x8

    .line 37
    if-ge v1, v2, :cond_41

    .line 39
    iget-wide v2, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 41
    add-int/lit8 v4, v1, 0x6

    .line 43
    aget-byte v4, p1, v4

    .line 45
    invoke-direct {p0, v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->u(I)I

    .line 48
    move-result v4

    .line 49
    int-to-double v4, v4

    .line 50
    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    .line 52
    mul-int/lit8 v8, v1, 0x8

    .line 54
    int-to-double v8, v8

    .line 55
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 58
    move-result-wide v6

    .line 59
    mul-double/2addr v6, v4

    .line 60
    add-double/2addr v6, v2

    .line 61
    iput-wide v6, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_22

    .line 66
    :cond_41
    const/16 v1, 0xe

    .line 68
    const/16 v2, 0x11

    .line 70
    invoke-static {p1, v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([BII)I

    .line 73
    move-result v1

    .line 74
    iput v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->streamSerialNumber:I

    .line 76
    const/16 v1, 0x12

    .line 78
    const/16 v2, 0x15

    .line 80
    invoke-static {p1, v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([BII)I

    .line 83
    move-result v1

    .line 84
    iput v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageSequenceNumber:I

    .line 86
    const/16 v1, 0x16

    .line 88
    const/16 v2, 0x19

    .line 90
    invoke-static {p1, v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([BII)I

    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->checksum:I

    .line 96
    const/16 v1, 0x1a

    .line 98
    aget-byte v1, p1, v1

    .line 100
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->u(I)I

    .line 103
    array-length v1, p1

    .line 104
    add-int/lit8 v1, v1, -0x1b

    .line 106
    new-array v1, v1, [B

    .line 108
    iput-object v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->segmentTable:[B

    .line 110
    const/4 v1, 0x0

    .line 111
    move v2, v0

    .line 112
    move v3, v2

    .line 113
    :goto_70
    iget-object v4, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->segmentTable:[B

    .line 115
    array-length v5, v4

    .line 116
    const/16 v6, 0xff

    .line 118
    if-ge v2, v5, :cond_ac

    .line 120
    add-int/lit8 v1, v2, 0x1b

    .line 122
    aget-byte v1, p1, v1

    .line 124
    aput-byte v1, v4, v2

    .line 126
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->u(I)I

    .line 129
    move-result v1

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v1

    .line 134
    iget v4, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 139
    move-result v5

    .line 140
    add-int/2addr v5, v4

    .line 141
    iput v5, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 143
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 146
    move-result v4

    .line 147
    add-int/2addr v4, v3

    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 151
    move-result v3

    .line 152
    if-ge v3, v6, :cond_a8

    .line 154
    iget-object v3, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    .line 156
    new-instance v5, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 158
    iget v6, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 160
    sub-int/2addr v6, v4

    .line 161
    invoke-direct {v5, v6, v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;-><init>(II)V

    .line 164
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    move v3, v0

    .line 168
    goto :goto_a9

    .line 169
    :cond_a8
    move v3, v4

    .line 170
    :goto_a9
    add-int/lit8 v2, v2, 0x1

    .line 172
    goto :goto_70

    .line 173
    :cond_ac
    const/4 p1, 0x1

    .line 174
    if-eqz v1, :cond_c4

    .line 176
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 179
    move-result v0

    .line 180
    if-ne v0, v6, :cond_c4

    .line 182
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    .line 184
    new-instance v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 186
    iget v2, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 188
    sub-int/2addr v2, v3

    .line 189
    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;-><init>(II)V

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    .line 197
    :cond_c4
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    .line 199
    :cond_c6
    sget-object p1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    .line 201
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 203
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_e6

    .line 209
    sget-object p1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    .line 211
    const-string v0, "Constructed OggPage:"

    .line 213
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->toString()Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 231
    :cond_e6
    return-void
.end method

.method public static read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
    .registers 6

    .line 13
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 14
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to read OggPage at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v3, v2

    new-array v3, v3, [B

    .line 16
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 17
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_44

    const-wide/16 v2, 0x1a

    add-long/2addr v2, v0

    .line 18
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v2, 0x1b

    .line 21
    new-array v0, v2, [B

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 23
    new-instance p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;-><init>([B)V

    return-object p0

    .line 24
    :cond_44
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 2
    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to read OggPage at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v2, v1

    new-array v2, v2, [B

    .line 4
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_43

    add-int/lit8 v1, v0, 0x1a

    .line 6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v1, v1, 0x1b

    .line 9
    new-array v0, v1, [B

    .line 10
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    new-instance p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;-><init>([B)V

    return-object p0

    .line 12
    :cond_43
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private u(I)I
    .registers 2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public getAbsoluteGranulePosition()D
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Number Of Samples: "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 21
    iget-wide v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 23
    return-wide v0
.end method

.method public getCheckSum()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->checksum:I

    .line 3
    return v0
.end method

.method public getHeaderType()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    .line 3
    return v0
.end method

.method public getPacketList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getPageLength()I
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "This page length: "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 23
    return v0
.end method

.method public getPageSequence()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageSequenceNumber:I

    .line 3
    return v0
.end method

.method public getRawHeaderData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    .line 3
    return-object v0
.end method

.method public getSegmentTable()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->segmentTable:[B

    .line 3
    return-object v0
.end method

.method public getSerialNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->streamSerialNumber:I

    .line 3
    return v0
.end method

.method public isLastPacketIncomplete()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    .line 3
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "Ogg Page Header:isValid:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ":type:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-byte v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ":oggPageHeaderLength:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    .line 29
    array-length v1, v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ":length:"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ":seqNo:"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ":packetIncomplete:"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ":serNum:"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSerialNumber()I

    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v1

    .line 91
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_76

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 103
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    goto :goto_5a

    .line 119
    :cond_76
    return-object v0
.end method
