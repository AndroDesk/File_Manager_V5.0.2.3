.class public Lcom/junrar/unpack/vm/BitInput;
.super Ljava/lang/Object;
.source "BitInput.java"


# static fields
.field public static final MAX_SIZE:I


# instance fields
.field public inAddr:I

.field public inBit:I

.field public inBuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x9ad96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/vm/BitInput;->MAX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    return-void
.end method


# virtual methods
.method public InitBitInput()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iput v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    return-void
.end method

.method public Overflow(I)Z
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    add-int/2addr v0, p1

    const p1, 0x8000

    if-lt v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public addbits(I)V
    .registers 4

    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    shr-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    and-int/lit8 p1, p1, 0x7

    iput p1, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    return-void
.end method

.method public faddbits(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    return-void
.end method

.method public fgetbits()I
    .registers 2

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v0

    return v0
.end method

.method public getInBuf()[B
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    return-object v0
.end method

.method public getbits()I
    .registers 5

    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    rsub-int/lit8 v0, v0, 0x8

    ushr-int v0, v2, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
