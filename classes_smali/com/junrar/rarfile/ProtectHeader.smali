.class public Lcom/junrar/rarfile/ProtectHeader;
.super Lcom/junrar/rarfile/BlockHeader;
.source "ProtectHeader.java"


# static fields
.field public static final protectHeaderSize:I = 0x8


# instance fields
.field private mark:B

.field private recSectors:S

.field private totalBlocks:I

.field private version:B


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/BlockHeader;[B)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;)V

    .line 4
    iget-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->version:B

    .line 6
    const/4 v0, 0x0

    .line 7
    aget-byte v1, p2, v0

    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 11
    or-int/2addr p1, v1

    .line 12
    int-to-byte p1, p1

    .line 13
    iput-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->version:B

    .line 15
    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 18
    move-result p1

    .line 19
    iput-short p1, p0, Lcom/junrar/rarfile/ProtectHeader;->recSectors:S

    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/junrar/rarfile/ProtectHeader;->totalBlocks:I

    .line 28
    iget-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->mark:B

    .line 30
    const/4 v0, 0x6

    .line 31
    aget-byte p2, p2, v0

    .line 33
    and-int/lit16 p2, p2, 0xff

    .line 35
    or-int/2addr p1, p2

    .line 36
    int-to-byte p1, p1

    .line 37
    iput-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->mark:B

    .line 39
    return-void
.end method


# virtual methods
.method public getMark()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/ProtectHeader;->mark:B

    .line 3
    return v0
.end method

.method public getRecSectors()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/ProtectHeader;->recSectors:S

    .line 3
    return v0
.end method

.method public getTotalBlocks()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/ProtectHeader;->totalBlocks:I

    .line 3
    return v0
.end method

.method public getVersion()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/ProtectHeader;->version:B

    .line 3
    return v0
.end method
