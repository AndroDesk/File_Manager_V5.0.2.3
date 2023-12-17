.class public Lcom/junrar/rarfile/ProtectHeader;
.super Lcom/junrar/rarfile/BlockHeader;
.source "ProtectHeader.java"


# static fields
.field public static final protectHeaderSize:I


# instance fields
.field private mark:B

.field private recSectors:S

.field private totalBlocks:I

.field private version:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/rarfile/ProtectHeader;->protectHeaderSize:I

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BlockHeader;[B)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;)V

    iget-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->version:B

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->version:B

    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/ProtectHeader;->recSectors:S

    const/4 p1, 0x2

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/ProtectHeader;->totalBlocks:I

    iget-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->mark:B

    const/4 v0, 0x6

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/ProtectHeader;->mark:B

    return-void
.end method


# virtual methods
.method public getMark()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/ProtectHeader;->mark:B

    return v0
.end method

.method public getRecSectors()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/ProtectHeader;->recSectors:S

    return v0
.end method

.method public getTotalBlocks()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/ProtectHeader;->totalBlocks:I

    return v0
.end method

.method public getVersion()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/ProtectHeader;->version:B

    return v0
.end method
