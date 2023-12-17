.class public Lcom/junrar/unpack/decode/AudioVariables;
.super Ljava/lang/Object;
.source "AudioVariables.java"


# instance fields
.field private byteCount:I

.field private d1:I

.field private d2:I

.field private d3:I

.field private d4:I

.field private dif:[I

.field private k1:I

.field private k2:I

.field private k3:I

.field private k4:I

.field private k5:I

.field private lastChar:I

.field private lastDelta:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0xb

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->dif:[I

    .line 10
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->byteCount:I

    .line 3
    return v0
.end method

.method public getD1()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->d1:I

    .line 3
    return v0
.end method

.method public getD2()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->d2:I

    .line 3
    return v0
.end method

.method public getD3()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->d3:I

    .line 3
    return v0
.end method

.method public getD4()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->d4:I

    .line 3
    return v0
.end method

.method public getDif()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->dif:[I

    .line 3
    return-object v0
.end method

.method public getK1()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->k1:I

    .line 3
    return v0
.end method

.method public getK2()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->k2:I

    .line 3
    return v0
.end method

.method public getK3()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->k3:I

    .line 3
    return v0
.end method

.method public getK4()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->k4:I

    .line 3
    return v0
.end method

.method public getK5()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->k5:I

    .line 3
    return v0
.end method

.method public getLastChar()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->lastChar:I

    .line 3
    return v0
.end method

.method public getLastDelta()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/AudioVariables;->lastDelta:I

    .line 3
    return v0
.end method

.method public setByteCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->byteCount:I

    .line 3
    return-void
.end method

.method public setD1(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->d1:I

    .line 3
    return-void
.end method

.method public setD2(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->d2:I

    .line 3
    return-void
.end method

.method public setD3(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->d3:I

    .line 3
    return-void
.end method

.method public setD4(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->d4:I

    .line 3
    return-void
.end method

.method public setDif([I)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->dif:[I

    .line 3
    return-void
.end method

.method public setK1(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->k1:I

    .line 3
    return-void
.end method

.method public setK2(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->k2:I

    .line 3
    return-void
.end method

.method public setK3(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->k3:I

    .line 3
    return-void
.end method

.method public setK4(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->k4:I

    .line 3
    return-void
.end method

.method public setK5(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->k5:I

    .line 3
    return-void
.end method

.method public setLastChar(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->lastChar:I

    .line 3
    return-void
.end method

.method public setLastDelta(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/AudioVariables;->lastDelta:I

    .line 3
    return-void
.end method
