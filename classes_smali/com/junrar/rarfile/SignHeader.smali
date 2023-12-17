.class public Lcom/junrar/rarfile/SignHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "SignHeader.java"


# static fields
.field public static final signHeaderSize:S = 0x8s


# instance fields
.field private arcNameSize:S

.field private creationTime:I

.field private userNameSize:S


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/junrar/rarfile/SignHeader;->creationTime:I

    .line 11
    const/4 p1, 0x4

    .line 12
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 15
    move-result p1

    .line 16
    iput-short p1, p0, Lcom/junrar/rarfile/SignHeader;->arcNameSize:S

    .line 18
    const/4 p1, 0x6

    .line 19
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 22
    move-result p1

    .line 23
    iput-short p1, p0, Lcom/junrar/rarfile/SignHeader;->userNameSize:S

    .line 25
    return-void
.end method


# virtual methods
.method public getArcNameSize()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/SignHeader;->arcNameSize:S

    .line 3
    return v0
.end method

.method public getCreationTime()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/SignHeader;->creationTime:I

    .line 3
    return v0
.end method

.method public getUserNameSize()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/SignHeader;->userNameSize:S

    .line 3
    return v0
.end method
