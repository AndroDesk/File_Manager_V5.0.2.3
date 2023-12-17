.class public Lcom/junrar/unpack/vm/BitInput;
.super Ljava/lang/Object;
.source "BitInput.java"


# static fields
.field public static final MAX_SIZE:I = 0x8000


# instance fields
.field public inAddr:I

.field public inBit:I

.field public inBuf:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x8000

    .line 7
    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 11
    return-void
.end method


# virtual methods
.method public InitBitInput()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 4
    iput v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    .line 6
    return-void
.end method

.method public Overflow(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    const p1, 0x8000

    .line 7
    if-lt v0, p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method public addbits(I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    .line 3
    add-int/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 6
    shr-int/lit8 v1, p1, 0x3

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 11
    and-int/lit8 p1, p1, 0x7

    .line 13
    iput p1, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    .line 15
    return-void
.end method

.method public faddbits(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 4
    return-void
.end method

.method public fgetbits()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getInBuf()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 3
    return-object v0
.end method

.method public getbits()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 5
    aget-byte v2, v0, v1

    .line 7
    and-int/lit16 v2, v2, 0xff

    .line 9
    shl-int/lit8 v2, v2, 0x10

    .line 11
    add-int/lit8 v3, v1, 0x1

    .line 13
    aget-byte v3, v0, v3

    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 17
    shl-int/lit8 v3, v3, 0x8

    .line 19
    add-int/2addr v2, v3

    .line 20
    add-int/lit8 v1, v1, 0x2

    .line 22
    aget-byte v0, v0, v1

    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 26
    add-int/2addr v2, v0

    .line 27
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    .line 29
    rsub-int/lit8 v0, v0, 0x8

    .line 31
    ushr-int v0, v2, v0

    .line 33
    const v1, 0xffff

    .line 36
    and-int/2addr v0, v1

    .line 37
    return v0
.end method
