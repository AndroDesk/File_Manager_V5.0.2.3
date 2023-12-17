.class Lcom/junrar/unpack/ppm/SEE2Context;
.super Ljava/lang/Object;
.source "SEE2Context.java"


# static fields
.field private static final size:I = 0x4


# instance fields
.field private count:I

.field private shift:I

.field private summ:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSumm()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 3
    return v0
.end method

.method private setSumm(I)V
    .registers 3

    .line 1
    const v0, 0xffff

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 7
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 3
    return v0
.end method

.method public getMean()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 5
    ushr-int v1, v0, v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 10
    if-nez v1, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public incSumm(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SEE2Context;->getSumm()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SEE2Context;->setSumm(I)V

    .line 9
    return-void
.end method

.method public init(I)V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 4
    shl-int/2addr p1, v0

    .line 5
    const v0, 0xffff

    .line 8
    and-int/2addr p1, v0

    .line 9
    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 11
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 14
    return-void
.end method

.method public setCount(I)V
    .registers 2

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 5
    return-void
.end method

.method public setShift(I)V
    .registers 2

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "SEE2Context[\n  size=4\n  summ="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "\n  shift="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "\n  count="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 29
    const-string v2, "\n]"

    .line 31
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public update()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 3
    const/4 v1, 0x7

    .line 4
    if-ge v0, v1, :cond_1b

    .line 6
    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 10
    iput v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 12
    if-nez v1, :cond_1b

    .line 14
    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 16
    add-int/2addr v1, v1

    .line 17
    iput v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 19
    const/4 v1, 0x3

    .line 20
    add-int/lit8 v2, v0, 0x1

    .line 22
    iput v2, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 24
    shl-int v0, v1, v0

    .line 26
    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 28
    :cond_1b
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 30
    const v1, 0xffff

    .line 33
    and-int/2addr v0, v1

    .line 34
    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    .line 36
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 38
    and-int/lit16 v0, v0, 0xff

    .line 40
    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    .line 42
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 44
    and-int/lit16 v0, v0, 0xff

    .line 46
    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    .line 48
    return-void
.end method
