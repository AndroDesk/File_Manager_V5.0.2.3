.class public final Lcom/junrar/unpack/Unpack;
.super Lcom/junrar/unpack/Unpack20;
.source "Unpack.java"


# static fields
.field private static final DBitLengthCounts:[I


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private lastFilter:I

.field private lowDistRepCount:I

.field private oldFilterLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ppm:Lcom/junrar/unpack/ppm/ModelPPM;

.field private ppmError:Z

.field private ppmEscChar:I

.field private prevLowDist:I

.field private prgStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private rarVM:Lcom/junrar/unpack/vm/RarVM;

.field private tablesRead:Z

.field private unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

.field private unpOldTable:[B

.field private writtenFileSize:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/junrar/unpack/Unpack;->DBitLengthCounts:[I

    return-void

    :array_a
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0xe
        0x0
        0xc
    .end array-data
.end method

.method public constructor <init>(Lcom/junrar/unpack/ComprDataIO;)V
    .registers 3

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;-><init>()V

    new-instance v0, Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-direct {v0}, Lcom/junrar/unpack/ppm/ModelPPM;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    new-instance v0, Lcom/junrar/unpack/vm/RarVM;

    invoke-direct {v0}, Lcom/junrar/unpack/vm/RarVM;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    const/16 v0, 0x194

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    iput-object p1, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    iput-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->unpAllBuf:Z

    iput-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    return-void
.end method

.method private ExecuteCode(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 8

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v0

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x24

    iget-wide v3, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x28

    iget-wide v3, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/vm/RarVM;->execute(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

    :cond_38
    return-void
.end method

.method private UnpWriteArea(II)V
    .registers 7

    const/4 v0, 0x1

    if-eq p2, p1, :cond_5

    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    :cond_5
    if-ge p2, p1, :cond_1a

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    neg-int v2, p1

    const v3, 0x3fffff

    and-int/2addr v2, v3

    invoke-direct {p0, v1, p1, v2}, Lcom/junrar/unpack/Unpack;->UnpWriteData([BII)V

    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/junrar/unpack/Unpack;->UnpWriteData([BII)V

    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->unpAllBuf:Z

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    sub-int/2addr p2, p1

    invoke-direct {p0, v0, p1, p2}, Lcom/junrar/unpack/Unpack;->UnpWriteData([BII)V

    :goto_20
    return-void
.end method

.method private UnpWriteBuf()V
    .registers 16

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int/2addr v1, v0

    const v2, 0x3fffff

    and-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    iget-object v5, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_25c

    iget-object v5, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/junrar/unpack/UnpackFilter;

    const/4 v6, 0x1

    if-nez v5, :cond_20

    goto/16 :goto_259

    :cond_20
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v5, v3}, Lcom/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    goto/16 :goto_259

    :cond_2b
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v7

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v8

    sub-int v9, v7, v0

    and-int/2addr v9, v2

    if-ge v9, v1, :cond_259

    if-eq v0, v7, :cond_43

    invoke-direct {p0, v0, v7}, Lcom/junrar/unpack/Unpack;->UnpWriteArea(II)V

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int/2addr v0, v7

    and-int v1, v0, v2

    move v0, v7

    :cond_43
    if-gt v8, v1, :cond_238

    add-int v0, v7, v8

    and-int/2addr v0, v2

    if-lt v7, v0, :cond_5f

    if-nez v0, :cond_4d

    goto :goto_5f

    :cond_4d
    const/high16 v1, 0x400000

    sub-int/2addr v1, v7

    iget-object v8, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    iget-object v9, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    invoke-virtual {v8, v3, v9, v7, v1}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    iget-object v8, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    iget-object v9, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    invoke-virtual {v8, v1, v9, v3, v0}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    goto :goto_66

    :cond_5f
    :goto_5f
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    iget-object v9, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    invoke-virtual {v1, v3, v9, v7, v8}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    :goto_66
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/junrar/unpack/UnpackFilter;

    invoke-virtual {v1}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v1

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v5

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v9, 0x40

    if-le v8, v9, :cond_b7

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->setSize(I)V

    move v8, v3

    :goto_96
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int/2addr v10, v9

    if-ge v8, v10, :cond_b7

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    add-int/lit8 v11, v8, 0x40

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v10, v11, v12}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_96

    :cond_b7
    invoke-direct {p0, v5}, Lcom/junrar/unpack/Unpack;->ExecuteCode(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-le v8, v9, :cond_107

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v8, v10, :cond_e5

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->setSize(I)V

    :cond_e5
    move v8, v3

    :goto_e6
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int/2addr v10, v9

    if-ge v8, v10, :cond_10e

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    add-int/lit8 v11, v8, 0x40

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v10, v11, v12}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_e6

    :cond_107
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    :cond_10e
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v1

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v5

    new-array v8, v5, [B

    iget-object v10, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    invoke-virtual {v10}, Lcom/junrar/unpack/vm/RarVM;->getMem()[B

    move-result-object v10

    invoke-static {v10, v1, v8, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v1, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_127
    add-int/lit8 v1, v4, 0x1

    iget-object v11, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_226

    iget-object v11, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/junrar/unpack/UnpackFilter;

    if-eqz v11, :cond_226

    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v12

    if-ne v12, v7, :cond_226

    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v12

    if-ne v12, v5, :cond_226

    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v12

    if-eqz v12, :cond_14f

    goto/16 :goto_226

    :cond_14f
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    invoke-virtual {v4, v3, v8, v3, v5}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/junrar/unpack/UnpackFilter;

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v4

    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v5

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-le v8, v9, :cond_1a3

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/util/Vector;->setSize(I)V

    move v8, v3

    :goto_182
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    sub-int/2addr v11, v9

    if-ge v8, v11, :cond_1a3

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v11

    add-int/lit8 v12, v8, 0x40

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_182

    :cond_1a3
    invoke-direct {p0, v5}, Lcom/junrar/unpack/Unpack;->ExecuteCode(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-le v8, v9, :cond_1f3

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v8, v11, :cond_1d1

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/util/Vector;->setSize(I)V

    :cond_1d1
    move v8, v3

    :goto_1d2
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    sub-int/2addr v11, v9

    if-ge v8, v11, :cond_1fa

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v11

    add-int/lit8 v12, v8, 0x40

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d2

    :cond_1f3
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    :cond_1fa
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v4

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v8

    new-array v11, v8, [B

    move v12, v3

    :goto_205
    if-ge v12, v8, :cond_21c

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    add-int v14, v4, v12

    invoke-virtual {v13, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    aput-byte v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_205

    :cond_21c
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v4, v1, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    move v5, v8

    move-object v8, v11

    goto/16 :goto_127

    :cond_226
    :goto_226
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {v1, v8, v3, v5}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    iput-boolean v6, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    iget-wide v7, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int/2addr v1, v0

    and-int/2addr v1, v2

    goto :goto_259

    :cond_238
    :goto_238
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_256

    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/junrar/unpack/UnpackFilter;

    if-eqz v1, :cond_253

    invoke-virtual {v1}, Lcom/junrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v2

    if-eqz v2, :cond_253

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    :cond_253
    add-int/lit8 v4, v4, 0x1

    goto :goto_238

    :cond_256
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    return-void

    :cond_259
    :goto_259
    add-int/2addr v4, v6

    goto/16 :goto_b

    :cond_25c
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack;->UnpWriteArea(II)V

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    return-void
.end method

.method private UnpWriteData([BII)V
    .registers 9

    iget-wide v0, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    iget-wide v2, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_9

    return-void

    :cond_9
    sub-long/2addr v2, v0

    int-to-long v0, p3

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    long-to-int p3, v2

    :cond_10
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {v2, p1, p2, p3}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    iget-wide p1, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    return-void
.end method

.method private addVMCode(ILjava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/junrar/unpack/vm/BitInput;

    invoke-direct {v0}, Lcom/junrar/unpack/vm/BitInput;-><init>()V

    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->InitBitInput()V

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    const v3, 0x8000

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2a

    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->getInBuf()[B

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    iget-object p2, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/RarVM;->init()V

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_40

    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result p2

    if-nez p2, :cond_3d

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->initFilters()V

    goto :goto_42

    :cond_3d
    add-int/lit8 p2, p2, -0x1

    goto :goto_42

    :cond_40
    iget p2, p0, Lcom/junrar/unpack/Unpack;->lastFilter:I

    :goto_42
    iget-object v2, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p2, v2, :cond_2ad

    iget-object v2, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p2, v2, :cond_54

    goto/16 :goto_2ad

    :cond_54
    iput p2, p0, Lcom/junrar/unpack/Unpack;->lastFilter:I

    iget-object v2, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_61

    move v2, v3

    goto :goto_62

    :cond_61
    move v2, v1

    :goto_62
    new-instance v4, Lcom/junrar/unpack/UnpackFilter;

    invoke-direct {v4}, Lcom/junrar/unpack/UnpackFilter;-><init>()V

    if-eqz v2, :cond_8f

    const/16 v5, 0x400

    if-le p2, v5, :cond_6e

    return v1

    :cond_6e
    new-instance v5, Lcom/junrar/unpack/UnpackFilter;

    invoke-direct {v5}, Lcom/junrar/unpack/UnpackFilter;-><init>()V

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v6}, Lcom/junrar/unpack/UnpackFilter;->setParentFilter(I)V

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Lcom/junrar/unpack/UnpackFilter;->setExecCount(I)V

    goto :goto_a2

    :cond_8f
    iget-object v5, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/junrar/unpack/UnpackFilter;

    invoke-virtual {v4, p2}, Lcom/junrar/unpack/UnpackFilter;->setParentFilter(I)V

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/junrar/unpack/UnpackFilter;->setExecCount(I)V

    :goto_a2
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/junrar/unpack/UnpackFilter;->setExecCount(I)V

    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result v6

    and-int/lit8 v7, p1, 0x40

    if-eqz v7, :cond_b8

    add-int/lit16 v6, v6, 0x102

    :cond_b8
    iget v7, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/2addr v7, v6

    const v8, 0x3fffff

    and-int/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/junrar/unpack/UnpackFilter;->setBlockStart(I)V

    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_ce

    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/junrar/unpack/UnpackFilter;->setBlockLength(I)V

    goto :goto_e7

    :cond_ce
    iget-object v7, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p2, v7, :cond_e3

    iget-object v7, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_e4

    :cond_e3
    move v7, v1

    :goto_e4
    invoke-virtual {v4, v7}, Lcom/junrar/unpack/UnpackFilter;->setBlockLength(I)V

    :goto_e7
    iget v7, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iget v9, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    if-eq v7, v9, :cond_f3

    sub-int/2addr v7, v9

    and-int/2addr v7, v8

    if-gt v7, v6, :cond_f3

    move v6, v3

    goto :goto_f4

    :cond_f3
    move v6, v1

    :goto_f4
    invoke-virtual {v4, v6}, Lcom/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object p2

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object p2

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object p2

    const v6, 0x3c000

    const/4 v7, 0x3

    aput v6, p2, v7

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object p2

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object p2

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v6

    const/4 v8, 0x4

    aput v6, p2, v8

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object p2

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object p2

    const/4 v6, 0x5

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v8

    aput v8, p2, v6

    and-int/lit8 p2, p1, 0x10

    const/4 v6, 0x7

    if-eqz p2, :cond_162

    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result p2

    ushr-int/lit8 p2, p2, 0x9

    invoke-virtual {v0, v6}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    move v8, v1

    :goto_14a
    if-ge v8, v6, :cond_162

    shl-int v9, v3, v8

    and-int/2addr v9, p2

    if-eqz v9, :cond_15f

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v9

    invoke-virtual {v9}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v9

    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result v10

    aput v10, v9, v8

    :cond_15f
    add-int/lit8 v8, v8, 0x1

    goto :goto_14a

    :cond_162
    const/16 p2, 0x8

    if-eqz v2, :cond_196

    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result v2

    const/high16 v8, 0x10000

    if-ge v2, v8, :cond_195

    if-nez v2, :cond_171

    goto :goto_195

    :cond_171
    new-array v8, v2, [B

    move v9, v1

    :goto_174
    if-ge v9, v2, :cond_18b

    invoke-virtual {v0, v7}, Lcom/junrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v10

    if-eqz v10, :cond_17d

    return v1

    :cond_17d
    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v10

    shr-int/2addr v10, p2

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    invoke-virtual {v0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_174

    :cond_18b
    iget-object v9, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v10

    invoke-virtual {v9, v8, v2, v10}, Lcom/junrar/unpack/vm/RarVM;->prepare([BILcom/junrar/unpack/vm/VMPreparedProgram;)V

    goto :goto_196

    :cond_195
    :goto_195
    return v1

    :cond_196
    :goto_196
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setAltCmd(Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1d5

    const/16 v8, 0x2000

    if-ge v2, v8, :cond_1d5

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setStaticData(Ljava/util/Vector;)V

    :cond_1d5
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v5, 0x40

    if-ge v2, v5, :cond_1fb

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Vector;->setSize(I)V

    :cond_1fb
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    move v8, v1

    :goto_204
    if-ge v8, v6, :cond_21a

    iget-object v9, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    mul-int/lit8 v10, v8, 0x4

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v11

    invoke-virtual {v11}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v11

    aget v11, v11, v8

    invoke-virtual {v9, v2, v10, v11}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_204

    :cond_21a
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    const/16 v8, 0x1c

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v9

    invoke-virtual {v6, v2, v8, v9}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    const/16 v8, 0x20

    invoke-virtual {v6, v2, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    const/16 v8, 0x24

    invoke-virtual {v6, v2, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    const/16 v8, 0x28

    invoke-virtual {v6, v2, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    const/16 v8, 0x2c

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v9

    invoke-virtual {v6, v2, v8, v9}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    move v6, v1

    :goto_246
    const/16 v8, 0x10

    if-ge v6, v8, :cond_256

    add-int/lit8 v8, v6, 0x30

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_246

    :cond_256
    and-int/2addr p1, p2

    if-eqz p1, :cond_2ac

    invoke-virtual {v0, v7}, Lcom/junrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result p1

    if-eqz p1, :cond_260

    return v1

    :cond_260
    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result p1

    const/16 v2, 0x1fc0

    if-le p1, v2, :cond_269

    return v1

    :cond_269
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v6, p1, 0x40

    if-ge v2, v6, :cond_285

    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    sub-int/2addr v6, v2

    invoke-virtual {v8, v6}, Ljava/util/Vector;->setSize(I)V

    :cond_285
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    move v4, v1

    :goto_28e
    if-ge v4, p1, :cond_2ac

    invoke-virtual {v0, v7}, Lcom/junrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v6

    if-eqz v6, :cond_297

    return v1

    :cond_297
    add-int v6, v5, v4

    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v8

    ushr-int/2addr v8, p2

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28e

    :cond_2ac
    return v3

    :cond_2ad
    :goto_2ad
    return v1
.end method

.method private copyString(II)V
    .registers 7

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int p2, v0, p2

    if-ltz p2, :cond_2d

    const v1, 0x3ffefc

    if-ge p2, v1, :cond_2d

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, v1, p2

    aput-byte p2, v1, v0

    :goto_19
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_48

    iget-object p2, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    aput-byte v2, p2, v0

    move v2, v1

    goto :goto_19

    :cond_2d
    :goto_2d
    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v2, p2, 0x1

    const v3, 0x3fffff

    and-int/2addr p2, v3

    aget-byte p2, p1, p2

    aput-byte p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    and-int p1, v1, v3

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    move p1, v0

    move p2, v2

    goto :goto_2d

    :cond_48
    return-void
.end method

.method private initFilters()V
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/Unpack;->lastFilter:I

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private insertLastMatch(II)V
    .registers 3

    iput p2, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    return-void
.end method

.method private insertOldDist(I)V
    .registers 6

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, v0, v1

    const/4 v1, 0x0

    aget v3, v0, v1

    aput v3, v0, v2

    aput p1, v0, v1

    return-void
.end method

.method private readEndOfBlock()Z
    .registers 5

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    move v1, v2

    move v0, v3

    goto :goto_1e

    :cond_12
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_18

    move v0, v3

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    move v1, v3

    :goto_1e
    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    if-nez v1, :cond_2a

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readTables()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v2, v3

    :cond_2a
    return v2
.end method

.method private readTables()Z
    .registers 14

    const/16 v0, 0x14

    new-array v1, v0, [B

    const/16 v2, 0x194

    new-array v3, v2, [B

    iget v4, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v5, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v5, v5, -0x19

    const/4 v6, 0x0

    if-le v4, v5, :cond_18

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v4

    if-nez v4, :cond_18

    return v6

    :cond_18
    iget v4, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x7

    and-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v4

    int-to-long v7, v4

    const-wide/32 v9, 0x8000

    and-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-eqz v4, :cond_3b

    sget-object v0, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/junrar/unpack/ppm/BlockTypes;

    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeInit(Lcom/junrar/unpack/Unpack;)Z

    move-result v0

    return v0

    :cond_3b
    sget-object v4, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/junrar/unpack/ppm/BlockTypes;

    iput-object v4, p0, Lcom/junrar/unpack/Unpack;->unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

    iput v6, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    iput v6, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    const-wide/16 v9, 0x4000

    and-long/2addr v7, v9

    cmp-long v4, v7, v11

    if-nez v4, :cond_4f

    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    :cond_4f
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    move v4, v6

    :goto_54
    const/16 v7, 0xf

    const/4 v8, 0x1

    if-ge v4, v0, :cond_8e

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v9

    ushr-int/lit8 v9, v9, 0xc

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    if-ne v9, v7, :cond_89

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v9

    ushr-int/lit8 v9, v9, 0xc

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    if-nez v9, :cond_77

    aput-byte v7, v1, v4

    goto :goto_8c

    :cond_77
    add-int/lit8 v9, v9, 0x2

    :goto_79
    add-int/lit8 v7, v9, -0x1

    if-lez v9, :cond_86

    if-ge v4, v0, :cond_86

    add-int/lit8 v9, v4, 0x1

    aput-byte v6, v1, v4

    move v4, v9

    move v9, v7

    goto :goto_79

    :cond_86
    add-int/lit8 v4, v4, -0x1

    goto :goto_8c

    :cond_89
    int-to-byte v7, v9

    aput-byte v7, v1, v4

    :goto_8c
    add-int/2addr v4, v8

    goto :goto_54

    :cond_8e
    iget-object v4, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v1, v6, v4, v0}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    move v0, v6

    :cond_94
    :goto_94
    if-ge v0, v2, :cond_10d

    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v4, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v4, v4, -0x5

    if-le v1, v4, :cond_a5

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v1

    if-nez v1, :cond_a5

    return v6

    :cond_a5
    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result v1

    const/16 v4, 0x10

    if-ge v1, v4, :cond_bb

    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    and-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    :cond_bb
    const/16 v9, 0x12

    const/4 v10, 0x3

    if-ge v1, v9, :cond_e8

    if-ne v1, v4, :cond_cd

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v10

    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_d8

    :cond_cd
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_d8
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_94

    if-ge v0, v2, :cond_94

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v3, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_d8

    :cond_e8
    if-ne v1, v9, :cond_f5

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v10

    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_100

    :cond_f5
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_100
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_94

    if-ge v0, v2, :cond_94

    add-int/lit8 v1, v0, 0x1

    aput-byte v6, v3, v0

    move v0, v1

    move v1, v4

    goto :goto_100

    :cond_10d
    iput-boolean v8, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    if-le v0, v1, :cond_116

    return v6

    :cond_116
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    const/16 v1, 0x12b

    invoke-virtual {p0, v3, v6, v0, v1}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    const/16 v2, 0x3c

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    const/16 v0, 0x167

    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->LDD:Lcom/junrar/unpack/decode/LowDistDecode;

    const/16 v2, 0x11

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    const/16 v0, 0x178

    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    const/16 v2, 0x1c

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    array-length v1, v0

    invoke-static {v3, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v8
.end method

.method private readVMCode()Z
    .registers 9

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v0

    const/16 v1, 0x8

    shr-int/2addr v0, v1

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    and-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1b

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v2

    shr-int/2addr v2, v1

    add-int/2addr v2, v3

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    goto :goto_26

    :cond_1b
    if-ne v2, v1, :cond_26

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_26
    :goto_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2d
    if-ge v5, v2, :cond_55

    iget v6, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v7, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_42

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v6

    if-nez v6, :cond_42

    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_42

    return v4

    :cond_42
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v6

    shr-int/2addr v6, v1

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_55
    invoke-direct {p0, v0, v3}, Lcom/junrar/unpack/Unpack;->addVMCode(ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private readVMCodePPM()Z
    .registers 8

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    return v2

    :cond_b
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v3

    if-ne v3, v1, :cond_1b

    return v2

    :cond_1b
    add-int/2addr v3, v4

    goto :goto_36

    :cond_1d
    const/16 v4, 0x8

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v3

    if-ne v3, v1, :cond_2a

    return v2

    :cond_2a
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v4

    if-ne v4, v1, :cond_33

    return v2

    :cond_33
    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v3, v4

    :cond_36
    :goto_36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    :goto_3c
    if-ge v5, v3, :cond_52

    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v6

    if-ne v6, v1, :cond_47

    return v2

    :cond_47
    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_52
    invoke-direct {p0, v0, v4}, Lcom/junrar/unpack/Unpack;->addVMCode(ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private unpack29(Z)V
    .registers 13

    const/16 v0, 0x3c

    new-array v1, v0, [I

    new-array v0, v0, [B

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_2c

    move v3, v4

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_10
    sget-object v8, Lcom/junrar/unpack/Unpack;->DBitLengthCounts:[I

    array-length v9, v8

    if-ge v3, v9, :cond_2c

    aget v8, v8, v3

    move v9, v4

    :goto_18
    if-ge v9, v8, :cond_27

    aput v5, v1, v7

    int-to-byte v10, v6

    aput-byte v10, v0, v7

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    shl-int v10, v2, v6

    add-int/2addr v5, v10

    goto :goto_18

    :cond_27
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_2c
    iget-boolean v3, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    if-nez v3, :cond_47

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack;->unpInitData(Z)V

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v3

    if-nez v3, :cond_3a

    return-void

    :cond_3a
    if-eqz p1, :cond_40

    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    if-nez p1, :cond_47

    :cond_40
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readTables()Z

    move-result p1

    if-nez p1, :cond_47

    return-void

    :cond_47
    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack;->ppmError:Z

    if-eqz p1, :cond_4c

    return-void

    :cond_4c
    :goto_4c
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    const v3, 0x3fffff

    and-int/2addr p1, v3

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v5, p0, Lcom/junrar/unpack/Unpack15;->readBorder:I

    if-le p1, v5, :cond_62

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result p1

    if-nez p1, :cond_62

    goto/16 :goto_1b7

    :cond_62
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iget v5, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int v6, p1, v5

    and-int/2addr v3, v6

    const/16 v6, 0x104

    if-ge v3, v6, :cond_80

    if-eq p1, v5, :cond_80

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->UnpWriteBuf()V

    iget-wide v5, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    iget-wide v7, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    cmp-long p1, v5, v7

    if-lez p1, :cond_7b

    return-void

    :cond_7b
    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    if-eqz p1, :cond_80

    return-void

    :cond_80
    iget-object p1, p0, Lcom/junrar/unpack/Unpack;->unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

    sget-object v3, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/junrar/unpack/ppm/BlockTypes;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-ne p1, v3, :cond_109

    iget-object p1, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_96

    iput-boolean v2, p0, Lcom/junrar/unpack/Unpack;->ppmError:Z

    goto/16 :goto_1b7

    :cond_96
    iget v8, p0, Lcom/junrar/unpack/Unpack;->ppmEscChar:I

    if-ne p1, v8, :cond_fc

    iget-object v8, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v8

    if-nez v8, :cond_aa

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readTables()Z

    move-result p1

    if-nez p1, :cond_4c

    goto/16 :goto_1b7

    :cond_aa
    if-eq v8, v6, :cond_1b7

    if-ne v8, v3, :cond_b0

    goto/16 :goto_1b7

    :cond_b0
    if-ne v8, v5, :cond_ba

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readVMCodePPM()Z

    move-result p1

    if-nez p1, :cond_4c

    goto/16 :goto_1b7

    :cond_ba
    if-ne v8, v7, :cond_e8

    move p1, v4

    move v6, p1

    move v8, v6

    move v9, v8

    :goto_c0
    if-ge p1, v7, :cond_db

    if-nez v6, :cond_db

    iget-object v10, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v10

    if-ne v10, v3, :cond_ce

    move v6, v2

    goto :goto_d8

    :cond_ce
    if-ne p1, v5, :cond_d3

    and-int/lit16 v9, v10, 0xff

    goto :goto_d8

    :cond_d3
    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v8, v10

    :goto_d8
    add-int/lit8 p1, p1, 0x1

    goto :goto_c0

    :cond_db
    if-eqz v6, :cond_df

    goto/16 :goto_1b7

    :cond_df
    add-int/lit8 v9, v9, 0x20

    add-int/lit8 v8, v8, 0x2

    invoke-direct {p0, v9, v8}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_4c

    :cond_e8
    const/4 v5, 0x5

    if-ne v8, v5, :cond_fc

    iget-object p1, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result p1

    if-ne p1, v3, :cond_f5

    goto/16 :goto_1b7

    :cond_f5
    add-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1, v2}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_4c

    :cond_fc
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v5, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    int-to-byte p1, p1

    aput-byte p1, v3, v5

    goto/16 :goto_4c

    :cond_109
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result p1

    const/16 v3, 0x100

    if-ge p1, v3, :cond_120

    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v5, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    int-to-byte p1, p1

    aput-byte p1, v3, v5

    goto/16 :goto_4c

    :cond_120
    const/16 v8, 0x10f

    if-lt p1, v8, :cond_1a4

    sget-object v3, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    add-int/lit16 p1, p1, -0x10f

    aget v3, v3, p1

    add-int/2addr v3, v5

    sget-object v5, Lcom/junrar/unpack/Unpack20;->LBits:[B

    aget-byte p1, v5, p1

    if-lez p1, :cond_13c

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v5

    rsub-int/lit8 v6, p1, 0x10

    ushr-int/2addr v5, v6

    add-int/2addr v3, v5

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_13c
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result p1

    aget v5, v1, p1

    add-int/2addr v5, v2

    aget-byte v6, v0, p1

    if-lez v6, :cond_189

    const/16 v8, 0x9

    if-le p1, v8, :cond_17e

    if-le v6, v7, :cond_15d

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result p1

    rsub-int/lit8 v8, v6, 0x14

    ushr-int/2addr p1, v8

    shl-int/2addr p1, v7

    add-int/2addr v5, p1

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_15d
    iget p1, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    if-lez p1, :cond_169

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    iget p1, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    :goto_167
    add-int/2addr v5, p1

    goto :goto_189

    :cond_169
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->LDD:Lcom/junrar/unpack/decode/LowDistDecode;

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result p1

    const/16 v6, 0x10

    if-ne p1, v6, :cond_17a

    const/16 p1, 0xf

    iput p1, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    iget p1, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    goto :goto_167

    :cond_17a
    add-int/2addr v5, p1

    iput p1, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    goto :goto_189

    :cond_17e
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result p1

    rsub-int/lit8 v7, v6, 0x10

    ushr-int/2addr p1, v7

    add-int/2addr v5, p1

    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_189
    :goto_189
    const/16 p1, 0x2000

    if-lt v5, p1, :cond_199

    add-int/lit8 v3, v3, 0x1

    int-to-long v6, v5

    const-wide/32 v8, 0x40000

    cmp-long p1, v6, v8

    if-ltz p1, :cond_199

    add-int/lit8 v3, v3, 0x1

    :cond_199
    invoke-direct {p0, v5}, Lcom/junrar/unpack/Unpack;->insertOldDist(I)V

    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->insertLastMatch(II)V

    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_4c

    :cond_1a4
    if-ne p1, v3, :cond_1ad

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readEndOfBlock()Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_1b7

    :cond_1ad
    const/16 v3, 0x101

    if-ne p1, v3, :cond_1bb

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readVMCode()Z

    move-result p1

    if-nez p1, :cond_4c

    :cond_1b7
    :goto_1b7
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->UnpWriteBuf()V

    return-void

    :cond_1bb
    const/16 v3, 0x102

    if-ne p1, v3, :cond_1ca

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    if-eqz p1, :cond_4c

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    invoke-direct {p0, p1, v3}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_4c

    :cond_1ca
    const/16 v3, 0x107

    if-ge p1, v3, :cond_1ff

    add-int/lit16 p1, p1, -0x103

    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    aget v5, v3, p1

    invoke-static {v3, v4, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    aput v5, p1, v4

    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result p1

    sget-object v3, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    aget v3, v3, p1

    add-int/2addr v3, v6

    sget-object v6, Lcom/junrar/unpack/Unpack20;->LBits:[B

    aget-byte p1, v6, p1

    if-lez p1, :cond_1f7

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v6

    rsub-int/lit8 v7, p1, 0x10

    ushr-int/2addr v6, v7

    add-int/2addr v3, v6

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_1f7
    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->insertLastMatch(II)V

    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_4c

    :cond_1ff
    const/16 v3, 0x110

    if-ge p1, v3, :cond_4c

    sget-object v3, Lcom/junrar/unpack/Unpack20;->SDDecode:[I

    add-int/lit16 p1, p1, -0x107

    aget v3, v3, p1

    add-int/2addr v3, v2

    sget-object v5, Lcom/junrar/unpack/Unpack20;->SDBits:[I

    aget p1, v5, p1

    if-lez p1, :cond_21b

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v5

    rsub-int/lit8 v7, p1, 0x10

    ushr-int/2addr v5, v7

    add-int/2addr v3, v5

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_21b
    invoke-direct {p0, v3}, Lcom/junrar/unpack/Unpack;->insertOldDist(I)V

    invoke-direct {p0, v6, v3}, Lcom/junrar/unpack/Unpack;->insertLastMatch(II)V

    invoke-direct {p0, v6, v3}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_4c
.end method

.method private unstoreFile()V
    .registers 10

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    int-to-long v3, v0

    iget-wide v5, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/junrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v2

    if-eqz v2, :cond_34

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    goto :goto_34

    :cond_19
    int-to-long v5, v2

    iget-wide v7, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_21

    goto :goto_22

    :cond_21
    long-to-int v2, v7

    :goto_22
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {v3, v1, v4, v2}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_4

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    goto :goto_4

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    :cond_b
    return-void
.end method

.method public doUnpack(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lcom/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/junrar/rarfile/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->unstoreFile()V

    :cond_11
    const/16 v0, 0xf

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_26

    const/16 v0, 0x24

    if-eq p1, v0, :cond_26

    goto :goto_31

    :cond_26
    invoke-direct {p0, p2}, Lcom/junrar/unpack/Unpack;->unpack29(Z)V

    goto :goto_31

    :cond_2a
    invoke-virtual {p0, p2}, Lcom/junrar/unpack/Unpack20;->unpack20(Z)V

    goto :goto_31

    :cond_2e
    invoke-virtual {p0, p2}, Lcom/junrar/unpack/Unpack15;->unpack15(Z)V

    :goto_31
    return-void
.end method

.method public getChar()I
    .registers 4

    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    const/16 v1, 0x7fe2

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    :cond_9
    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public init([B)V
    .registers 2

    if-nez p1, :cond_6

    const/high16 p1, 0x400000

    new-array p1, p1, [B

    :cond_6
    iput-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack;->unpInitData(Z)V

    return-void
.end method

.method public setDestSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    return-void
.end method

.method public setPpmEscChar(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/Unpack;->ppmEscChar:I

    return-void
.end method

.method public unpInitData(Z)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_1f

    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/junrar/unpack/Unpack;->ppmEscChar:I

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->initFilters()V

    :cond_1f
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->InitBitInput()V

    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack;->ppmError:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->readBorder:I

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->unpInitData20(Z)V

    return-void
.end method
