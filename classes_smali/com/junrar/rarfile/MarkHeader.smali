.class public Lcom/junrar/rarfile/MarkHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "MarkHeader.java"


# instance fields
.field private logger:Lorg/apache/commons/logging/Log;

.field private oldFormat:Z


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 4
    const-class p1, Lcom/junrar/rarfile/MarkHeader;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/junrar/rarfile/MarkHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 16
    return-void
.end method

.method private isValid()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeadCRC()S

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x6152

    .line 7
    if-ne v0, v1, :cond_21

    .line 9
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 15
    if-ne v0, v1, :cond_21

    .line 17
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getFlags()S

    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x1a21

    .line 23
    if-ne v0, v1, :cond_21

    .line 25
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x7

    .line 30
    if-ne v0, v1, :cond_21

    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    :goto_22
    return v0
.end method


# virtual methods
.method public isOldFormat()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/junrar/rarfile/MarkHeader;->oldFormat:Z

    .line 3
    return v0
.end method

.method public isSignature()Z
    .registers 11

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [B

    .line 4
    iget-short v2, p0, Lcom/junrar/rarfile/BaseBlock;->headCRC:S

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v3, v2}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 10
    iget-byte v2, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    .line 12
    const/4 v4, 0x2

    .line 13
    aput-byte v2, v1, v4

    .line 15
    iget-short v2, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 17
    const/4 v5, 0x3

    .line 18
    invoke-static {v1, v5, v2}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 21
    iget-short v2, p0, Lcom/junrar/rarfile/BaseBlock;->headerSize:S

    .line 23
    const/4 v6, 0x5

    .line 24
    invoke-static {v1, v6, v2}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 27
    aget-byte v2, v1, v3

    .line 29
    const/4 v7, 0x1

    .line 30
    const/16 v8, 0x52

    .line 32
    if-ne v2, v8, :cond_5a

    .line 34
    aget-byte v2, v1, v7

    .line 36
    const/16 v8, 0x45

    .line 38
    if-ne v2, v8, :cond_37

    .line 40
    aget-byte v8, v1, v4

    .line 42
    const/16 v9, 0x7e

    .line 44
    if-ne v8, v9, :cond_37

    .line 46
    aget-byte v8, v1, v5

    .line 48
    const/16 v9, 0x5e

    .line 50
    if-ne v8, v9, :cond_37

    .line 52
    iput-boolean v7, p0, Lcom/junrar/rarfile/MarkHeader;->oldFormat:Z

    .line 54
    :goto_35
    move v3, v7

    .line 55
    goto :goto_5a

    .line 56
    :cond_37
    const/16 v8, 0x61

    .line 58
    if-ne v2, v8, :cond_5a

    .line 60
    aget-byte v2, v1, v4

    .line 62
    const/16 v4, 0x72

    .line 64
    if-ne v2, v4, :cond_5a

    .line 66
    aget-byte v2, v1, v5

    .line 68
    const/16 v4, 0x21

    .line 70
    if-ne v2, v4, :cond_5a

    .line 72
    const/4 v2, 0x4

    .line 73
    aget-byte v2, v1, v2

    .line 75
    const/16 v4, 0x1a

    .line 77
    if-ne v2, v4, :cond_5a

    .line 79
    aget-byte v2, v1, v6

    .line 81
    if-ne v2, v0, :cond_5a

    .line 83
    const/4 v0, 0x6

    .line 84
    aget-byte v0, v1, v0

    .line 86
    if-nez v0, :cond_5a

    .line 88
    iput-boolean v3, p0, Lcom/junrar/rarfile/MarkHeader;->oldFormat:Z

    .line 90
    goto :goto_35

    .line 91
    :cond_5a
    :goto_5a
    return v3
.end method

.method public print()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/junrar/rarfile/BaseBlock;->print()V

    .line 4
    iget-object v0, p0, Lcom/junrar/rarfile/MarkHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 6
    const-string v1, "valid: "

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0}, Lcom/junrar/rarfile/MarkHeader;->isValid()Z

    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
