.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;
.super Ljava/lang/Object;
.source "MetadataBlockHeader.java"


# static fields
.field public static final HEADER_LENGTH:I = 0x4


# instance fields
.field private blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field private bytes:[B

.field private dataLength:I

.field private isLastBlock:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0x80

    ushr-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7f

    .line 4
    invoke-static {}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->values()[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_29

    .line 5
    invoke-static {}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->values()[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v3

    aget-object v1, v3, v1

    iput-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 6
    :cond_29
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 7
    iput-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    :goto_50
    if-ge v0, v1, :cond_5d

    .line 8
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_5d
    return-void
.end method

.method public constructor <init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 11
    iput-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 12
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 13
    iput p3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    if-eqz p1, :cond_17

    .line 14
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->getId()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    goto :goto_1b

    .line 15
    :cond_17
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->getId()I

    move-result p1

    :goto_1b
    int-to-byte p1, p1

    .line 16
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/high16 p1, 0xff0000

    and-int/2addr p1, p3

    ushr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const p1, 0xff00

    and-int/2addr p1, p3

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-array p1, v0, [B

    .line 20
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    const/4 p1, 0x0

    :goto_3d
    if-ge p1, v0, :cond_4a

    .line 21
    iget-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    aput-byte p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    :cond_4a
    return-void
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 13
    move-result p0

    .line 14
    if-lt p0, v0, :cond_18

    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 19
    new-instance p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 21
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 24
    return-object p0

    .line 25
    :cond_18
    new-instance v1, Ljava/io/IOException;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v3, "Unable to read required number of databytes read:"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, ":required:"

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v1
.end method

.method private u(I)I
    .registers 2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 3
    return-object v0
.end method

.method public getBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    .line 3
    return-object v0
.end method

.method public getBytesWithoutIsLastBlockFlag()[B
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v2, v0, v1

    .line 6
    and-int/lit8 v2, v2, 0x7f

    .line 8
    int-to-byte v2, v2

    .line 9
    aput-byte v2, v0, v1

    .line 11
    return-object v0
.end method

.method public getDataLength()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    .line 3
    return v0
.end method

.method public isLastBlock()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "BlockType:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " DataLength:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " isLastBlock:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
