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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/SignHeader;->creationTime:I

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/SignHeader;->arcNameSize:S

    const/4 p1, 0x6

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/SignHeader;->userNameSize:S

    return-void
.end method


# virtual methods
.method public getArcNameSize()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/SignHeader;->arcNameSize:S

    return v0
.end method

.method public getCreationTime()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/SignHeader;->creationTime:I

    return v0
.end method

.method public getUserNameSize()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/SignHeader;->userNameSize:S

    return v0
.end method
