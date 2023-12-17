.class Lcom/junrar/unpack/ppm/RarMemBlock;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "RarMemBlock.java"


# static fields
.field public static final size:I = 0xc


# instance fields
.field private NU:I

.field private next:I

.field private prev:I

.field private stamp:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 4
    return-void
.end method

.method private getPrev()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    add-int/lit8 v1, v1, 0x8

    .line 9
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->prev:I

    .line 15
    :cond_e
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->prev:I

    .line 17
    return v0
.end method

.method private setNext(I)V
    .registers 4

    .line 2
    iput p1, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->next:I

    .line 3
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_d

    .line 4
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_d
    return-void
.end method

.method private setPrev(I)V
    .registers 4

    .line 2
    iput p1, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->prev:I

    .line 3
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_d

    .line 4
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_d
    return-void
.end method


# virtual methods
.method public getNU()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    add-int/lit8 v1, v1, 0x2

    .line 9
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 12
    move-result v0

    .line 13
    const v1, 0xffff

    .line 16
    and-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->NU:I

    .line 19
    :cond_12
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->NU:I

    .line 21
    return v0
.end method

.method public getNext()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    add-int/lit8 v1, v1, 0x4

    .line 9
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->next:I

    .line 15
    :cond_e
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->next:I

    .line 17
    return v0
.end method

.method public getStamp()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 10
    move-result v0

    .line 11
    const v1, 0xffff

    .line 14
    and-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->stamp:I

    .line 17
    :cond_10
    iget v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->stamp:I

    .line 19
    return v0
.end method

.method public insertAt(Lcom/junrar/unpack/ppm/RarMemBlock;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 3
    iget-object v1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 5
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 8
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 11
    move-result p1

    .line 12
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 15
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 22
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 29
    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    .line 32
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 35
    move-result p1

    .line 36
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 39
    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    .line 42
    return-void
.end method

.method public remove()V
    .registers 3

    .line 1
    new-instance v0, Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 3
    iget-object v1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 5
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 8
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 15
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 22
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 29
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    .line 32
    move-result v1

    .line 33
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 36
    return-void
.end method

.method public setNU(I)V
    .registers 4

    .line 1
    const v0, 0xffff

    .line 4
    and-int/2addr v0, p1

    .line 5
    iput v0, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->NU:I

    .line 7
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 15
    int-to-short p1, p1

    .line 16
    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 19
    :cond_12
    return-void
.end method

.method public setNext(Lcom/junrar/unpack/ppm/RarMemBlock;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    return-void
.end method

.method public setPrev(Lcom/junrar/unpack/ppm/RarMemBlock;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    return-void
.end method

.method public setStamp(I)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/junrar/unpack/ppm/RarMemBlock;->stamp:I

    .line 3
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 9
    int-to-short p1, p1

    .line 10
    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 13
    :cond_c
    return-void
.end method
