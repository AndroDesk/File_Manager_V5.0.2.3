.class public Lcom/junrar/rarfile/EndArcHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "EndArcHeader.java"


# static fields
.field private static final EARC_DATACRC:S = 0x2s

.field private static final EARC_NEXT_VOLUME:S = 0x1s

.field private static final EARC_REVSPACE:S = 0x4s

.field private static final EARC_VOLNUMBER:S = 0x8s

.field public static final endArcArchiveDataCrcSize:S = 0x4s

.field private static final endArcHeaderSize:S = 0x6s

.field public static final endArcVolumeNumberSize:S = 0x2s


# instance fields
.field private archiveDataCRC:I

.field private volumeNumber:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/EndArcHeader;->archiveDataCRC:I

    const/4 v0, 0x4

    :cond_11
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/EndArcHeader;->volumeNumber:S

    :cond_1d
    return-void
.end method


# virtual methods
.method public getArchiveDataCRC()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/EndArcHeader;->archiveDataCRC:I

    return v0
.end method

.method public getVolumeNumber()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/EndArcHeader;->volumeNumber:S

    return v0
.end method
