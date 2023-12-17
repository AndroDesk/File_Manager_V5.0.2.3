.class public Lcom/junrar/unpack/decode/BitDecode;
.super Lcom/junrar/unpack/decode/Decode;
.source "BitDecode.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/junrar/unpack/decode/Decode;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeNum:[I

    return-void
.end method
