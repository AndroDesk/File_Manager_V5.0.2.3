.class public Lcom/junrar/rarfile/CommentHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "CommentHeader.java"


# static fields
.field public static final commentHeaderSize:S = 0x6s


# instance fields
.field private commCRC:S

.field private unpMethod:B

.field private unpSize:S

.field private unpVersion:B


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 8
    move-result p1

    .line 9
    iput-short p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpSize:S

    .line 11
    iget-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpVersion:B

    .line 13
    const/4 v0, 0x2

    .line 14
    aget-byte v0, p2, v0

    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 18
    or-int/2addr p1, v0

    .line 19
    int-to-byte p1, p1

    .line 20
    iput-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpVersion:B

    .line 22
    iget-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpMethod:B

    .line 24
    const/4 v0, 0x3

    .line 25
    aget-byte v0, p2, v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 29
    or-int/2addr p1, v0

    .line 30
    int-to-byte p1, p1

    .line 31
    iput-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpMethod:B

    .line 33
    const/4 p1, 0x4

    .line 34
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 37
    move-result p1

    .line 38
    iput-short p1, p0, Lcom/junrar/rarfile/CommentHeader;->commCRC:S

    .line 40
    return-void
.end method


# virtual methods
.method public getCommCRC()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/CommentHeader;->commCRC:S

    .line 3
    return v0
.end method

.method public getUnpMethod()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/CommentHeader;->unpMethod:B

    .line 3
    return v0
.end method

.method public getUnpSize()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/CommentHeader;->unpSize:S

    .line 3
    return v0
.end method

.method public getUnpVersion()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/CommentHeader;->unpVersion:B

    .line 3
    return v0
.end method
