.class public Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;
.super Ljava/lang/Object;
.source "OggVorbisTagReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;


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
    sput-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    .line 11
    return-void
.end method

.method private convertToVorbisCommentPacket(Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/io/RandomAccessFile;)[B
    .registers 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x7

    .line 23
    new-array v1, v1, [B

    .line 25
    invoke-virtual {p2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 28
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 31
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    move-result v1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-le v1, v3, :cond_35

    .line 42
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 44
    const-string p2, "Comments finish on 2nd Page because there is another packet on this page"

    .line 46
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_35
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_47

    .line 60
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 62
    const-string p2, "Comments finish on 2nd Page because this packet is complete"

    .line 64
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_47
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 74
    const-string v1, "Reading next page"

    .line 76
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 79
    invoke-static {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 93
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 96
    move-result v1

    .line 97
    new-array v1, v1, [B

    .line 99
    invoke-virtual {p2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 102
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 112
    move-result v1

    .line 113
    if-le v1, v3, :cond_7e

    .line 115
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 117
    const-string p2, "Comments finish on Page because there is another packet on this page"

    .line 119
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :cond_7e
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_47

    .line 133
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 135
    const-string p2, "Comments finish on Page because this packet is complete"

    .line 137
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 143
    move-result-object p1

    .line 144
    return-object p1
.end method


# virtual methods
.method public convertToVorbisSetupHeaderPacket(JLjava/io/RandomAccessFile;)[B
    .registers 11

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    invoke-static {p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-le p2, v2, :cond_29

    .line 25
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 35
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 38
    move-result p2

    .line 39
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 42
    :cond_29
    const/4 p2, 0x7

    .line 43
    new-array p2, p2, [B

    .line 45
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 48
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_db

    .line 54
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 57
    move-result-wide v3

    .line 58
    const-wide/16 v5, 0x7

    .line 60
    sub-long/2addr v3, v5

    .line 61
    invoke-virtual {p3, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 71
    move-result p2

    .line 72
    if-le p2, v2, :cond_60

    .line 74
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 77
    move-result-object p2

    .line 78
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 84
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 87
    move-result p2

    .line 88
    new-array p2, p2, [B

    .line 90
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 93
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 96
    goto :goto_76

    .line 97
    :cond_60
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 100
    move-result-object p2

    .line 101
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 107
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 110
    move-result p2

    .line 111
    new-array p2, p2, [B

    .line 113
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 116
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 119
    :goto_76
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 122
    move-result p2

    .line 123
    const-string v3, "Setupheader finishes on this page"

    .line 125
    if-eqz p2, :cond_d1

    .line 127
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 134
    move-result p1

    .line 135
    const/4 p2, 0x2

    .line 136
    if-le p1, p2, :cond_8a

    .line 138
    goto :goto_d1

    .line 139
    :cond_8a
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 141
    const-string p2, "Reading another page"

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 146
    invoke-static {p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 153
    move-result-object p2

    .line 154
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 160
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 163
    move-result p2

    .line 164
    new-array p2, p2, [B

    .line 166
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 169
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 172
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 175
    move-result-object p2

    .line 176
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 179
    move-result p2

    .line 180
    if-le p2, v2, :cond_bf

    .line 182
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 184
    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 190
    move-result-object p1

    .line 191
    return-object p1

    .line 192
    :cond_bf
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_8a

    .line 198
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 200
    const-string p2, "Setupheader finish on Page because this packet is complete"

    .line 202
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    :cond_d1
    :goto_d1
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 212
    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 218
    move-result-object p1

    .line 219
    return-object p1

    .line 220
    :cond_db
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 222
    const-string p2, "Unable to find setup header(2), unable to write ogg file"

    .line 224
    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 227
    throw p1
.end method

.method public convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B
    .registers 11

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    invoke-static {p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-le p2, v2, :cond_29

    .line 25
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 35
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 38
    move-result p2

    .line 39
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 42
    :cond_29
    const/4 p2, 0x7

    .line 43
    new-array p2, p2, [B

    .line 45
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 48
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_108

    .line 54
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 57
    move-result-wide v3

    .line 58
    const-wide/16 v5, 0x7

    .line 60
    sub-long/2addr v3, v5

    .line 61
    invoke-virtual {p3, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 71
    move-result p2

    .line 72
    if-le p2, v2, :cond_60

    .line 74
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 77
    move-result-object p2

    .line 78
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 84
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 87
    move-result p2

    .line 88
    new-array p2, p2, [B

    .line 90
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 93
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 96
    goto :goto_76

    .line 97
    :cond_60
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 100
    move-result-object p2

    .line 101
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 107
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 110
    move-result p2

    .line 111
    new-array p2, p2, [B

    .line 113
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 116
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 119
    :goto_76
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 122
    move-result p2

    .line 123
    const-string v3, "Setupheader finishes on this page"

    .line 125
    const/4 v4, 0x2

    .line 126
    if-eqz p2, :cond_d1

    .line 128
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 131
    move-result-object p2

    .line 132
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 135
    move-result p2

    .line 136
    if-le p2, v4, :cond_8a

    .line 138
    goto :goto_d1

    .line 139
    :cond_8a
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 141
    const-string p2, "Reading another page"

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 146
    invoke-static {p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 153
    move-result-object p2

    .line 154
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 160
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 163
    move-result p2

    .line 164
    new-array p2, p2, [B

    .line 166
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 169
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 172
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 175
    move-result-object p2

    .line 176
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 179
    move-result p2

    .line 180
    if-le p2, v2, :cond_bf

    .line 182
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 184
    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 190
    move-result-object p1

    .line 191
    return-object p1

    .line 192
    :cond_bf
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_8a

    .line 198
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 200
    const-string p2, "Setupheader finish on Page because this packet is complete"

    .line 202
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    :cond_d1
    :goto_d1
    sget-object p2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 212
    invoke-virtual {p2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 218
    move-result-object p2

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 222
    move-result p2

    .line 223
    if-le p2, v4, :cond_103

    .line 225
    :goto_e0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 232
    move-result p2

    .line 233
    if-ge v4, p2, :cond_103

    .line 235
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 238
    move-result-object p2

    .line 239
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    move-result-object p2

    .line 243
    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 245
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 248
    move-result p2

    .line 249
    new-array p2, p2, [B

    .line 251
    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 254
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 257
    add-int/lit8 v4, v4, 0x1

    .line 259
    goto :goto_e0

    .line 260
    :cond_103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 263
    move-result-object p1

    .line 264
    return-object p1

    .line 265
    :cond_108
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 267
    const-string p2, "Unable to find setup header(2), unable to write ogg file"

    .line 269
    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 272
    throw p1
.end method

.method public isVorbisCommentHeader([B)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    const-string v2, "ISO-8859-1"

    .line 5
    invoke-static {p1, v0, v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aget-byte p1, p1, v2

    .line 12
    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 14
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    .line 17
    move-result v3

    .line 18
    if-ne p1, v3, :cond_1c

    .line 20
    const-string p1, "vorbis"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    return v0
.end method

.method public isVorbisSetupHeader([B)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    const-string v2, "ISO-8859-1"

    .line 5
    invoke-static {p1, v0, v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aget-byte p1, p1, v2

    .line 12
    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 14
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    .line 17
    move-result v3

    .line 18
    if-ne p1, v3, :cond_1c

    .line 20
    const-string p1, "vorbis"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    return v0
.end method

.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Starting to read ogg vorbis tag from file:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->readRawPacketData(Ljava/io/RandomAccessFile;)[B

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->read([BZ)Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 21
    const-string v1, "CompletedReadCommentTag"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    return-object p1
.end method

.method public readOggVorbisHeaderSizes(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    sget-object v2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 7
    const-string v3, "Started to read comment and setup header sizes:"

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 15
    move-result-wide v2

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 24
    move-result-object v5

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 28
    move-result-wide v6

    .line 29
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 32
    move-result v5

    .line 33
    int-to-long v8, v5

    .line 34
    add-long/2addr v6, v8

    .line 35
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 38
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 45
    move-result-wide v6

    .line 46
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    .line 49
    move-result-object v8

    .line 50
    array-length v8, v8

    .line 51
    add-int/lit8 v8, v8, 0x1b

    .line 53
    int-to-long v8, v8

    .line 54
    sub-long v11, v6, v8

    .line 56
    const/4 v6, 0x7

    .line 57
    new-array v6, v6, [B

    .line 59
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->read([B)I

    .line 62
    invoke-virtual {v0, v6}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->isVorbisCommentHeader([B)Z

    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_35f

    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 71
    move-result-wide v6

    .line 72
    const-wide/16 v8, 0x7

    .line 74
    sub-long/2addr v6, v8

    .line 75
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    sget-object v6, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 80
    const-string v7, "Found start of comment header at:"

    .line 82
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object v7

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 89
    move-result-wide v8

    .line 90
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 100
    const/4 v6, 0x0

    .line 101
    move v7, v6

    .line 102
    :goto_65
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 105
    move-result-object v8

    .line 106
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 112
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 115
    move-result v9

    .line 116
    add-int/2addr v7, v9

    .line 117
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 123
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 126
    move-result v9

    .line 127
    invoke-virtual {v1, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 130
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 133
    move-result v8

    .line 134
    const/4 v9, 0x1

    .line 135
    if-gt v8, v9, :cond_94

    .line 137
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 140
    move-result v8

    .line 141
    if-nez v8, :cond_8f

    .line 143
    goto :goto_94

    .line 144
    :cond_8f
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 147
    move-result-object v5

    .line 148
    goto :goto_65

    .line 149
    :cond_94
    :goto_94
    sget-object v6, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 151
    const-string v8, "Found end of comment:size:"

    .line 153
    const-string v10, "finishes at file position:"

    .line 155
    invoke-static {v8, v7, v10}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move-result-object v8

    .line 159
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 162
    move-result-wide v13

    .line 163
    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 176
    move-result-object v6

    .line 177
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 180
    move-result v6

    .line 181
    const-string v8, "Found start of vorbis setup header at file position:"

    .line 183
    const-string v10, "finishes at:"

    .line 185
    const-string v13, "Found end of setupheader:size:"

    .line 187
    const-string v14, " to setup header size"

    .line 189
    const-string v15, "Adding:"

    .line 191
    if-ne v6, v9, :cond_1ed

    .line 193
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 204
    move-result-object v9

    .line 205
    move-object/from16 v16, v4

    .line 207
    const/4 v4, 0x0

    .line 208
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 214
    const/4 v9, 0x7

    .line 215
    new-array v9, v9, [B

    .line 217
    invoke-virtual {v1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    .line 220
    invoke-virtual {v0, v9}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    .line 223
    move-result v9

    .line 224
    if-eqz v9, :cond_1e1

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 229
    move-result-wide v17

    .line 230
    const-wide/16 v19, 0x7

    .line 232
    move-wide/from16 v21, v11

    .line 234
    sub-long v11, v17, v19

    .line 236
    invoke-virtual {v1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 239
    sget-object v9, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 241
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    move-result-object v8

    .line 245
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 248
    move-result-wide v11

    .line 249
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v8

    .line 256
    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 262
    move-result-wide v8

    .line 263
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    .line 266
    move-result-object v11

    .line 267
    array-length v11, v11

    .line 268
    add-int/lit8 v11, v11, 0x1b

    .line 270
    int-to-long v11, v11

    .line 271
    sub-long/2addr v8, v11

    .line 272
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 275
    move-result v11

    .line 276
    sget-object v12, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 278
    move-wide/from16 v17, v8

    .line 280
    invoke-static {v15}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 287
    move-result v9

    .line 288
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v8

    .line 298
    invoke-virtual {v12, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 304
    move-result v4

    .line 305
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 308
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 311
    move-result v4

    .line 312
    const/4 v8, 0x1

    .line 313
    if-gt v4, v8, :cond_1b8

    .line 315
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_142

    .line 321
    goto/16 :goto_1b8

    .line 323
    :cond_142
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 330
    move-result-object v5

    .line 331
    :goto_14a
    const/4 v6, 0x0

    .line 332
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    move-result-object v8

    .line 336
    check-cast v8, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 338
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 341
    move-result v8

    .line 342
    add-int/2addr v11, v8

    .line 343
    sget-object v8, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 345
    invoke-static {v15}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    move-result-object v9

    .line 349
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 352
    move-result-object v12

    .line 353
    check-cast v12, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 355
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 358
    move-result v12

    .line 359
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v9

    .line 369
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 372
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    move-result-object v6

    .line 376
    check-cast v6, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 378
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 381
    move-result v6

    .line 382
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 385
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 388
    move-result v6

    .line 389
    const/4 v8, 0x1

    .line 390
    if-gt v6, v8, :cond_193

    .line 392
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 395
    move-result v4

    .line 396
    if-nez v4, :cond_18e

    .line 398
    goto :goto_193

    .line 399
    :cond_18e
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 402
    move-result-object v4

    .line 403
    goto :goto_14a

    .line 404
    :cond_193
    :goto_193
    sget-object v4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 406
    invoke-static {v13, v11, v10}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    move-result-object v6

    .line 410
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 413
    move-result-wide v8

    .line 414
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object v6

    .line 421
    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 424
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 427
    move-result v4

    .line 428
    const/4 v6, 0x1

    .line 429
    if-le v4, v6, :cond_1dd

    .line 431
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 434
    move-result v4

    .line 435
    invoke-interface {v5, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 438
    move-result-object v4

    .line 439
    goto/16 :goto_313

    .line 441
    :cond_1b8
    :goto_1b8
    sget-object v4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 443
    invoke-static {v13, v11, v10}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    move-result-object v5

    .line 447
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 450
    move-result-wide v8

    .line 451
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    move-result-object v5

    .line 458
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 461
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 464
    move-result v4

    .line 465
    const/4 v5, 0x1

    .line 466
    if-le v4, v5, :cond_1dd

    .line 468
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 471
    move-result v4

    .line 472
    invoke-interface {v6, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 475
    move-result-object v4

    .line 476
    goto/16 :goto_313

    .line 478
    :cond_1dd
    move-object/from16 v4, v16

    .line 480
    goto/16 :goto_313

    .line 482
    :cond_1e1
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 484
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_VORBIS_HEADER_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 486
    invoke-virtual {v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 489
    move-result-object v2

    .line 490
    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 493
    throw v1

    .line 494
    :cond_1ed
    move-object/from16 v16, v4

    .line 496
    move-wide/from16 v21, v11

    .line 498
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 501
    move-result-object v4

    .line 502
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 505
    move-result-object v4

    .line 506
    check-cast v4, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 508
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 511
    move-result-object v6

    .line 512
    const/4 v9, 0x7

    .line 513
    new-array v9, v9, [B

    .line 515
    invoke-virtual {v1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    .line 518
    invoke-virtual {v0, v9}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    .line 521
    move-result v11

    .line 522
    if-eqz v11, :cond_32d

    .line 524
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 527
    move-result-wide v11

    .line 528
    const-wide/16 v17, 0x7

    .line 530
    sub-long v11, v11, v17

    .line 532
    invoke-virtual {v1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 535
    sget-object v9, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 537
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    move-result-object v8

    .line 541
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 544
    move-result-wide v11

    .line 545
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    move-result-object v8

    .line 552
    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 558
    move-result-wide v8

    .line 559
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    .line 562
    move-result-object v11

    .line 563
    array-length v11, v11

    .line 564
    add-int/lit8 v11, v11, 0x1b

    .line 566
    int-to-long v11, v11

    .line 567
    sub-long/2addr v8, v11

    .line 568
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 571
    move-result-object v11

    .line 572
    const/4 v12, 0x0

    .line 573
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 576
    move-result-object v11

    .line 577
    check-cast v11, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 579
    invoke-virtual {v11}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 582
    move-result v11

    .line 583
    int-to-long v11, v11

    .line 584
    sub-long/2addr v8, v11

    .line 585
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 588
    move-result v11

    .line 589
    sget-object v12, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 591
    invoke-static {v15}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move-result-object v0

    .line 595
    move-wide/from16 v17, v8

    .line 597
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 600
    move-result v8

    .line 601
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v12, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 617
    move-result v0

    .line 618
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 621
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 624
    move-result v0

    .line 625
    const/4 v4, 0x2

    .line 626
    if-gt v0, v4, :cond_2f0

    .line 628
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 631
    move-result v0

    .line 632
    if-nez v0, :cond_27b

    .line 634
    goto/16 :goto_2f0

    .line 636
    :cond_27b
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    .line 643
    move-result-object v4

    .line 644
    const/4 v5, 0x0

    .line 645
    :goto_284
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 648
    move-result-object v6

    .line 649
    check-cast v6, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 651
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 654
    move-result v6

    .line 655
    add-int/2addr v11, v6

    .line 656
    sget-object v6, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 658
    invoke-static {v15}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    move-result-object v8

    .line 662
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 665
    move-result-object v9

    .line 666
    check-cast v9, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 668
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 671
    move-result v9

    .line 672
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    move-result-object v8

    .line 682
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 685
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 688
    move-result-object v6

    .line 689
    check-cast v6, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 691
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 694
    move-result v6

    .line 695
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 698
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 701
    move-result v6

    .line 702
    const/4 v8, 0x1

    .line 703
    if-gt v6, v8, :cond_2cc

    .line 705
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    .line 708
    move-result v0

    .line 709
    if-nez v0, :cond_2c7

    .line 711
    goto :goto_2cc

    .line 712
    :cond_2c7
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 715
    move-result-object v0

    .line 716
    goto :goto_284

    .line 717
    :cond_2cc
    :goto_2cc
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 719
    invoke-static {v13, v11, v10}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    move-result-object v5

    .line 723
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 726
    move-result-wide v8

    .line 727
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    move-result-object v5

    .line 734
    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 737
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 740
    move-result v0

    .line 741
    const/4 v5, 0x1

    .line 742
    if-le v0, v5, :cond_31a

    .line 744
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 747
    move-result v0

    .line 748
    invoke-interface {v4, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 751
    move-result-object v0

    .line 752
    goto :goto_312

    .line 753
    :cond_2f0
    :goto_2f0
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 755
    invoke-static {v13, v11, v10}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    move-result-object v5

    .line 759
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 762
    move-result-wide v8

    .line 763
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    move-result-object v5

    .line 770
    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 773
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 776
    move-result v0

    .line 777
    if-le v0, v4, :cond_31a

    .line 779
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 782
    move-result v0

    .line 783
    invoke-interface {v6, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 786
    move-result-object v0

    .line 787
    :goto_312
    move-object v4, v0

    .line 788
    :goto_313
    move/from16 v16, v11

    .line 790
    move-wide/from16 v13, v17

    .line 792
    move-object/from16 v17, v4

    .line 794
    goto :goto_320

    .line 795
    :cond_31a
    move-wide/from16 v13, v17

    .line 797
    move-object/from16 v17, v16

    .line 799
    move/from16 v16, v11

    .line 801
    :goto_320
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 804
    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;

    .line 806
    move-object v10, v0

    .line 807
    move-wide/from16 v11, v21

    .line 809
    move v15, v7

    .line 810
    invoke-direct/range {v10 .. v17}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;-><init>(JJIILjava/util/List;)V

    .line 813
    return-object v0

    .line 814
    :cond_32d
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 816
    const-string v2, "Expecting but got:"

    .line 818
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    move-result-object v2

    .line 822
    new-instance v3, Ljava/lang/String;

    .line 824
    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    .line 827
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string v3, "at "

    .line 832
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 838
    move-result-wide v3

    .line 839
    const/4 v1, 0x7

    .line 840
    int-to-long v5, v1

    .line 841
    sub-long/2addr v3, v5

    .line 842
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    move-result-object v1

    .line 849
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 852
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 854
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_VORBIS_HEADER_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 856
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 859
    move-result-object v1

    .line 860
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 863
    throw v0

    .line 864
    :cond_35f
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 866
    const-string v1, "Cannot find comment block (no vorbiscomment header)"

    .line 868
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 871
    throw v0
.end method

.method public readOggVorbisRawSize(Ljava/io/RandomAccessFile;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->readRawPacketData(Ljava/io/RandomAccessFile;)[B

    .line 4
    move-result-object p1

    .line 5
    array-length p1, p1

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    add-int/lit8 p1, p1, 0x6

    .line 10
    return p1
.end method

.method public readRawPacketData(Ljava/io/RandomAccessFile;)[B
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Read 1st page"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 19
    move-result v0

    .line 20
    int-to-long v3, v0

    .line 21
    add-long/2addr v1, v3

    .line 22
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 25
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    .line 27
    const-string v1, "Read 2nd page"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x7

    .line 37
    new-array v1, v1, [B

    .line 39
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 42
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->isVorbisCommentHeader([B)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_34

    .line 48
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisCommentPacket(Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/io/RandomAccessFile;)[B

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_34
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 55
    const-string v0, "Cannot find comment block (no vorbiscomment header)"

    .line 57
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1
.end method
