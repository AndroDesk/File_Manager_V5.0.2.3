.class public Lcom/junrar/unpack/decode/LitDecode;
.super Lcom/junrar/unpack/decode/Decode;
.source "LitDecode.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/junrar/unpack/decode/Decode;-><init>()V

    .line 4
    const/16 v0, 0x12b

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/junrar/unpack/decode/Decode;->decodeNum:[I

    .line 10
    return-void
.end method
