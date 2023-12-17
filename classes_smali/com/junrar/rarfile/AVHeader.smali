.class public Lcom/junrar/rarfile/AVHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "AVHeader.java"


# static fields
.field public static final avHeaderSize:I


# instance fields
.field private avInfoCRC:I

.field private avVersion:B

.field private method:B

.field private unpackVersion:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/rarfile/AVHeader;->avHeaderSize:I

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    iget-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->unpackVersion:B

    const/4 v0, 0x0

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->unpackVersion:B

    iget-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->method:B

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->method:B

    iget-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->avVersion:B

    const/4 v0, 0x2

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->avVersion:B

    const/4 p1, 0x3

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/AVHeader;->avInfoCRC:I

    return-void
.end method


# virtual methods
.method public getAvInfoCRC()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/AVHeader;->avInfoCRC:I

    return v0
.end method

.method public getAvVersion()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/AVHeader;->avVersion:B

    return v0
.end method

.method public getMethod()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/AVHeader;->method:B

    return v0
.end method

.method public getUnpackVersion()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/AVHeader;->unpackVersion:B

    return v0
.end method
