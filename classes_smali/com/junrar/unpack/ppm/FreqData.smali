.class public Lcom/junrar/unpack/ppm/FreqData;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "FreqData.java"


# static fields
.field public static final size:I = 0x6


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getAddress()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getStats()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    add-int/lit8 v1, v1, 0x2

    .line 7
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getSummFreq()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 8
    move-result v0

    .line 9
    const v1, 0xffff

    .line 12
    and-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public incSummFreq(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->incShortLittleEndian([BII)V

    .line 8
    return-void
.end method

.method public init([B)Lcom/junrar/unpack/ppm/FreqData;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 6
    return-object p0
.end method

.method public bridge synthetic setAddress(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 4
    return-void
.end method

.method public setStats(I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    return-void
.end method

.method public setStats(Lcom/junrar/unpack/ppm/State;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    return-void
.end method

.method public setSummFreq(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    int-to-short p1, p1

    .line 6
    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "FreqData["

    .line 3
    const-string v1, "\n  pos="

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "\n  size="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "\n  summFreq="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "\n  stats="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "\n]"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
