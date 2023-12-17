.class public Lcom/junrar/rarfile/AVHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "AVHeader.java"


# static fields
.field public static final avHeaderSize:I = 0x7


# instance fields
.field private avInfoCRC:I

.field private avVersion:B

.field private method:B

.field private unpackVersion:B


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 4
    iget-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->unpackVersion:B

    .line 6
    const/4 v0, 0x0

    .line 7
    aget-byte v0, p2, v0

    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 11
    or-int/2addr p1, v0

    .line 12
    int-to-byte p1, p1

    .line 13
    iput-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->unpackVersion:B

    .line 15
    iget-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->method:B

    .line 17
    const/4 v0, 0x1

    .line 18
    aget-byte v0, p2, v0

    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 22
    or-int/2addr p1, v0

    .line 23
    int-to-byte p1, p1

    .line 24
    iput-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->method:B

    .line 26
    iget-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->avVersion:B

    .line 28
    const/4 v0, 0x2

    .line 29
    aget-byte v0, p2, v0

    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 33
    or-int/2addr p1, v0

    .line 34
    int-to-byte p1, p1

    .line 35
    iput-byte p1, p0, Lcom/junrar/rarfile/AVHeader;->avVersion:B

    .line 37
    const/4 p1, 0x3

    .line 38
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/junrar/rarfile/AVHeader;->avInfoCRC:I

    .line 44
    return-void
.end method


# virtual methods
.method public getAvInfoCRC()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/AVHeader;->avInfoCRC:I

    .line 3
    return v0
.end method

.method public getAvVersion()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/AVHeader;->avVersion:B

    .line 3
    return v0
.end method

.method public getMethod()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/AVHeader;->method:B

    .line 3
    return v0
.end method

.method public getUnpackVersion()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/AVHeader;->unpackVersion:B

    .line 3
    return v0
.end method
