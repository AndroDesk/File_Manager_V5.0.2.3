.class public Lcom/junrar/unpack/ComprDataIO;
.super Ljava/lang/Object;
.source "ComprDataIO.java"


# instance fields
.field private final archive:Lcom/junrar/Archive;

.field private encryption:I

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private packedCRC:J

.field private skipUnpCRC:Z

.field private subHead:Lcom/junrar/rarfile/FileHeader;

.field private testMode:Z

.field private unpFileCRC:J

.field private unpPackedSize:J


# direct methods
.method public constructor <init>(Lcom/junrar/Archive;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    .line 6
    return-void
.end method


# virtual methods
.method public getEncryption()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ComprDataIO;->encryption:I

    .line 3
    return v0
.end method

.method public getPackedCRC()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 3
    return-wide v0
.end method

.method public getSubHeader()Lcom/junrar/rarfile/FileHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    .line 3
    return-object v0
.end method

.method public getUnpFileCRC()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 3
    return-wide v0
.end method

.method public init(Lcom/junrar/rarfile/FileHeader;)V
    .registers 12

    .line 7
    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 8
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 9
    new-instance v0, Lcom/junrar/io/ReadOnlyAccessInputStream;

    iget-object v1, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    .line 10
    invoke-virtual {v1}, Lcom/junrar/Archive;->getRof()Lcom/junrar/io/IReadOnlyAccess;

    move-result-object v5

    iget-wide v1, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    add-long v8, v6, v1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/junrar/io/ReadOnlyAccessInputStream;-><init>(Lcom/junrar/io/IReadOnlyAccess;JJ)V

    iput-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    .line 11
    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    return-void
.end method

.method public init(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/junrar/unpack/ComprDataIO;->testMode:Z

    .line 4
    iput-boolean p1, p0, Lcom/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 5
    iput p1, p0, Lcom/junrar/unpack/ComprDataIO;->encryption:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    return-void
.end method

.method public setEncryption(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/ComprDataIO;->encryption:I

    .line 3
    return-void
.end method

.method public setUnpFileCRC(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 3
    return-void
.end method

.method public unpRead([BII)I
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_2
    const/4 v2, -0x1

    .line 4
    if-lez p3, :cond_56

    .line 6
    int-to-long v3, p3

    .line 7
    iget-wide v5, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 9
    cmp-long v1, v3, v5

    .line 11
    if-lez v1, :cond_e

    .line 13
    long-to-int v1, v5

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v1, p3

    .line 16
    :goto_f
    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    .line 18
    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 21
    move-result v1

    .line 22
    if-ltz v1, :cond_50

    .line 24
    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    .line 26
    invoke-virtual {v3}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_29

    .line 32
    iget-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 34
    long-to-int v3, v3

    .line 35
    invoke-static {v3, p1, p2, v1}, Lcom/junrar/crc/RarCRC;->checkCrc(I[BII)I

    .line 38
    move-result v3

    .line 39
    int-to-long v3, v3

    .line 40
    iput-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 42
    :cond_29
    add-int/2addr v0, v1

    .line 43
    add-int/2addr p2, v1

    .line 44
    sub-int/2addr p3, v1

    .line 45
    iget-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 47
    int-to-long v5, v1

    .line 48
    sub-long/2addr v3, v5

    .line 49
    iput-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 51
    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    .line 53
    invoke-virtual {v3, v1}, Lcom/junrar/Archive;->bytesReadRead(I)V

    .line 56
    iget-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 58
    const-wide/16 v5, 0x0

    .line 60
    cmp-long v3, v3, v5

    .line 62
    if-nez v3, :cond_56

    .line 64
    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    .line 66
    invoke-virtual {v3}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_56

    .line 72
    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    .line 74
    invoke-static {v3, p0}, Lcom/junrar/Volume;->mergeArchive(Lcom/junrar/Archive;Lcom/junrar/unpack/ComprDataIO;)Z

    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_2

    .line 80
    return v2

    .line 81
    :cond_50
    new-instance p1, Ljava/io/EOFException;

    .line 83
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 86
    throw p1

    .line 87
    :cond_56
    if-eq v1, v2, :cond_59

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v0, v1

    .line 91
    :goto_5a
    return v0
.end method

.method public unpWrite([BII)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/junrar/unpack/ComprDataIO;->testMode:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 10
    :cond_9
    iget-boolean v0, p0, Lcom/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 12
    if-nez v0, :cond_28

    .line 14
    iget-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    .line 16
    invoke-virtual {v0}, Lcom/junrar/Archive;->isOldFormat()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 24
    long-to-int p2, v0

    .line 25
    int-to-short p2, p2

    .line 26
    invoke-static {p2, p1, p3}, Lcom/junrar/crc/RarCRC;->checkOldCrc(S[BI)S

    .line 29
    move-result p1

    .line 30
    goto :goto_25

    .line 31
    :cond_1e
    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 33
    long-to-int v0, v0

    .line 34
    invoke-static {v0, p1, p2, p3}, Lcom/junrar/crc/RarCRC;->checkCrc(I[BII)I

    .line 37
    move-result p1

    .line 38
    :goto_25
    int-to-long p1, p1

    .line 39
    iput-wide p1, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 41
    :cond_28
    return-void
.end method
