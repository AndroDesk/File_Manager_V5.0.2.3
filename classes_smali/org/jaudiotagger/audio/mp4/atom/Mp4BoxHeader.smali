.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
.super Ljava/lang/Object;
.source "Mp4BoxHeader.java"


# static fields
.field public static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final HEADER_LENGTH:I = 0x8

.field public static final IDENTIFIER_LENGTH:I = 0x4

.field public static final IDENTIFIER_POS:I = 0x4

.field public static final OFFSET_LENGTH:I = 0x4

.field public static final OFFSET_POS:I

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field public dataBuffer:Ljava/nio/ByteBuffer;

.field private filePos:J

.field private id:Ljava/lang/String;

.field public length:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.mp4.atom"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4f

    const/16 v1, 0x8

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 5
    :try_start_14
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 11
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid length:atom idenifier should always be 4 characters long"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .registers 11

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Started searching for:"

    const-string v2, " in file at:"

    .line 2
    invoke-static {v1, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    const/16 v1, 0x8

    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, v1, :cond_33

    return-object v5

    .line 7
    :cond_33
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    .line 9
    :goto_39
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c7

    .line 10
    sget-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Found:"

    .line 11
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 12
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Still searching for:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    if-ge v4, v1, :cond_76

    return-object v5

    .line 14
    :cond_76
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v4

    .line 15
    sget-object v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    if-ge v4, v6, :cond_9b

    return-object v5

    .line 17
    :cond_9b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 18
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 19
    sget-object v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Header Bytes Read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-ne v4, v1, :cond_c6

    .line 21
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_39

    :cond_c6
    return-object v5

    :cond_c7
    return-object v0
.end method

.method public static seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .registers 9

    .line 30
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Started searching for:"

    const-string v2, " in bytebuffer at"

    .line 31
    invoke-static {v1, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-lt v1, v4, :cond_9b

    .line 35
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    .line 36
    :goto_29
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "Found:"

    if-nez v1, :cond_86

    .line 37
    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    .line 38
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 39
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Still searching for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    if-ge v1, v4, :cond_62

    return-object v3

    .line 41
    :cond_62
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_6e

    return-object v3

    .line 42
    :cond_6e
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lt v1, v4, :cond_85

    .line 44
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    goto :goto_29

    :cond_85
    return-object v3

    .line 45
    :cond_86
    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    .line 46
    invoke-static {v5, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-object v0

    :cond_9b
    return-object v3
.end method


# virtual methods
.method public getDataLength()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 3
    add-int/lit8 v0, v0, -0x8

    .line 5
    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getFilePos()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->filePos:J

    .line 3
    return-wide v0
.end method

.method public getHeaderData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 8
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 3
    return v0
.end method

.method public setFilePos(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->filePos:J

    .line 3
    return-void
.end method

.method public setId(I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 7
    const/4 v2, 0x0

    .line 8
    aget-byte v2, v0, v2

    .line 10
    const/4 v3, 0x5

    .line 11
    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 16
    const/4 v2, 0x1

    .line 17
    aget-byte v2, v0, v2

    .line 19
    const/4 v3, 0x6

    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 23
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 25
    const/4 v2, 0x2

    .line 26
    aget-byte v2, v0, v2

    .line 28
    const/4 v3, 0x7

    .line 29
    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 34
    const/4 v2, 0x3

    .line 35
    aget-byte v0, v0, v2

    .line 37
    const/16 v2, 0x8

    .line 39
    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 42
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 44
    return-void
.end method

.method public setLength(I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 7
    const/4 v2, 0x0

    .line 8
    aget-byte v3, v0, v2

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 15
    const/4 v2, 0x1

    .line 16
    aget-byte v3, v0, v2

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 21
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 23
    const/4 v2, 0x2

    .line 24
    aget-byte v3, v0, v2

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 31
    const/4 v2, 0x3

    .line 32
    aget-byte v0, v0, v2

    .line 34
    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 37
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "Box "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ":length"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ":filepos:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->filePos:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public update(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v1, v0, [B

    .line 5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 14
    const/4 p1, 0x0

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-static {v1, p1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE([BII)I

    .line 19
    move-result v2

    .line 20
    iput v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 22
    const/4 v2, 0x4

    .line 23
    const-string v3, "ISO-8859-1"

    .line 25
    invoke-static {v1, v2, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 31
    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->logger:Ljava/util/logging/Logger;

    .line 33
    const-string v2, "Mp4BoxHeader id:"

    .line 35
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, ":length:"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 63
    const-string v2, "\u0000\u0000\u0000\u0000"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x1

    .line 70
    if-nez v1, :cond_67

    .line 72
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 74
    if-lt v1, v0, :cond_4c

    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidBoxHeaderException;

    .line 79
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_UNABLE_TO_FIND_NEXT_ATOM_BECAUSE_IDENTIFIER_IS_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 81
    const/4 v3, 0x2

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 86
    aput-object v4, v3, p1

    .line 88
    iget p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->length:I

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p1

    .line 94
    aput-object p1, v3, v2

    .line 96
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/InvalidBoxHeaderException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v0

    .line 104
    :cond_67
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/NullBoxIdException;

    .line 106
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_UNABLE_TO_FIND_NEXT_ATOM_BECAUSE_IDENTIFIER_IS_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 108
    new-array v2, v2, [Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->id:Ljava/lang/String;

    .line 112
    aput-object v3, v2, p1

    .line 114
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/NullBoxIdException;-><init>(Ljava/lang/String;)V

    .line 121
    throw v0
.end method
