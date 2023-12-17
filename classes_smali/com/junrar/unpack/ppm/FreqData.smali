.class public Lcom/junrar/unpack/ppm/FreqData;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "FreqData.java"


# static fields
.field public static final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/FreqData;->size:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAddress()I
    .registers 2

    invoke-super {p0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v0

    return v0
.end method

.method public getStats()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method public getSummFreq()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public incSummFreq(I)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->incShortLittleEndian([BII)V

    return-void
.end method

.method public init([B)Lcom/junrar/unpack/ppm/FreqData;
    .registers 2

    iput-object p1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    return-object p0
.end method

.method public bridge synthetic setAddress(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    return-void
.end method

.method public setStats(I)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    return-void
.end method

.method public setStats(Lcom/junrar/unpack/ppm/State;)V
    .registers 2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    return-void
.end method

.method public setSummFreq(I)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FreqData["

    const-string v1, "\n  pos="

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  summFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
