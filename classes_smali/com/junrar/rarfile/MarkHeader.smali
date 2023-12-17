.class public Lcom/junrar/rarfile/MarkHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "MarkHeader.java"


# instance fields
.field private logger:Lorg/apache/commons/logging/Log;

.field private oldFormat:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    const-class p1, Lcom/junrar/rarfile/MarkHeader;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/MarkHeader;->logger:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private isValid()Z
    .registers 3

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v0

    const/16 v1, 0x6152

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    sget-object v1, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getFlags()S

    move-result v0

    const/16 v1, 0x1a21

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method


# virtual methods
.method public isOldFormat()Z
    .registers 2

    iget-boolean v0, p0, Lcom/junrar/rarfile/MarkHeader;->oldFormat:Z

    return v0
.end method

.method public isSignature()Z
    .registers 11

    const/4 v0, 0x7

    new-array v1, v0, [B

    iget-short v2, p0, Lcom/junrar/rarfile/BaseBlock;->headCRC:S

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    iget-byte v2, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    iget-short v2, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    const/4 v5, 0x3

    invoke-static {v1, v5, v2}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    iget-short v2, p0, Lcom/junrar/rarfile/BaseBlock;->headerSize:S

    const/4 v6, 0x5

    invoke-static {v1, v6, v2}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    aget-byte v2, v1, v3

    const/4 v7, 0x1

    const/16 v8, 0x52

    if-ne v2, v8, :cond_5a

    aget-byte v2, v1, v7

    const/16 v8, 0x45

    if-ne v2, v8, :cond_37

    aget-byte v8, v1, v4

    const/16 v9, 0x7e

    if-ne v8, v9, :cond_37

    aget-byte v8, v1, v5

    const/16 v9, 0x5e

    if-ne v8, v9, :cond_37

    iput-boolean v7, p0, Lcom/junrar/rarfile/MarkHeader;->oldFormat:Z

    :goto_35
    move v3, v7

    goto :goto_5a

    :cond_37
    const/16 v8, 0x61

    if-ne v2, v8, :cond_5a

    aget-byte v2, v1, v4

    const/16 v4, 0x72

    if-ne v2, v4, :cond_5a

    aget-byte v2, v1, v5

    const/16 v4, 0x21

    if-ne v2, v4, :cond_5a

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_5a

    aget-byte v2, v1, v6

    if-ne v2, v0, :cond_5a

    const/4 v0, 0x6

    aget-byte v0, v1, v0

    if-nez v0, :cond_5a

    iput-boolean v3, p0, Lcom/junrar/rarfile/MarkHeader;->oldFormat:Z

    goto :goto_35

    :cond_5a
    :goto_5a
    return v3
.end method

.method public print()V
    .registers 4

    invoke-super {p0}, Lcom/junrar/rarfile/BaseBlock;->print()V

    iget-object v0, p0, Lcom/junrar/rarfile/MarkHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "valid: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/junrar/rarfile/MarkHeader;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method
