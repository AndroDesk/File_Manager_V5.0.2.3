.class public Lcom/junrar/Archive;
.super Ljava/lang/Object;
.source "Archive.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private currentHeaderIndex:I

.field private final dataIO:Lcom/junrar/unpack/ComprDataIO;

.field private file:Ljava/io/File;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/rarfile/BaseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private markHead:Lcom/junrar/rarfile/MarkHeader;

.field private newMhd:Lcom/junrar/rarfile/MainHeader;

.field private rof:Lcom/junrar/io/IReadOnlyAccess;

.field private totalPackedRead:J

.field private totalPackedSize:J

.field private unpack:Lcom/junrar/unpack/Unpack;

.field private final unrarCallback:Lcom/junrar/UnrarCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/junrar/Archive;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/junrar/Archive;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/junrar/Archive;-><init>(Ljava/io/File;Lcom/junrar/UnrarCallback;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/junrar/UnrarCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/junrar/Archive;->setFile(Ljava/io/File;)V

    iput-object p2, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    new-instance p1, Lcom/junrar/unpack/ComprDataIO;

    invoke-direct {p1, p0}, Lcom/junrar/unpack/ComprDataIO;-><init>(Lcom/junrar/Archive;)V

    iput-object p1, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    return-void
.end method

.method private doExtractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .registers 5

    iget-object v0, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ComprDataIO;->init(Ljava/io/OutputStream;)V

    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {p2, p1}, Lcom/junrar/unpack/ComprDataIO;->init(Lcom/junrar/rarfile/FileHeader;)V

    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {p0}, Lcom/junrar/Archive;->isOldFormat()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x0

    goto :goto_17

    :cond_15
    const-wide/16 v0, -0x1

    :goto_17
    invoke-virtual {p2, v0, v1}, Lcom/junrar/unpack/ComprDataIO;->setUnpFileCRC(J)V

    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    if-nez p2, :cond_27

    new-instance p2, Lcom/junrar/unpack/Unpack;

    iget-object v0, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-direct {p2, v0}, Lcom/junrar/unpack/Unpack;-><init>(Lcom/junrar/unpack/ComprDataIO;)V

    iput-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    :cond_27
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isSolid()Z

    move-result p2

    if-nez p2, :cond_33

    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/junrar/unpack/Unpack;->init([B)V

    :cond_33
    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/junrar/unpack/Unpack;->setDestSize(J)V

    :try_start_3c
    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v0

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isSolid()Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/junrar/unpack/Unpack;->doUnpack(IZ)V

    iget-object p1, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {p1}, Lcom/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/junrar/rarfile/FileHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result p2

    if-eqz p2, :cond_5d

    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {p2}, Lcom/junrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v0

    :goto_5b
    not-long v0, v0

    goto :goto_64

    :cond_5d
    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {p2}, Lcom/junrar/unpack/ComprDataIO;->getUnpFileCRC()J

    move-result-wide v0

    goto :goto_5b

    :goto_64
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result p1

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_6e

    return-void

    :cond_6e
    new-instance p1, Lcom/junrar/exception/RarException;

    sget-object p2, Lcom/junrar/exception/RarException$RarExceptionType;->crcError:Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-direct {p1, p2}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    throw p1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_76} :catch_76

    :catch_76
    move-exception p1

    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    invoke-virtual {p2}, Lcom/junrar/unpack/Unpack;->cleanUp()V

    instance-of p2, p1, Lcom/junrar/exception/RarException;

    if-eqz p2, :cond_83

    check-cast p1, Lcom/junrar/exception/RarException;

    throw p1

    :cond_83
    new-instance p2, Lcom/junrar/exception/RarException;

    invoke-direct {p2, p1}, Lcom/junrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method private readHeaders()V
    .registers 13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    iput-object v0, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    iget-object v1, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/junrar/Archive;->currentHeaderIndex:I

    iget-object v2, p0, Lcom/junrar/Archive;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_13
    const/4 v4, 0x7

    new-array v5, v4, [B

    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v6}, Lcom/junrar/io/IReadOnlyAccess;->getPosition()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-ltz v8, :cond_21

    goto :goto_29

    :cond_21
    iget-object v8, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v8, v5, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v8

    if-nez v8, :cond_2a

    :goto_29
    return-void

    :cond_2a
    new-instance v8, Lcom/junrar/rarfile/BaseBlock;

    invoke-direct {v8, v5}, Lcom/junrar/rarfile/BaseBlock;-><init>([B)V

    invoke-virtual {v8, v6, v7}, Lcom/junrar/rarfile/BaseBlock;->setPositionInFile(J)V

    sget-object v5, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    const/4 v7, 0x6

    const/16 v9, 0x8

    const/4 v10, 0x4

    packed-switch v6, :pswitch_data_1f2

    new-array v6, v10, [B

    iget-object v11, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v11, v6, v10}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v11, Lcom/junrar/rarfile/BlockHeader;

    invoke-direct {v11, v8, v6}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    invoke-virtual {v11}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    goto/16 :goto_117

    :pswitch_5d  #0xa
    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    move-result v2

    if-eqz v2, :cond_64

    move v1, v10

    :cond_64
    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    move-result v2

    if-eqz v2, :cond_6c

    add-int/lit8 v1, v1, 0x2

    :cond_6c
    if-lez v1, :cond_7b

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v2, v0, v1}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v1, Lcom/junrar/rarfile/EndArcHeader;

    invoke-direct {v1, v8, v0}, Lcom/junrar/rarfile/EndArcHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    goto :goto_80

    :cond_7b
    new-instance v1, Lcom/junrar/rarfile/EndArcHeader;

    invoke-direct {v1, v8, v0}, Lcom/junrar/rarfile/EndArcHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    :goto_80
    iget-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_86  #0x9
    new-array v4, v7, [B

    iget-object v5, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v5, v4, v7}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v5, Lcom/junrar/rarfile/CommentHeader;

    invoke-direct {v5, v8, v4}, Lcom/junrar/rarfile/CommentHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v4

    int-to-long v4, v4

    add-long/2addr v6, v4

    iget-object v4, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v4, v6, v7}, Lcom/junrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_13

    :pswitch_a8  #0x8
    new-array v5, v4, [B

    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v6, v5, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v4, Lcom/junrar/rarfile/AVHeader;

    invoke-direct {v4, v8, v5}, Lcom/junrar/rarfile/AVHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :pswitch_bb  #0x7
    new-array v4, v9, [B

    iget-object v5, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v5, v4, v9}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v5, Lcom/junrar/rarfile/SignHeader;

    invoke-direct {v5, v8, v4}, Lcom/junrar/rarfile/SignHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :pswitch_ce  #0x6
    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    move-result v5

    if-eqz v5, :cond_d5

    goto :goto_d6

    :cond_d5
    move v4, v7

    :goto_d6
    new-array v5, v4, [B

    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v6, v5, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v4, Lcom/junrar/rarfile/MainHeader;

    invoke-direct {v4, v8, v5}, Lcom/junrar/rarfile/MainHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v4, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    invoke-virtual {v4}, Lcom/junrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v4

    if-nez v4, :cond_f1

    goto/16 :goto_13

    :cond_f1
    new-instance v0, Lcom/junrar/exception/RarException;

    sget-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    throw v0

    :pswitch_f9  #0x5
    new-instance v4, Lcom/junrar/rarfile/MarkHeader;

    invoke-direct {v4, v8}, Lcom/junrar/rarfile/MarkHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    iput-object v4, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    invoke-virtual {v4}, Lcom/junrar/rarfile/MarkHeader;->isSignature()Z

    move-result v4

    if-eqz v4, :cond_10f

    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    iget-object v5, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_10f
    new-instance v0, Lcom/junrar/exception/RarException;

    sget-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->badRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    throw v0

    :goto_117
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1c5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1c5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1a2

    if-ne v5, v10, :cond_193

    new-array v4, v8, [B

    iget-object v5, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v5, v4, v8}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v5, Lcom/junrar/rarfile/SubBlockHeader;

    invoke-direct {v5, v11, v4}, Lcom/junrar/rarfile/SubBlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;[B)V

    invoke-virtual {v5}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    sget-object v4, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    invoke-virtual {v5}, Lcom/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/junrar/rarfile/SubBlockHeaderType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    if-eq v4, v6, :cond_17d

    if-eq v4, v8, :cond_165

    if-eq v4, v7, :cond_145

    goto/16 :goto_13

    :cond_145
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v4

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v4, v4, -0x3

    new-array v6, v4, [B

    iget-object v7, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v7, v6, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v4, Lcom/junrar/rarfile/UnixOwnersHeader;

    invoke-direct {v4, v5, v6}, Lcom/junrar/rarfile/UnixOwnersHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V

    invoke-virtual {v4}, Lcom/junrar/rarfile/UnixOwnersHeader;->print()V

    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_165
    const/16 v4, 0xa

    new-array v6, v4, [B

    iget-object v7, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v7, v6, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v4, Lcom/junrar/rarfile/EAHeader;

    invoke-direct {v4, v5, v6}, Lcom/junrar/rarfile/EAHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V

    invoke-virtual {v4}, Lcom/junrar/rarfile/EAHeader;->print()V

    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_17d
    new-array v4, v9, [B

    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v6, v4, v9}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v6, Lcom/junrar/rarfile/MacInfoHeader;

    invoke-direct {v6, v5, v4}, Lcom/junrar/rarfile/MacInfoHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V

    invoke-virtual {v6}, Lcom/junrar/rarfile/MacInfoHeader;->print()V

    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_193
    sget-object v0, Lcom/junrar/Archive;->logger:Ljava/util/logging/Logger;

    const-string v1, "Unknown Header"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lcom/junrar/exception/RarException;

    sget-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->notRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_1a2
    invoke-virtual {v11}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v10

    new-array v4, v5, [B

    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v6, v4, v5}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v5, Lcom/junrar/rarfile/ProtectHeader;

    invoke-direct {v5, v11, v4}, Lcom/junrar/rarfile/ProtectHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;[B)V

    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v4

    int-to-long v4, v4

    add-long/2addr v6, v4

    iget-object v4, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v4, v6, v7}, Lcom/junrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_13

    :cond_1c5
    invoke-virtual {v11}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v10

    new-array v4, v5, [B

    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v6, v4, v5}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    new-instance v5, Lcom/junrar/rarfile/FileHeader;

    invoke-direct {v5, v11, v4}, Lcom/junrar/rarfile/FileHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;[B)V

    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    invoke-virtual {v5}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v6, v4, v5}, Lcom/junrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_13

    :pswitch_data_1f2
    .packed-switch 0x5
        :pswitch_f9  #00000005
        :pswitch_ce  #00000006
        :pswitch_bb  #00000007
        :pswitch_a8  #00000008
        :pswitch_86  #00000009
        :pswitch_5d  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public bytesReadRead(I)V
    .registers 6

    if-lez p1, :cond_11

    iget-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    iget-object p1, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    if-eqz p1, :cond_11

    iget-wide v2, p0, Lcom/junrar/Archive;->totalPackedSize:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    :cond_11
    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/junrar/io/IReadOnlyAccess;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    :cond_a
    iget-object v0, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/junrar/unpack/Unpack;->cleanUp()V

    :cond_11
    return-void
.end method

.method public extractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/junrar/Archive;->doExtractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    instance-of p2, p1, Lcom/junrar/exception/RarException;

    if-eqz p2, :cond_14

    check-cast p1, Lcom/junrar/exception/RarException;

    throw p1

    :cond_14
    new-instance p2, Lcom/junrar/exception/RarException;

    invoke-direct {p2, p1}, Lcom/junrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_1a
    new-instance p1, Lcom/junrar/exception/RarException;

    sget-object p2, Lcom/junrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-direct {p1, p2}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    throw p1
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/junrar/Archive;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileHeaders()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/junrar/rarfile/FileHeader;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/junrar/rarfile/BaseBlock;

    invoke-virtual {v2}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v3

    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    check-cast v2, Lcom/junrar/rarfile/FileHeader;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_29
    return-object v0
.end method

.method public getMainHeader()Lcom/junrar/rarfile/MainHeader;
    .registers 2

    iget-object v0, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    return-object v0
.end method

.method public getRof()Lcom/junrar/io/IReadOnlyAccess;
    .registers 2

    iget-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    return-object v0
.end method

.method public getUnrarCallback()Lcom/junrar/UnrarCallback;
    .registers 2

    iget-object v0, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    return-object v0
.end method

.method public isEncrypted()Z
    .registers 3

    iget-object v0, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/junrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainheader is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOldFormat()Z
    .registers 2

    iget-object v0, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Lcom/junrar/rarfile/MarkHeader;->isOldFormat()Z

    move-result v0

    return v0
.end method

.method public nextFileHeader()Lcom/junrar/rarfile/FileHeader;
    .registers 5

    iget-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_6
    iget v1, p0, Lcom/junrar/Archive;->currentHeaderIndex:I

    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/junrar/Archive;->currentHeaderIndex:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/junrar/rarfile/BaseBlock;

    invoke-virtual {v1}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_6

    check-cast v1, Lcom/junrar/rarfile/FileHeader;

    return-object v1

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 7

    iput-object p1, p0, Lcom/junrar/Archive;->file:Ljava/io/File;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/junrar/Archive;->totalPackedSize:J

    iput-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    invoke-virtual {p0}, Lcom/junrar/Archive;->close()V

    new-instance v0, Lcom/junrar/io/ReadOnlyAccessFile;

    invoke-direct {v0, p1}, Lcom/junrar/io/ReadOnlyAccessFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    :try_start_12
    invoke-direct {p0}, Lcom/junrar/Archive;->readHeaders()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_20

    :catch_16
    move-exception p1

    sget-object v0, Lcom/junrar/Archive;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception in archive constructor maybe file is encrypted or currupt"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_20
    iget-object p1, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_26
    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/junrar/rarfile/BaseBlock;

    invoke-virtual {v0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v1

    sget-object v2, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    if-ne v1, v2, :cond_26

    iget-wide v1, p0, Lcom/junrar/Archive;->totalPackedSize:J

    check-cast v0, Lcom/junrar/rarfile/FileHeader;

    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/junrar/Archive;->totalPackedSize:J

    goto :goto_26

    :cond_46
    iget-object p1, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    if-eqz p1, :cond_51

    iget-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    iget-wide v2, p0, Lcom/junrar/Archive;->totalPackedSize:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    :cond_51
    return-void
.end method
