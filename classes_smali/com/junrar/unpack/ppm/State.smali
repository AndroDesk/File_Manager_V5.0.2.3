.class public Lcom/junrar/unpack/ppm/State;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "State.java"


# static fields
.field public static final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/State;->size:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    return-void
.end method

.method public static ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V
    .registers 7

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget-object v1, p1, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget p0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    iget p1, p1, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1b

    aget-byte v3, v0, p0

    aget-byte v4, v1, p1

    aput-byte v4, v0, p0

    aput-byte v3, v1, p1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method


# virtual methods
.method public decAddress()Lcom/junrar/unpack/ppm/State;
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    return-object p0
.end method

.method public bridge synthetic getAddress()I
    .registers 2

    invoke-super {p0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v0

    return v0
.end method

.method public getFreq()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getSuccessor()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method public getSymbol()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public incAddress()Lcom/junrar/unpack/ppm/State;
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    return-object p0
.end method

.method public incFreq(I)V
    .registers 5

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, v0, v1

    add-int/2addr v2, p1

    int-to-byte p1, v2

    aput-byte p1, v0, v1

    return-void
.end method

.method public init([B)Lcom/junrar/unpack/ppm/State;
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

.method public setFreq(I)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public setSuccessor(I)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    return-void
.end method

.method public setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V
    .registers 2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    return-void
.end method

.method public setSymbol(I)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public setValues(Lcom/junrar/unpack/ppm/State;)V
    .registers 6

    iget-object v0, p1, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget p1, p1, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    iget-object v1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v2, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    const/4 v3, 0x6

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setValues(Lcom/junrar/unpack/ppm/StateRef;)V
    .registers 3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setSymbol(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "State["

    const-string v1, "\n  pos="

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  successor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
