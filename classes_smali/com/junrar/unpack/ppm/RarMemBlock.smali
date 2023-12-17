.class Lcom/junrar/unpack/ppm/RarMemBlock;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "RarMemBlock.java"


# static fields
.field public static final size:I


# instance fields
.field private NU:I

.field private next:I

.field private prev:I

.field private stamp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/RarMemBlock;->size:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    return-void
.end method

.method private getPrev()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->prev:I

    :cond_e
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->prev:I

    return v0
.end method

.method private setNext(I)V
    .registers 4

    iput p1, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->next:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_d
    return-void
.end method

.method private setPrev(I)V
    .registers 4

    iput p1, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->prev:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_d
    return-void
.end method


# virtual methods
.method public getNU()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->NU:I

    :cond_12
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->NU:I

    return v0
.end method

.method public getNext()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->next:I

    :cond_e
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->next:I

    return v0
.end method

.method public getStamp()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->stamp:I

    :cond_10
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->stamp:I

    return v0
.end method

.method public insertAt(Lcom/junrar/unpack/ppm/RarMemBlock;)V
    .registers 4

    new-instance v0, Lcom/junrar/unpack/ppm/RarMemBlock;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    return-void
.end method

.method public remove()V
    .registers 3

    new-instance v0, Lcom/junrar/unpack/ppm/RarMemBlock;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    return-void
.end method

.method public setNU(I)V
    .registers 4

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->NU:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x2

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    :cond_12
    return-void
.end method

.method public setNext(Lcom/junrar/unpack/ppm/RarMemBlock;)V
    .registers 2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    return-void
.end method

.method public setPrev(Lcom/junrar/unpack/ppm/RarMemBlock;)V
    .registers 2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    return-void
.end method

.method public setStamp(I)V
    .registers 4

    iput p1, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->stamp:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_c

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    :cond_c
    return-void
.end method
