.class Lcom/junrar/unpack/ppm/StateRef;
.super Ljava/lang/Object;
.source "StateRef.java"


# instance fields
.field private freq:I

.field private successor:I

.field private symbol:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decFreq(I)V
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    sub-int/2addr v0, p1

    and-int/lit16 p1, v0, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    return-void
.end method

.method public getFreq()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    return v0
.end method

.method public getSuccessor()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->successor:I

    return v0
.end method

.method public getSymbol()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/StateRef;->symbol:I

    return v0
.end method

.method public setFreq(I)V
    .registers 2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->freq:I

    return-void
.end method

.method public setSuccessor(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->successor:I

    return-void
.end method

.method public setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V
    .registers 2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    return-void
.end method

.method public setSymbol(I)V
    .registers 2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/StateRef;->symbol:I

    return-void
.end method

.method public setValues(Lcom/junrar/unpack/ppm/State;)V
    .registers 3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/StateRef;->setFreq(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSymbol(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "State["

    const-string v1, "\n  symbol="

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  successor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v1

    const-string v2, "\n]"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
