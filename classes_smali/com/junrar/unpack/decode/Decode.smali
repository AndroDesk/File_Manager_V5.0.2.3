.class public Lcom/junrar/unpack/decode/Decode;
.super Ljava/lang/Object;
.source "Decode.java"


# instance fields
.field private final decodeLen:[I

.field public decodeNum:[I

.field private final decodePos:[I

.field private maxNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/decode/Decode;->decodeLen:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodePos:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeNum:[I

    return-void
.end method


# virtual methods
.method public getDecodeLen()[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeLen:[I

    return-object v0
.end method

.method public getDecodeNum()[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeNum:[I

    return-object v0
.end method

.method public getDecodePos()[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodePos:[I

    return-object v0
.end method

.method public getMaxNum()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/decode/Decode;->maxNum:I

    return v0
.end method

.method public setMaxNum(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/decode/Decode;->maxNum:I

    return-void
.end method
