.class public Lcom/junrar/unpack/decode/Decode;
.super Ljava/lang/Object;
.source "Decode.java"


# instance fields
.field private final decodeLen:[I

.field public decodeNum:[I

.field private final decodePos:[I

.field private maxNum:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lcom/junrar/unpack/decode/Decode;->decodeLen:[I

    .line 10
    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodePos:[I

    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [I

    .line 17
    iput-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeNum:[I

    .line 19
    return-void
.end method


# virtual methods
.method public getDecodeLen()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeLen:[I

    .line 3
    return-object v0
.end method

.method public getDecodeNum()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeNum:[I

    .line 3
    return-object v0
.end method

.method public getDecodePos()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodePos:[I

    .line 3
    return-object v0
.end method

.method public getMaxNum()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/decode/Decode;->maxNum:I

    .line 3
    return v0
.end method

.method public setMaxNum(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/decode/Decode;->maxNum:I

    .line 3
    return-void
.end method
