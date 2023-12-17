.class public Lcom/junrar/unpack/ppm/State;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "State.java"


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

.method public static ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget-object v1, p1, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 5
    iget p0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    iget p1, p1, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    const/4 v3, 0x6

    .line 11
    if-ge v2, v3, :cond_1b

    .line 13
    aget-byte v3, v0, p0

    .line 15
    aget-byte v4, v1, p1

    .line 17
    aput-byte v4, v0, p0

    .line 19
    aput-byte v3, v1, p1

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 23
    add-int/lit8 p0, p0, 0x1

    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 27
    goto :goto_9

    .line 28
    :cond_1b
    return-void
.end method


# virtual methods
.method public decAddress()Lcom/junrar/unpack/ppm/State;
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 3
    add-int/lit8 v0, v0, -0x6

    .line 5
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 8
    return-object p0
.end method

.method public bridge synthetic getAddress()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getFreq()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 7
    aget-byte v0, v0, v1

    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 11
    return v0
.end method

.method public getSuccessor()I
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

.method public getSymbol()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    aget-byte v0, v0, v1

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 9
    return v0
.end method

.method public incAddress()Lcom/junrar/unpack/ppm/State;
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 3
    add-int/lit8 v0, v0, 0x6

    .line 5
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 8
    return-object p0
.end method

.method public incFreq(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 7
    aget-byte v2, v0, v1

    .line 9
    add-int/2addr v2, p1

    .line 10
    int-to-byte p1, v2

    .line 11
    aput-byte p1, v0, v1

    .line 13
    return-void
.end method

.method public init([B)Lcom/junrar/unpack/ppm/State;
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

.method public setFreq(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 7
    int-to-byte p1, p1

    .line 8
    aput-byte p1, v0, v1

    .line 10
    return-void
.end method

.method public setSuccessor(I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    return-void
.end method

.method public setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    return-void
.end method

.method public setSymbol(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 5
    int-to-byte p1, p1

    .line 6
    aput-byte p1, v0, v1

    .line 8
    return-void
.end method

.method public setValues(Lcom/junrar/unpack/ppm/State;)V
    .registers 6

    .line 4
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

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 2
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    .line 3
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "State["

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
    const-string v1, "\n  symbol="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "\n  freq="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "\n  successor="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "\n]"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method
