.class Lcom/junrar/unpack/ppm/SEE2Context;
.super Ljava/lang/Object;
.source "SEE2Context.java"


# static fields
.field private static final size:I


# instance fields
.field private count:I

.field private shift:I

.field private summ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/SEE2Context;->size:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSumm()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    return v0
.end method

.method private setSumm(I)V
    .registers 3

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    return v0
.end method

.method public getMean()I
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    ushr-int v1, v0, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    add-int/2addr v1, v0

    return v1
.end method

.method public incSumm(I)V
    .registers 3

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SEE2Context;->getSumm()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SEE2Context;->setSumm(I)V

    return-void
.end method

.method public init(I)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    shl-int/2addr p1, v0

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    return-void
.end method

.method public setCount(I)V
    .registers 2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    return-void
.end method

.method public setShift(I)V
    .registers 2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "SEE2Context[\n  size=4\n  summ="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  shift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    const-string v2, "\n]"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .registers 4

    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1b

    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    if-nez v1, :cond_1b

    iget v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    add-int/2addr v1, v1

    iput v1, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    const/4 v1, 0x3

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    shl-int v0, v1, v0

    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    :cond_1b
    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->summ:I

    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->count:I

    iget v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/junrar/unpack/ppm/SEE2Context;->shift:I

    return-void
.end method
