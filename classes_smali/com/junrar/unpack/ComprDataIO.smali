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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/Archive;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    return-void
.end method


# virtual methods
.method public getEncryption()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ComprDataIO;->encryption:I

    return v0
.end method

.method public getPackedCRC()J
    .registers 3

    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    return-wide v0
.end method

.method public getSubHeader()Lcom/junrar/rarfile/FileHeader;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    return-object v0
.end method

.method public getUnpFileCRC()J
    .registers 3

    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    return-wide v0
.end method

.method public init(Lcom/junrar/rarfile/FileHeader;)V
    .registers 12

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    new-instance v0, Lcom/junrar/io/ReadOnlyAccessInputStream;

    iget-object v1, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    invoke-virtual {v1}, Lcom/junrar/Archive;->getRof()Lcom/junrar/io/IReadOnlyAccess;

    move-result-object v5

    iget-wide v1, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    add-long v8, v6, v1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/junrar/io/ReadOnlyAccessInputStream;-><init>(Lcom/junrar/io/IReadOnlyAccess;JJ)V

    iput-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    return-void
.end method

.method public init(Ljava/io/OutputStream;)V
    .registers 4

    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/junrar/unpack/ComprDataIO;->testMode:Z

    iput-boolean p1, p0, Lcom/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    iput p1, p0, Lcom/junrar/unpack/ComprDataIO;->encryption:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    return-void
.end method

.method public setEncryption(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/ComprDataIO;->encryption:I

    return-void
.end method

.method public setUnpFileCRC(J)V
    .registers 3

    iput-wide p1, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    return-void
.end method

.method public unpRead([BII)I
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    const/4 v2, -0x1

    if-lez p3, :cond_56

    int-to-long v3, p3

    iget-wide v5, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_e

    long-to-int v1, v5

    goto :goto_f

    :cond_e
    move v1, p3

    :goto_f
    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_50

    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    invoke-virtual {v3}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    long-to-int v3, v3

    invoke-static {v3, p1, p2, v1}, Lcom/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->packedCRC:J

    :cond_29
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    invoke-virtual {v3, v1}, Lcom/junrar/Archive;->bytesReadRead(I)V

    iget-wide v3, p0, Lcom/junrar/unpack/ComprDataIO;->unpPackedSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->subHead:Lcom/junrar/rarfile/FileHeader;

    invoke-virtual {v3}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    invoke-static {v3, p0}, Lcom/junrar/Volume;->mergeArchive(Lcom/junrar/Archive;Lcom/junrar/unpack/ComprDataIO;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_50
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_56
    if-eq v1, v2, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v1

    :goto_5a
    return v0
.end method

.method public unpWrite([BII)V
    .registers 6

    iget-boolean v0, p0, Lcom/junrar/unpack/ComprDataIO;->testMode:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_9
    iget-boolean v0, p0, Lcom/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/junrar/unpack/ComprDataIO;->archive:Lcom/junrar/Archive;

    invoke-virtual {v0}, Lcom/junrar/Archive;->isOldFormat()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int p2, v0

    int-to-short p2, p2

    invoke-static {p2, p1, p3}, Lcom/junrar/crc/RarCRC;->checkOldCrc(S[BI)S

    move-result p1

    goto :goto_25

    :cond_1e
    iget-wide v0, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    invoke-static {v0, p1, p2, p3}, Lcom/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result p1

    :goto_25
    int-to-long p1, p1

    iput-wide p1, p0, Lcom/junrar/unpack/ComprDataIO;->unpFileCRC:J

    :cond_28
    return-void
.end method
