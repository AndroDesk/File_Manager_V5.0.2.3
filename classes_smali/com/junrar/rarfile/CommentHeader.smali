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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpSize:S

    iget-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpVersion:B

    const/4 v0, 0x2

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpVersion:B

    iget-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpMethod:B

    const/4 v0, 0x3

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/CommentHeader;->unpMethod:B

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/CommentHeader;->commCRC:S

    return-void
.end method


# virtual methods
.method public getCommCRC()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/CommentHeader;->commCRC:S

    return v0
.end method

.method public getUnpMethod()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/CommentHeader;->unpMethod:B

    return v0
.end method

.method public getUnpSize()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/CommentHeader;->unpSize:S

    return v0
.end method

.method public getUnpVersion()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/CommentHeader;->unpVersion:B

    return v0
.end method
