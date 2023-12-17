.class Lcom/junrar/unpack/ppm/StateRef;
.super Ljava/lang/Object;
.source "StateRef.java"


# instance fields
.field private freq:I

.field private successor:I

.field private symbol:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decFreq(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    .line 3
    sub-int/2addr v0, p1

    .line 4
    and-int/lit16 p1, v0, 0xff

    .line 6
    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    .line 8
    return-void
.end method

.method public getFreq()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    .line 3
    return v0
.end method

.method public getSuccessor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->successor:I

    .line 3
    return v0
.end method

.method public getSymbol()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->symbol:I

    .line 3
    return v0
.end method

.method public setFreq(I)V
    .registers 2

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    .line 5
    return-void
.end method

.method public setSuccessor(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->successor:I

    return-void
.end method

.method public setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    return-void
.end method

.method public setSymbol(I)V
    .registers 2

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->symbol:I

    .line 5
    return-void
.end method

.method public setValues(Lcom/junrar/unpack/ppm/State;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 8
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 15
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSymbol(I)V

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "State["

    .line 3
    const-string v1, "\n  symbol="

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "\n  freq="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "\n  successor="

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    .line 36
    move-result v1

    .line 37
    const-string v2, "\n]"

    .line 39
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
