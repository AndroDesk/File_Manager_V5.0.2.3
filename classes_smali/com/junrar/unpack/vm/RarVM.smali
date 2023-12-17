.class public Lcom/junrar/unpack/vm/RarVM;
.super Lcom/junrar/unpack/vm/BitInput;
.source "RarVM.java"


# static fields
.field public static final VM_FIXEDGLOBALSIZE:I = 0x40

.field public static final VM_GLOBALMEMADDR:I = 0x3c000

.field public static final VM_GLOBALMEMSIZE:I = 0x2000

.field private static final VM_MEMMASK:I = 0x3ffff

.field private static final VM_MEMSIZE:I = 0x40000

.field private static final regCount:I = 0x8


# instance fields
.field private IP:I

.field private R:[I

.field private codeSize:I

.field private flags:I

.field private maxOpCount:I

.field private mem:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/junrar/unpack/vm/BitInput;-><init>()V

    .line 4
    const/16 v0, 0x8

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 10
    const v0, 0x17d7840

    .line 13
    iput v0, p0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 18
    return-void
.end method

.method private ExecuteCode(Ljava/util/List;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/junrar/unpack/vm/VMPreparedCommand;",
            ">;I)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x17d7840

    .line 1
    iput v1, v0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    move/from16 v1, p2

    .line 2
    iput v1, v0, Lcom/junrar/unpack/vm/RarVM;->codeSize:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    .line 4
    :goto_e
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/junrar/unpack/vm/VMPreparedCommand;

    .line 5
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/junrar/unpack/vm/RarVM;->getOperand(Lcom/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v4

    .line 6
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/junrar/unpack/vm/RarVM;->getOperand(Lcom/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v5

    .line 7
    sget-object v6, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x8

    const-wide/16 v8, -0x2

    const v10, 0x3ffff

    const-wide/16 v11, -0x1

    const/4 v13, 0x7

    const/4 v14, 0x1

    packed-switch v6, :pswitch_data_70e

    :goto_42
    move v6, v14

    goto/16 :goto_702

    .line 8
    :pswitch_45  #0x36
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v2

    .line 10
    invoke-static {v2}, Lcom/junrar/unpack/vm/VMStandardFilters;->findFilter(I)Lcom/junrar/unpack/vm/VMStandardFilters;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->ExecuteStandardFilter(Lcom/junrar/unpack/vm/VMStandardFilters;)V

    goto :goto_42

    .line 11
    :pswitch_55  #0x35
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v2, v13

    const/high16 v4, 0x40000

    if-lt v2, v4, :cond_5e

    return v14

    .line 12
    :cond_5e
    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v2, v10

    invoke-direct {v0, v1, v4, v2}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 13
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, 0x4

    aput v4, v2, v13

    goto :goto_e

    .line 14
    :pswitch_71  #0x34
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 15
    iget v7, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    int-to-long v8, v6

    .line 16
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v13, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v13, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v14, v5

    sub-long v13, v11, v14

    and-long/2addr v8, v13

    int-to-long v13, v7

    sub-long/2addr v11, v13

    and-long/2addr v8, v11

    long-to-int v5, v8

    .line 17
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    if-eqz v8, :cond_9f

    and-int/lit16 v5, v5, 0xff

    :cond_9f
    if-gt v5, v6, :cond_b7

    if-ne v5, v6, :cond_a6

    if-eqz v7, :cond_a6

    goto :goto_b7

    :cond_a6
    if-nez v5, :cond_af

    .line 18
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_b8

    .line 19
    :cond_af
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    goto :goto_b8

    :cond_b7
    :goto_b7
    const/4 v6, 0x1

    :goto_b8
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 20
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 21
    :pswitch_c5  #0x33
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 22
    iget v7, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    int-to-long v8, v6

    .line 23
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v13, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v13, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v13, v5

    add-long/2addr v13, v11

    and-long/2addr v8, v13

    int-to-long v13, v7

    add-long/2addr v13, v11

    and-long/2addr v8, v13

    long-to-int v5, v8

    .line 24
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    if-eqz v8, :cond_f2

    and-int/lit16 v5, v5, 0xff

    :cond_f2
    if-lt v5, v6, :cond_10a

    if-ne v5, v6, :cond_f9

    if-eqz v7, :cond_f9

    goto :goto_10a

    :cond_f9
    if-nez v5, :cond_102

    .line 25
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_10b

    .line 26
    :cond_102
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    goto :goto_10b

    :cond_10a
    :goto_10a
    const/4 v6, 0x1

    :goto_10b
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 27
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 28
    :pswitch_118  #0x32
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    if-eqz v5, :cond_6e1

    .line 29
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    div-int/2addr v6, v5

    .line 30
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 31
    :pswitch_13a  #0x31
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    .line 32
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v8, v11

    and-long v5, v6, v8

    long-to-int v5, v5

    .line 33
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 34
    :pswitch_15f  #0x30
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 35
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    invoke-direct {v0, v7, v8, v4, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 36
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 37
    :pswitch_187  #0x2f
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_702

    :pswitch_194  #0x2e
    move v6, v14

    .line 38
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 39
    :pswitch_1a0  #0x2d
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v4, v13

    and-int/2addr v4, v10

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 40
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, 0x4

    aput v4, v2, v13

    goto/16 :goto_6e1

    .line 41
    :pswitch_1b7  #0x2c
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, -0x4

    aput v4, v2, v13

    .line 42
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v4, v10

    iget v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 43
    :pswitch_1c9  #0x2b
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v2, v13

    move v4, v1

    :goto_1ce
    if-ge v4, v7, :cond_6e1

    .line 44
    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    rsub-int/lit8 v6, v4, 0x7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int v9, v2, v10

    invoke-direct {v0, v1, v8, v9}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    aput v8, v5, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1ce

    .line 45
    :pswitch_1e3  #0x2a
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v2, v13

    add-int/lit8 v2, v2, -0x4

    move v4, v1

    :goto_1ea
    if-ge v4, v7, :cond_1fc

    .line 46
    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int v6, v2, v10

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v4

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x4

    goto :goto_1ea

    .line 47
    :cond_1fc
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, -0x20

    aput v4, v2, v13

    goto/16 :goto_6e1

    .line 48
    :pswitch_206  #0x29
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    neg-int v5, v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 49
    :pswitch_212  #0x28
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v5, 0x1

    invoke-direct {v0, v5, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    neg-int v6, v6

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_51f

    .line 50
    :pswitch_21f  #0x27
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v5, v6, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    neg-int v5, v5

    if-nez v5, :cond_233

    .line 51
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_241

    .line 52
    :cond_233
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    .line 53
    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    sget-object v7, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    .line 54
    invoke-virtual {v7}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v7

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    :goto_241
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 55
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 56
    :pswitch_24e  #0x26
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 57
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    shr-int v7, v6, v5

    if-nez v7, :cond_26d

    .line 58
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_274

    .line 59
    :cond_26d
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_274
    add-int/lit8 v5, v5, -0x1

    shr-int v5, v6, v5

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    .line 60
    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v5, v6

    or-int/2addr v5, v8

    iput v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 61
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v7}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 62
    :pswitch_28d  #0x25
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 63
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    ushr-int v7, v6, v5

    if-nez v7, :cond_2ac

    .line 64
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_2b3

    .line 65
    :cond_2ac
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_2b3
    add-int/lit8 v5, v5, -0x1

    ushr-int v5, v6, v5

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    .line 66
    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v5, v6

    or-int/2addr v5, v8

    iput v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 67
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v7}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 68
    :pswitch_2cc  #0x24
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 69
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    shl-int v7, v6, v5

    if-nez v7, :cond_2eb

    .line 70
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_2f2

    .line 71
    :cond_2eb
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_2f2
    add-int/lit8 v5, v5, -0x1

    shl-int v5, v6, v5

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_302

    .line 72
    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    goto :goto_303

    :cond_302
    move v5, v1

    :goto_303
    or-int/2addr v5, v8

    .line 73
    iput v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 74
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v7}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 75
    :pswitch_311  #0x23
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 76
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 77
    invoke-direct {v0, v2, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    not-int v2, v2

    invoke-direct {v0, v5, v6, v4, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 78
    :pswitch_327  #0x22
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v5, v2, v13

    add-int/lit8 v5, v5, -0x4

    aput v5, v2, v13

    .line 79
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v5, v10

    iget v6, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 80
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 81
    :pswitch_344  #0x21
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v5, v5, v13

    and-int/2addr v5, v10

    invoke-direct {v0, v1, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 82
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, 0x4

    aput v4, v2, v13

    goto/16 :goto_6e1

    .line 83
    :pswitch_35c  #0x20
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v5, v2, v13

    add-int/lit8 v5, v5, -0x4

    aput v5, v2, v13

    .line 84
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v5, v10

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 85
    :pswitch_370  #0x1f
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_6e1

    .line 86
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 87
    :pswitch_386  #0x1e
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    or-int/2addr v5, v6

    and-int/2addr v2, v5

    if-nez v2, :cond_6e1

    .line 88
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 89
    :pswitch_3a3  #0x1d
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    or-int/2addr v5, v6

    and-int/2addr v2, v5

    if-eqz v2, :cond_6e1

    .line 90
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 91
    :pswitch_3c0  #0x1c
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_6e1

    .line 92
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 93
    :pswitch_3d6  #0x1b
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_6e1

    .line 94
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 95
    :pswitch_3ec  #0x1a
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_6e1

    .line 96
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 97
    :pswitch_402  #0x19
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    .line 98
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    and-int/2addr v2, v4

    if-nez v2, :cond_420

    .line 99
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    goto :goto_427

    .line 100
    :cond_420
    sget-object v4, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v2, v4

    :goto_427
    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    .line 101
    :pswitch_42b  #0x18
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 102
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    or-int/2addr v5, v6

    if-nez v5, :cond_449

    .line 103
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_450

    .line 104
    :cond_449
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_450
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 105
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 106
    :pswitch_45d  #0x17
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 107
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    and-int/2addr v5, v6

    if-nez v5, :cond_47b

    .line 108
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_482

    .line 109
    :cond_47b
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_482
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 110
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 111
    :pswitch_48f  #0x16
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 112
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    xor-int/2addr v5, v6

    if-nez v5, :cond_4ad

    .line 113
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_4b4

    .line 114
    :cond_4ad
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_4b4
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 115
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 116
    :pswitch_4c1  #0x15
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 117
    :pswitch_4cc  #0x14
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 118
    :pswitch_4da  #0x13
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v5, 0x1

    .line 119
    invoke-direct {v0, v5, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    .line 120
    invoke-direct {v0, v5, v2, v4, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_51f

    .line 121
    :pswitch_4e8  #0x12
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v5, v6, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    .line 122
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    if-nez v5, :cond_507

    .line 123
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    goto :goto_50e

    .line 124
    :cond_507
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    and-int/2addr v2, v5

    :goto_50e
    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    .line 125
    :pswitch_512  #0x11
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 126
    :pswitch_519  #0x10
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v5, 0x1

    invoke-direct {v0, v5, v2, v4, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    :goto_51f
    move v6, v5

    goto/16 :goto_702

    .line 127
    :pswitch_522  #0xf
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 128
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 129
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    .line 130
    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    .line 131
    :pswitch_538  #0xe
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_6e1

    .line 132
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 133
    :pswitch_54e  #0xd
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_6e1

    .line 134
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    .line 135
    :pswitch_564  #0xc
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 136
    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 137
    invoke-direct {v0, v1, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v8, v5

    sub-long/2addr v11, v8

    and-long v5, v6, v11

    long-to-int v5, v5

    .line 138
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 139
    :pswitch_57b  #0xb
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    .line 140
    invoke-direct {v0, v6, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 141
    invoke-direct {v0, v6, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v9, v5

    sub-long/2addr v11, v9

    and-long/2addr v7, v11

    long-to-int v5, v7

    .line 142
    invoke-direct {v0, v6, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_702

    .line 143
    :pswitch_592  #0xa
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v7, v6

    .line 144
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v9, v5

    sub-long/2addr v11, v9

    and-long/2addr v7, v11

    long-to-int v5, v7

    if-nez v5, :cond_5b4

    .line 145
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_5bf

    :cond_5b4
    if-le v5, v6, :cond_5b8

    const/4 v6, 0x1

    goto :goto_5bf

    .line 146
    :cond_5b8
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    .line 147
    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_5bf
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 148
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 149
    :pswitch_5cc  #0x9
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 150
    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 151
    invoke-direct {v0, v1, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v8, v11

    and-long v5, v6, v8

    long-to-int v5, v5

    .line 152
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 153
    :pswitch_5e3  #0x8
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    .line 154
    invoke-direct {v0, v6, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 155
    invoke-direct {v0, v6, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v9, v11

    and-long/2addr v7, v9

    long-to-int v5, v7

    .line 156
    invoke-direct {v0, v6, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_702

    .line 157
    :pswitch_5fa  #0x7
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v7, v6

    .line 158
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 159
    invoke-direct {v0, v9, v10, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 160
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    if-eqz v7, :cond_636

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v6, :cond_61e

    const/4 v6, 0x1

    goto :goto_633

    :cond_61e
    if-nez v5, :cond_627

    .line 161
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_633

    :cond_627
    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_632

    .line 162
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_633

    :cond_632
    move v6, v1

    :goto_633
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_64c

    :cond_636
    if-ge v5, v6, :cond_63a

    const/4 v6, 0x1

    goto :goto_64a

    :cond_63a
    if-nez v5, :cond_643

    .line 163
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_64a

    .line 164
    :cond_643
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_64a
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 165
    :goto_64c
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    .line 166
    :pswitch_657  #0x6
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    .line 167
    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    sub-int v4, v2, v4

    if-nez v4, :cond_671

    .line 168
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    :cond_671
    if-le v4, v2, :cond_675

    const/4 v2, 0x1

    goto :goto_67c

    .line 169
    :cond_675
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    .line 170
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    and-int/2addr v2, v4

    :goto_67c
    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    .line 171
    :pswitch_67f  #0x5
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    .line 172
    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    sub-int v4, v2, v4

    if-nez v4, :cond_699

    .line 173
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    :cond_699
    if-le v4, v2, :cond_69d

    const/4 v6, 0x1

    goto :goto_6a5

    .line 174
    :cond_69d
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    .line 175
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    and-int v6, v4, v2

    :goto_6a5
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    .line 176
    :pswitch_6a8  #0x4
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    .line 177
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    sub-int v2, v4, v2

    if-nez v2, :cond_6c9

    .line 178
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    :cond_6c9
    if-le v2, v4, :cond_6cd

    const/4 v6, 0x1

    goto :goto_6d5

    .line 179
    :cond_6cd
    sget-object v4, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    .line 180
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int v6, v2, v4

    :goto_6d5
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    .line 181
    :pswitch_6d8  #0x3
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    :cond_6e1
    :goto_6e1
    const/4 v6, 0x1

    goto :goto_702

    .line 182
    :pswitch_6e3  #0x2
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_702

    :pswitch_6ee  #0x1
    move v6, v14

    .line 183
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v7, v8, v4, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 184
    :goto_702
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    .line 185
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    goto/16 :goto_e

    :pswitch_data_70e
    .packed-switch 0x1
        :pswitch_6ee  #00000001
        :pswitch_6e3  #00000002
        :pswitch_6d8  #00000003
        :pswitch_6a8  #00000004
        :pswitch_67f  #00000005
        :pswitch_657  #00000006
        :pswitch_5fa  #00000007
        :pswitch_5e3  #00000008
        :pswitch_5cc  #00000009
        :pswitch_592  #0000000a
        :pswitch_57b  #0000000b
        :pswitch_564  #0000000c
        :pswitch_54e  #0000000d
        :pswitch_538  #0000000e
        :pswitch_522  #0000000f
        :pswitch_519  #00000010
        :pswitch_512  #00000011
        :pswitch_4e8  #00000012
        :pswitch_4da  #00000013
        :pswitch_4cc  #00000014
        :pswitch_4c1  #00000015
        :pswitch_48f  #00000016
        :pswitch_45d  #00000017
        :pswitch_42b  #00000018
        :pswitch_402  #00000019
        :pswitch_3ec  #0000001a
        :pswitch_3d6  #0000001b
        :pswitch_3c0  #0000001c
        :pswitch_3a3  #0000001d
        :pswitch_386  #0000001e
        :pswitch_370  #0000001f
        :pswitch_35c  #00000020
        :pswitch_344  #00000021
        :pswitch_327  #00000022
        :pswitch_311  #00000023
        :pswitch_2cc  #00000024
        :pswitch_28d  #00000025
        :pswitch_24e  #00000026
        :pswitch_21f  #00000027
        :pswitch_212  #00000028
        :pswitch_206  #00000029
        :pswitch_1e3  #0000002a
        :pswitch_1c9  #0000002b
        :pswitch_1b7  #0000002c
        :pswitch_1a0  #0000002d
        :pswitch_194  #0000002e
        :pswitch_187  #0000002f
        :pswitch_15f  #00000030
        :pswitch_13a  #00000031
        :pswitch_118  #00000032
        :pswitch_c5  #00000033
        :pswitch_71  #00000034
        :pswitch_55  #00000035
        :pswitch_45  #00000036
    .end packed-switch
.end method

.method private ExecuteStandardFilter(Lcom/junrar/unpack/vm/VMStandardFilters;)V
    .registers 37

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-object v1, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v2

    .line 9
    aget v1, v1, v2

    .line 11
    const-wide/16 v4, 0xff

    .line 13
    const v7, 0x1e000

    .line 16
    const v8, 0x3c020

    .line 19
    const/4 v10, 0x2

    .line 20
    const/4 v11, 0x3

    .line 21
    const/4 v14, 0x4

    .line 22
    const/4 v2, 0x0

    .line 23
    packed-switch v1, :pswitch_data_326

    .line 26
    goto/16 :goto_325

    .line 28
    :pswitch_1b  #0x7
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 30
    aget v1, v1, v14

    .line 32
    if-lt v1, v7, :cond_23

    .line 34
    goto/16 :goto_325

    .line 36
    :cond_23
    move v4, v1

    .line 37
    move v3, v2

    .line 38
    :goto_25
    if-ge v3, v1, :cond_44

    .line 40
    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 42
    add-int/lit8 v6, v3, 0x1

    .line 44
    aget-byte v3, v5, v3

    .line 46
    if-ne v3, v10, :cond_3d

    .line 48
    add-int/lit8 v3, v6, 0x1

    .line 50
    aget-byte v6, v5, v6

    .line 52
    if-eq v6, v10, :cond_38

    .line 54
    add-int/lit8 v6, v6, -0x20

    .line 56
    int-to-byte v6, v6

    .line 57
    :cond_38
    move/from16 v34, v6

    .line 59
    move v6, v3

    .line 60
    move/from16 v3, v34

    .line 62
    :cond_3d
    add-int/lit8 v7, v4, 0x1

    .line 64
    aput-byte v3, v5, v4

    .line 66
    move v3, v6

    .line 67
    move v4, v7

    .line 68
    goto :goto_25

    .line 69
    :cond_44
    iget-object v3, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 71
    const v5, 0x3c01c

    .line 74
    sub-int/2addr v4, v1

    .line 75
    invoke-direct {v0, v2, v3, v5, v4}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 78
    iget-object v3, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 80
    invoke-direct {v0, v2, v3, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 83
    goto/16 :goto_325

    .line 85
    :pswitch_54  #0x6
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 87
    aget v9, v1, v14

    .line 89
    aget v1, v1, v2

    .line 91
    iget-object v12, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 93
    invoke-direct {v0, v2, v12, v8, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 96
    if-lt v9, v7, :cond_63

    .line 98
    goto/16 :goto_325

    .line 100
    :cond_63
    move v7, v2

    .line 101
    move v8, v7

    .line 102
    :goto_65
    if-ge v7, v1, :cond_325

    .line 104
    const/4 v12, 0x7

    .line 105
    new-array v13, v12, [J

    .line 107
    move v3, v2

    .line 108
    move v10, v3

    .line 109
    move v14, v10

    .line 110
    move/from16 v23, v14

    .line 112
    move/from16 v24, v23

    .line 114
    move/from16 v25, v24

    .line 116
    move v12, v7

    .line 117
    move/from16 v16, v12

    .line 119
    const-wide/16 v6, 0x0

    .line 121
    const-wide/16 v21, 0x0

    .line 123
    :goto_7a
    if-ge v12, v9, :cond_181

    .line 125
    long-to-int v6, v6

    .line 126
    sub-int v7, v6, v24

    .line 128
    const-wide/16 v26, 0x8

    .line 130
    mul-long v26, v26, v21

    .line 132
    mul-int v15, v3, v6

    .line 134
    move/from16 v29, v3

    .line 136
    int-to-long v2, v15

    .line 137
    add-long v26, v26, v2

    .line 139
    mul-int v2, v14, v7

    .line 141
    int-to-long v2, v2

    .line 142
    add-long v26, v26, v2

    .line 144
    mul-int v2, v10, v23

    .line 146
    int-to-long v2, v2

    .line 147
    add-long v26, v26, v2

    .line 149
    ushr-long v2, v26, v11

    .line 151
    and-long/2addr v2, v4

    .line 152
    iget-object v15, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 154
    add-int/lit8 v26, v8, 0x1

    .line 156
    aget-byte v8, v15, v8

    .line 158
    and-int/lit16 v8, v8, 0xff

    .line 160
    int-to-long v4, v8

    .line 161
    sub-long/2addr v2, v4

    .line 162
    add-int v8, v9, v12

    .line 164
    long-to-int v11, v2

    .line 165
    int-to-byte v11, v11

    .line 166
    aput-byte v11, v15, v8

    .line 168
    move v11, v9

    .line 169
    sub-long v8, v2, v21

    .line 171
    long-to-int v8, v8

    .line 172
    int-to-byte v8, v8

    .line 173
    int-to-long v8, v8

    .line 174
    long-to-int v4, v4

    .line 175
    int-to-byte v4, v4

    .line 176
    const/4 v5, 0x3

    .line 177
    shl-int/2addr v4, v5

    .line 178
    const/4 v5, 0x0

    .line 179
    aget-wide v21, v13, v5

    .line 181
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 184
    move-result v15

    .line 185
    move-wide/from16 v30, v2

    .line 187
    int-to-long v2, v15

    .line 188
    add-long v21, v21, v2

    .line 190
    aput-wide v21, v13, v5

    .line 192
    const/4 v2, 0x1

    .line 193
    aget-wide v21, v13, v2

    .line 195
    sub-int v3, v4, v6

    .line 197
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 200
    move-result v3

    .line 201
    move-wide/from16 v32, v8

    .line 203
    int-to-long v8, v3

    .line 204
    add-long v21, v21, v8

    .line 206
    aput-wide v21, v13, v2

    .line 208
    const/4 v2, 0x2

    .line 209
    aget-wide v8, v13, v2

    .line 211
    add-int v3, v4, v6

    .line 213
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 216
    move-result v3

    .line 217
    move v15, v6

    .line 218
    int-to-long v5, v3

    .line 219
    add-long/2addr v8, v5

    .line 220
    aput-wide v8, v13, v2

    .line 222
    const/4 v2, 0x3

    .line 223
    aget-wide v5, v13, v2

    .line 225
    sub-int v3, v4, v7

    .line 227
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 230
    move-result v3

    .line 231
    int-to-long v8, v3

    .line 232
    add-long/2addr v5, v8

    .line 233
    aput-wide v5, v13, v2

    .line 235
    const/4 v2, 0x4

    .line 236
    aget-wide v5, v13, v2

    .line 238
    add-int v3, v4, v7

    .line 240
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 243
    move-result v3

    .line 244
    int-to-long v8, v3

    .line 245
    add-long/2addr v5, v8

    .line 246
    aput-wide v5, v13, v2

    .line 248
    const/4 v2, 0x5

    .line 249
    aget-wide v5, v13, v2

    .line 251
    sub-int v3, v4, v23

    .line 253
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 256
    move-result v3

    .line 257
    int-to-long v8, v3

    .line 258
    add-long/2addr v5, v8

    .line 259
    aput-wide v5, v13, v2

    .line 261
    const/4 v2, 0x6

    .line 262
    aget-wide v5, v13, v2

    .line 264
    add-int v4, v4, v23

    .line 266
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 269
    move-result v3

    .line 270
    int-to-long v3, v3

    .line 271
    add-long/2addr v5, v3

    .line 272
    aput-wide v5, v13, v2

    .line 274
    and-int/lit8 v2, v25, 0x1f

    .line 276
    if-nez v2, :cond_169

    .line 278
    const/4 v2, 0x0

    .line 279
    aget-wide v3, v13, v2

    .line 281
    const-wide/16 v18, 0x0

    .line 283
    aput-wide v18, v13, v2

    .line 285
    move-wide/from16 v8, v18

    .line 287
    const/4 v2, 0x1

    .line 288
    const/4 v5, 0x7

    .line 289
    :goto_120
    if-ge v2, v5, :cond_132

    .line 291
    aget-wide v21, v13, v2

    .line 293
    cmp-long v6, v21, v3

    .line 295
    if-gez v6, :cond_12b

    .line 297
    int-to-long v8, v2

    .line 298
    move-wide/from16 v3, v21

    .line 300
    :cond_12b
    aput-wide v18, v13, v2

    .line 302
    add-int/lit8 v2, v2, 0x1

    .line 304
    const-wide/16 v18, 0x0

    .line 306
    goto :goto_120

    .line 307
    :cond_132
    long-to-int v2, v8

    .line 308
    const/16 v3, -0x10

    .line 310
    packed-switch v2, :pswitch_data_338

    .line 313
    :cond_138
    move/from16 v4, v29

    .line 315
    goto :goto_16c

    .line 316
    :pswitch_13b  #0x6
    const/16 v2, 0x10

    .line 318
    if-ge v10, v2, :cond_138

    .line 320
    add-int/lit8 v10, v10, 0x1

    .line 322
    goto :goto_156

    .line 323
    :pswitch_142  #0x5
    const/16 v2, 0x10

    .line 325
    if-lt v10, v3, :cond_138

    .line 327
    add-int/lit8 v10, v10, -0x1

    .line 329
    goto :goto_156

    .line 330
    :pswitch_149  #0x4
    const/16 v2, 0x10

    .line 332
    if-ge v14, v2, :cond_138

    .line 334
    add-int/lit8 v14, v14, 0x1

    .line 336
    goto :goto_156

    .line 337
    :pswitch_150  #0x3
    const/16 v2, 0x10

    .line 339
    if-lt v14, v3, :cond_138

    .line 341
    add-int/lit8 v14, v14, -0x1

    .line 343
    :goto_156
    move/from16 v3, v29

    .line 345
    goto :goto_16d

    .line 346
    :pswitch_159  #0x2
    move/from16 v4, v29

    .line 348
    const/16 v2, 0x10

    .line 350
    if-ge v4, v2, :cond_16c

    .line 352
    add-int/lit8 v3, v4, 0x1

    .line 354
    goto :goto_16d

    .line 355
    :pswitch_162  #0x1
    move/from16 v4, v29

    .line 357
    if-lt v4, v3, :cond_16c

    .line 359
    add-int/lit8 v3, v4, -0x1

    .line 361
    goto :goto_16d

    .line 362
    :cond_169
    move/from16 v4, v29

    .line 364
    const/4 v5, 0x7

    .line 365
    :cond_16c
    :goto_16c
    move v3, v4

    .line 366
    :goto_16d
    add-int/2addr v12, v1

    .line 367
    add-int/lit8 v25, v25, 0x1

    .line 369
    move/from16 v23, v7

    .line 371
    move v9, v11

    .line 372
    move/from16 v24, v15

    .line 374
    move/from16 v8, v26

    .line 376
    move-wide/from16 v21, v30

    .line 378
    move-wide/from16 v6, v32

    .line 380
    const/4 v2, 0x0

    .line 381
    const-wide/16 v4, 0xff

    .line 383
    const/4 v11, 0x3

    .line 384
    goto/16 :goto_7a

    .line 386
    :cond_181
    move v11, v9

    .line 387
    add-int/lit8 v7, v16, 0x1

    .line 389
    const/4 v2, 0x0

    .line 390
    const-wide/16 v4, 0xff

    .line 392
    const/4 v10, 0x2

    .line 393
    const/4 v11, 0x3

    .line 394
    const/4 v14, 0x4

    .line 395
    goto/16 :goto_65

    .line 397
    :pswitch_18c  #0x5
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 399
    const/4 v2, 0x4

    .line 400
    aget v2, v1, v2

    .line 402
    const/4 v3, 0x0

    .line 403
    aget v4, v1, v3

    .line 405
    const/4 v5, 0x3

    .line 406
    sub-int/2addr v4, v5

    .line 407
    const/4 v6, 0x1

    .line 408
    aget v1, v1, v6

    .line 410
    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 412
    invoke-direct {v0, v3, v6, v8, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 415
    if-ge v2, v7, :cond_325

    .line 417
    if-gez v1, :cond_1a4

    .line 419
    goto/16 :goto_325

    .line 421
    :cond_1a4
    const/4 v3, 0x0

    .line 422
    const/16 v28, 0x0

    .line 424
    :goto_1a7
    if-ge v3, v5, :cond_20f

    .line 426
    move v8, v3

    .line 427
    const-wide/16 v6, 0x0

    .line 429
    :goto_1ac
    if-ge v8, v2, :cond_207

    .line 431
    sub-int v9, v8, v4

    .line 433
    if-lt v9, v5, :cond_1e8

    .line 435
    add-int/2addr v9, v2

    .line 436
    iget-object v10, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 438
    aget-byte v11, v10, v9

    .line 440
    and-int/lit16 v11, v11, 0xff

    .line 442
    sub-int/2addr v9, v5

    .line 443
    aget-byte v9, v10, v9

    .line 445
    and-int/lit16 v9, v9, 0xff

    .line 447
    int-to-long v10, v11

    .line 448
    add-long v12, v6, v10

    .line 450
    int-to-long v14, v9

    .line 451
    sub-long/2addr v12, v14

    .line 452
    move/from16 p1, v4

    .line 454
    sub-long v4, v12, v6

    .line 456
    long-to-int v4, v4

    .line 457
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 460
    move-result v4

    .line 461
    move-wide/from16 v16, v6

    .line 463
    sub-long v5, v12, v10

    .line 465
    long-to-int v5, v5

    .line 466
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 469
    move-result v5

    .line 470
    sub-long/2addr v12, v14

    .line 471
    long-to-int v6, v12

    .line 472
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 475
    move-result v6

    .line 476
    if-gt v4, v5, :cond_1e2

    .line 478
    if-gt v4, v6, :cond_1e2

    .line 480
    move-wide/from16 v6, v16

    .line 482
    goto :goto_1ec

    .line 483
    :cond_1e2
    if-gt v5, v6, :cond_1e6

    .line 485
    move-wide v6, v10

    .line 486
    goto :goto_1ec

    .line 487
    :cond_1e6
    move-wide v6, v14

    .line 488
    goto :goto_1ec

    .line 489
    :cond_1e8
    move/from16 p1, v4

    .line 491
    move-wide/from16 v16, v6

    .line 493
    :goto_1ec
    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 495
    add-int/lit8 v5, v28, 0x1

    .line 497
    aget-byte v9, v4, v28

    .line 499
    int-to-long v9, v9

    .line 500
    sub-long/2addr v6, v9

    .line 501
    const-wide/16 v9, 0xff

    .line 503
    and-long/2addr v6, v9

    .line 504
    add-int v11, v2, v8

    .line 506
    and-long v12, v6, v9

    .line 508
    long-to-int v12, v12

    .line 509
    int-to-byte v12, v12

    .line 510
    aput-byte v12, v4, v11

    .line 512
    add-int/lit8 v8, v8, 0x3

    .line 514
    move/from16 v4, p1

    .line 516
    move/from16 v28, v5

    .line 518
    const/4 v5, 0x3

    .line 519
    goto :goto_1ac

    .line 520
    :cond_207
    move/from16 p1, v4

    .line 522
    const-wide/16 v9, 0xff

    .line 524
    add-int/lit8 v3, v3, 0x1

    .line 526
    const/4 v5, 0x3

    .line 527
    goto :goto_1a7

    .line 528
    :cond_20f
    add-int/lit8 v3, v2, -0x2

    .line 530
    :goto_211
    if-ge v1, v3, :cond_325

    .line 532
    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 534
    add-int v5, v2, v1

    .line 536
    add-int/lit8 v6, v5, 0x1

    .line 538
    aget-byte v6, v4, v6

    .line 540
    aget-byte v7, v4, v5

    .line 542
    add-int/2addr v7, v6

    .line 543
    int-to-byte v7, v7

    .line 544
    aput-byte v7, v4, v5

    .line 546
    const/4 v7, 0x2

    .line 547
    add-int/2addr v5, v7

    .line 548
    aget-byte v7, v4, v5

    .line 550
    add-int/2addr v7, v6

    .line 551
    int-to-byte v6, v7

    .line 552
    aput-byte v6, v4, v5

    .line 554
    add-int/lit8 v1, v1, 0x3

    .line 556
    goto :goto_211

    .line 557
    :pswitch_22c  #0x4
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 559
    const/4 v2, 0x4

    .line 560
    aget v2, v1, v2

    .line 562
    const/4 v3, 0x0

    .line 563
    aget v1, v1, v3

    .line 565
    mul-int/lit8 v4, v2, 0x2

    .line 567
    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 569
    invoke-direct {v0, v3, v5, v8, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 572
    if-lt v2, v7, :cond_23f

    .line 574
    goto/16 :goto_325

    .line 576
    :cond_23f
    const/4 v3, 0x0

    .line 577
    const/4 v5, 0x0

    .line 578
    :goto_241
    if-ge v3, v1, :cond_325

    .line 580
    add-int v6, v2, v3

    .line 582
    const/4 v7, 0x0

    .line 583
    :goto_246
    if-ge v6, v4, :cond_255

    .line 585
    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 587
    add-int/lit8 v9, v5, 0x1

    .line 589
    aget-byte v5, v8, v5

    .line 591
    sub-int/2addr v7, v5

    .line 592
    int-to-byte v7, v7

    .line 593
    aput-byte v7, v8, v6

    .line 595
    add-int/2addr v6, v1

    .line 596
    move v5, v9

    .line 597
    goto :goto_246

    .line 598
    :cond_255
    add-int/lit8 v3, v3, 0x1

    .line 600
    goto :goto_241

    .line 601
    :pswitch_258  #0x3
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 603
    const/4 v2, 0x4

    .line 604
    aget v3, v1, v2

    .line 606
    const/4 v4, 0x6

    .line 607
    aget v1, v1, v4

    .line 609
    int-to-long v4, v1

    .line 610
    const v1, 0x3c000

    .line 613
    if-lt v3, v1, :cond_268

    .line 615
    goto/16 :goto_325

    .line 617
    :cond_268
    const/16 v1, 0x10

    .line 619
    new-array v6, v1, [B

    .line 621
    fill-array-data v6, :array_348

    .line 624
    ushr-long/2addr v4, v2

    .line 625
    const/4 v2, 0x0

    .line 626
    :goto_271
    add-int/lit8 v7, v3, -0x15

    .line 628
    if-ge v2, v7, :cond_325

    .line 630
    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 632
    aget-byte v7, v7, v2

    .line 634
    and-int/lit8 v7, v7, 0x1f

    .line 636
    sub-int/2addr v7, v1

    .line 637
    if-ltz v7, :cond_2b0

    .line 639
    aget-byte v7, v6, v7

    .line 641
    if-eqz v7, :cond_2b0

    .line 643
    const/4 v8, 0x0

    .line 644
    const/4 v9, 0x2

    .line 645
    :goto_284
    const/4 v10, 0x1

    .line 646
    if-gt v8, v9, :cond_2b2

    .line 648
    shl-int v11, v10, v8

    .line 650
    and-int/2addr v11, v7

    .line 651
    if-eqz v11, :cond_2ac

    .line 653
    mul-int/lit8 v11, v8, 0x29

    .line 655
    const/4 v12, 0x5

    .line 656
    add-int/2addr v11, v12

    .line 657
    add-int/lit8 v13, v11, 0x25

    .line 659
    const/4 v14, 0x4

    .line 660
    invoke-direct {v0, v2, v13, v14}, Lcom/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    .line 663
    move-result v13

    .line 664
    if-ne v13, v12, :cond_2ad

    .line 666
    add-int/lit8 v11, v11, 0xd

    .line 668
    const/16 v13, 0x14

    .line 670
    invoke-direct {v0, v2, v11, v13}, Lcom/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    .line 673
    move-result v14

    .line 674
    int-to-long v14, v14

    .line 675
    sub-long/2addr v14, v4

    .line 676
    long-to-int v14, v14

    .line 677
    const v15, 0xfffff

    .line 680
    and-int/2addr v14, v15

    .line 681
    invoke-direct {v0, v2, v14, v11, v13}, Lcom/junrar/unpack/vm/RarVM;->filterItanium_SetBits(IIII)V

    .line 684
    goto :goto_2ad

    .line 685
    :cond_2ac
    const/4 v12, 0x5

    .line 686
    :cond_2ad
    :goto_2ad
    add-int/lit8 v8, v8, 0x1

    .line 688
    goto :goto_284

    .line 689
    :cond_2b0
    const/4 v9, 0x2

    .line 690
    const/4 v10, 0x1

    .line 691
    :cond_2b2
    const/4 v12, 0x5

    .line 692
    add-int/lit8 v2, v2, 0x10

    .line 694
    const-wide/16 v7, 0x1

    .line 696
    add-long/2addr v4, v7

    .line 697
    goto :goto_271

    .line 698
    :pswitch_2b9  #0x1, 0x2
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 700
    const/4 v2, 0x4

    .line 701
    aget v3, v1, v2

    .line 703
    const/4 v2, 0x6

    .line 704
    aget v1, v1, v2

    .line 706
    int-to-long v1, v1

    .line 707
    const v4, 0x3c000

    .line 710
    if-lt v3, v4, :cond_2c8

    .line 712
    goto :goto_325

    .line 713
    :cond_2c8
    const/high16 v4, 0x1000000

    .line 715
    sget-object v5, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 717
    const/16 v6, 0xe8

    .line 719
    move-object/from16 v7, p1

    .line 721
    if-ne v7, v5, :cond_2d5

    .line 723
    const/16 v5, 0xe9

    .line 725
    goto :goto_2d6

    .line 726
    :cond_2d5
    move v5, v6

    .line 727
    :goto_2d6
    int-to-byte v5, v5

    .line 728
    const/4 v7, 0x0

    .line 729
    :goto_2d8
    const/4 v8, 0x4

    .line 730
    add-int/lit8 v9, v3, -0x4

    .line 732
    if-ge v7, v9, :cond_325

    .line 734
    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 736
    add-int/lit8 v10, v7, 0x1

    .line 738
    aget-byte v7, v9, v7

    .line 740
    if-eq v7, v6, :cond_2ec

    .line 742
    if-ne v7, v5, :cond_2e8

    .line 744
    goto :goto_2ec

    .line 745
    :cond_2e8
    const/4 v7, 0x0

    .line 746
    const-wide/16 v17, 0x0

    .line 748
    goto :goto_323

    .line 749
    :cond_2ec
    :goto_2ec
    int-to-long v11, v10

    .line 750
    add-long/2addr v11, v1

    .line 751
    const/4 v7, 0x0

    .line 752
    invoke-direct {v0, v7, v9, v10}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    .line 755
    move-result v9

    .line 756
    int-to-long v13, v9

    .line 757
    const-wide/32 v15, -0x80000000

    .line 760
    and-long v20, v13, v15

    .line 762
    const-wide/16 v17, 0x0

    .line 764
    cmp-long v7, v20, v17

    .line 766
    if-eqz v7, :cond_311

    .line 768
    add-long/2addr v11, v13

    .line 769
    and-long/2addr v11, v15

    .line 770
    cmp-long v7, v11, v17

    .line 772
    if-nez v7, :cond_30f

    .line 774
    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 776
    long-to-int v9, v13

    .line 777
    add-int/2addr v9, v4

    .line 778
    const/4 v11, 0x0

    .line 779
    invoke-direct {v0, v11, v7, v10, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 782
    move v7, v11

    .line 783
    goto :goto_321

    .line 784
    :cond_30f
    const/4 v7, 0x0

    .line 785
    goto :goto_321

    .line 786
    :cond_311
    const/4 v7, 0x0

    .line 787
    int-to-long v8, v4

    .line 788
    sub-long v8, v13, v8

    .line 790
    and-long/2addr v8, v15

    .line 791
    cmp-long v8, v8, v17

    .line 793
    if-eqz v8, :cond_321

    .line 795
    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 797
    sub-long/2addr v13, v11

    .line 798
    long-to-int v9, v13

    .line 799
    invoke-direct {v0, v7, v8, v10, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 802
    :cond_321
    :goto_321
    add-int/lit8 v10, v10, 0x4

    .line 804
    :goto_323
    move v7, v10

    .line 805
    goto :goto_2d8

    .line 806
    :cond_325
    :goto_325
    return-void

    .line 807
    :pswitch_data_326
    .packed-switch 0x1
        :pswitch_2b9  #00000001
        :pswitch_2b9  #00000002
        :pswitch_258  #00000003
        :pswitch_22c  #00000004
        :pswitch_18c  #00000005
        :pswitch_54  #00000006
        :pswitch_1b  #00000007
    .end packed-switch

    .line 825
    :pswitch_data_338
    .packed-switch 0x1
        :pswitch_162  #00000001
        :pswitch_159  #00000002
        :pswitch_150  #00000003
        :pswitch_149  #00000004
        :pswitch_142  #00000005
        :pswitch_13b  #00000006
    .end packed-switch

    :array_348
    .array-data 1
        0x4t
        0x4t
        0x6t
        0x6t
        0x0t
        0x0t
        0x7t
        0x7t
        0x4t
        0x4t
        0x0t
        0x0t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method private IsStandardFilter([B)Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 9

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 4
    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 6
    sget-object v3, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 8
    const/16 v4, 0x35

    .line 10
    const v5, -0x52a89779

    .line 13
    invoke-direct {v2, v4, v5, v3}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 19
    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 21
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 23
    const/16 v5, 0x39

    .line 25
    const v6, 0x3cd7e57e

    .line 28
    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    .line 31
    const/4 v4, 0x1

    .line 32
    aput-object v2, v1, v4

    .line 34
    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 36
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 38
    const/16 v5, 0x78

    .line 40
    const v6, 0x3769893f

    .line 43
    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    .line 46
    const/4 v4, 0x2

    .line 47
    aput-object v2, v1, v4

    .line 49
    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 51
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 53
    const/16 v5, 0x1d

    .line 55
    const v6, 0xe06077d

    .line 58
    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    .line 61
    const/4 v4, 0x3

    .line 62
    aput-object v2, v1, v4

    .line 64
    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 66
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 68
    const/16 v5, 0x95

    .line 70
    const v6, 0x1c2c5dc8

    .line 73
    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    .line 76
    const/4 v4, 0x4

    .line 77
    aput-object v2, v1, v4

    .line 79
    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 81
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 83
    const/16 v5, 0xd8

    .line 85
    const v6, -0x437a18ff

    .line 88
    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    .line 91
    const/4 v4, 0x5

    .line 92
    aput-object v2, v1, v4

    .line 94
    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    .line 96
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 98
    const/16 v5, 0x28

    .line 100
    const v6, 0x46b9c560  # 23778.688f

    .line 103
    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    .line 106
    const/4 v4, 0x6

    .line 107
    aput-object v2, v1, v4

    .line 109
    array-length v2, p1

    .line 110
    const/4 v4, -0x1

    .line 111
    invoke-static {v4, p1, v3, v2}, Lcom/junrar/crc/RarCRC;->checkCrc(I[BII)I

    .line 114
    move-result v2

    .line 115
    not-int v2, v2

    .line 116
    :goto_73
    if-ge v3, v0, :cond_8c

    .line 118
    aget-object v4, v1, v3

    .line 120
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->getCRC()I

    .line 123
    move-result v5

    .line 124
    if-ne v5, v2, :cond_89

    .line 126
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->getLength()I

    .line 129
    move-result v5

    .line 130
    array-length v6, p1

    .line 131
    if-ne v5, v6, :cond_89

    .line 133
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->getType()Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_89
    add-int/lit8 v3, v3, 0x1

    .line 140
    goto :goto_73

    .line 141
    :cond_8c
    sget-object p1, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 143
    return-object p1
.end method

.method public static ReadData(Lcom/junrar/unpack/vm/BitInput;)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 4
    move-result v0

    .line 5
    const v1, 0xc000

    .line 8
    and-int/2addr v1, v0

    .line 9
    const/16 v2, 0xa

    .line 11
    const/4 v3, 0x6

    .line 12
    if-eqz v1, :cond_4e

    .line 14
    const/16 v4, 0x4000

    .line 16
    const/4 v5, 0x2

    .line 17
    if-eq v1, v4, :cond_38

    .line 19
    const v0, 0x8000

    .line 22
    const/16 v2, 0x10

    .line 24
    if-eq v1, v0, :cond_2d

    .line 26
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 29
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 32
    move-result v0

    .line 33
    shl-int/2addr v0, v2

    .line 34
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 37
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 40
    move-result v1

    .line 41
    or-int/2addr v0, v1

    .line 42
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 45
    return v0

    .line 46
    :cond_2d
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 49
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 56
    return v0

    .line 57
    :cond_38
    and-int/lit16 v1, v0, 0x3c00

    .line 59
    if-nez v1, :cond_47

    .line 61
    shr-int/2addr v0, v5

    .line 62
    and-int/lit16 v0, v0, 0xff

    .line 64
    or-int/lit16 v0, v0, -0x100

    .line 66
    const/16 v1, 0xe

    .line 68
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 71
    goto :goto_4d

    .line 72
    :cond_47
    shr-int/2addr v0, v3

    .line 73
    and-int/lit16 v0, v0, 0xff

    .line 75
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 78
    :goto_4d
    return v0

    .line 79
    :cond_4e
    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 82
    shr-int/lit8 p0, v0, 0xa

    .line 84
    and-int/lit8 p0, p0, 0xf

    .line 86
    return p0
.end method

.method private decodeArg(Lcom/junrar/unpack/vm/VMPreparedOperand;Z)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x8000

    .line 8
    and-int/2addr v1, v0

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x7

    .line 11
    if-eqz v1, :cond_22

    .line 13
    sget-object p2, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/junrar/unpack/vm/VMOpType;

    .line 15
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 18
    shr-int/lit8 p2, v0, 0xc

    .line 20
    and-int/2addr p2, v3

    .line 21
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 24
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    .line 27
    move-result p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 34
    goto :goto_89

    .line 35
    :cond_22
    const v1, 0xc000

    .line 38
    and-int/2addr v1, v0

    .line 39
    const/4 v4, 0x6

    .line 40
    const/16 v5, 0xa

    .line 42
    if-nez v1, :cond_49

    .line 44
    sget-object v1, Lcom/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/junrar/unpack/vm/VMOpType;

    .line 46
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 49
    if-eqz p2, :cond_3d

    .line 51
    shr-int/lit8 p2, v0, 0x6

    .line 53
    and-int/lit16 p2, p2, 0xff

    .line 55
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 61
    goto :goto_89

    .line 62
    :cond_3d
    const/4 p2, 0x2

    .line 63
    invoke-virtual {p0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 66
    invoke-static {p0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 73
    goto :goto_89

    .line 74
    :cond_49
    sget-object p2, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/junrar/unpack/vm/VMOpType;

    .line 76
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 79
    and-int/lit16 p2, v0, 0x2000

    .line 81
    const/4 v1, 0x0

    .line 82
    if-nez p2, :cond_67

    .line 84
    shr-int/lit8 p2, v0, 0xa

    .line 86
    and-int/2addr p2, v3

    .line 87
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 90
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    .line 93
    move-result p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 97
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 103
    goto :goto_89

    .line 104
    :cond_67
    and-int/lit16 p2, v0, 0x1000

    .line 106
    if-nez p2, :cond_7c

    .line 108
    shr-int/lit8 p2, v0, 0x9

    .line 110
    and-int/2addr p2, v3

    .line 111
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 114
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    .line 117
    move-result p2

    .line 118
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 124
    goto :goto_82

    .line 125
    :cond_7c
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 131
    :goto_82
    invoke-static {p0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 134
    move-result p2

    .line 135
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    .line 138
    :goto_89
    return-void
.end method

.method private filterItanium_GetBits(III)I
    .registers 8

    .line 1
    div-int/lit8 v0, p2, 0x8

    .line 3
    and-int/lit8 p2, p2, 0x7

    .line 5
    iget-object v1, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 7
    add-int/lit8 v2, v0, 0x1

    .line 9
    add-int/2addr v0, p1

    .line 10
    aget-byte v0, v1, v0

    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 16
    add-int/2addr v2, p1

    .line 17
    aget-byte v2, v1, v2

    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 21
    shl-int/lit8 v2, v2, 0x8

    .line 23
    or-int/2addr v0, v2

    .line 24
    add-int/lit8 v2, v3, 0x1

    .line 26
    add-int/2addr v3, p1

    .line 27
    aget-byte v3, v1, v3

    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 31
    shl-int/lit8 v3, v3, 0x10

    .line 33
    or-int/2addr v0, v3

    .line 34
    add-int/2addr p1, v2

    .line 35
    aget-byte p1, v1, p1

    .line 37
    and-int/lit16 p1, p1, 0xff

    .line 39
    shl-int/lit8 p1, p1, 0x18

    .line 41
    or-int/2addr p1, v0

    .line 42
    ushr-int/2addr p1, p2

    .line 43
    rsub-int/lit8 p2, p3, 0x20

    .line 45
    const/4 p3, -0x1

    .line 46
    ushr-int p2, p3, p2

    .line 48
    and-int/2addr p1, p2

    .line 49
    return p1
.end method

.method private filterItanium_SetBits(IIII)V
    .registers 9

    .line 1
    div-int/lit8 v0, p3, 0x8

    .line 3
    and-int/lit8 p3, p3, 0x7

    .line 5
    rsub-int/lit8 p4, p4, 0x20

    .line 7
    const/4 v1, -0x1

    .line 8
    ushr-int p4, v1, p4

    .line 10
    shl-int/2addr p4, p3

    .line 11
    not-int p4, p4

    .line 12
    shl-int/2addr p2, p3

    .line 13
    const/4 p3, 0x0

    .line 14
    :goto_d
    const/4 v1, 0x4

    .line 15
    if-ge p3, v1, :cond_29

    .line 17
    iget-object v1, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 19
    add-int v2, p1, v0

    .line 21
    add-int/2addr v2, p3

    .line 22
    aget-byte v3, v1, v2

    .line 24
    and-int/2addr v3, p4

    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v1, v2

    .line 28
    or-int/2addr v3, p2

    .line 29
    int-to-byte v3, v3

    .line 30
    aput-byte v3, v1, v2

    .line 32
    ushr-int/lit8 p4, p4, 0x8

    .line 34
    const/high16 v1, -0x1000000

    .line 36
    or-int/2addr p4, v1

    .line 37
    ushr-int/lit8 p2, p2, 0x8

    .line 39
    add-int/lit8 p3, p3, 0x1

    .line 41
    goto :goto_d

    .line 42
    :cond_29
    return-void
.end method

.method private getOperand(Lcom/junrar/unpack/vm/VMPreparedOperand;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/junrar/unpack/vm/VMOpType;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/junrar/unpack/vm/VMOpType;

    .line 7
    if-ne v0, v1, :cond_1c

    .line 9
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getBase()I

    .line 16
    move-result p1

    .line 17
    add-int/2addr p1, v0

    .line 18
    const v0, 0x3ffff

    .line 21
    and-int/2addr p1, v0

    .line 22
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 24
    invoke-static {v0, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 27
    move-result p1

    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 35
    invoke-static {v0, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 38
    move-result p1

    .line 39
    :goto_26
    return p1
.end method

.method private getValue(Z[BI)I
    .registers 4

    .line 1
    if-eqz p1, :cond_10

    .line 3
    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_b

    .line 9
    aget-byte p1, p2, p3

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    aget-byte p1, p2, p3

    .line 14
    and-int/lit16 p1, p1, 0xff

    .line 16
    :goto_f
    return p1

    .line 17
    :cond_10
    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1b

    .line 23
    invoke-static {p2, p3}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 26
    move-result p1

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    invoke-static {p2, p3}, Lcom/junrar/io/Raw;->readIntBigEndian([BI)I

    .line 31
    move-result p1

    .line 32
    :goto_1f
    return p1
.end method

.method private isVMMem([B)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method private optimize(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f6

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/junrar/unpack/vm/VMPreparedCommand;

    .line 21
    sget-object v2, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 23
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v3

    .line 31
    aget v2, v2, v3

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eq v2, v3, :cond_e6

    .line 36
    const/4 v4, 0x4

    .line 37
    if-eq v2, v4, :cond_d6

    .line 39
    sget-object v2, Lcom/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 41
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    .line 48
    move-result v4

    .line 49
    aget-byte v2, v2, v4

    .line 51
    and-int/lit8 v2, v2, 0x40

    .line 53
    if-nez v2, :cond_37

    .line 55
    goto :goto_8

    .line 56
    :cond_37
    const/4 v2, 0x0

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 60
    move-result v4

    .line 61
    add-int/2addr v4, v3

    .line 62
    :goto_3d
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 65
    move-result v5

    .line 66
    if-ge v4, v5, :cond_62

    .line 68
    sget-object v5, Lcom/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 70
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lcom/junrar/unpack/vm/VMPreparedCommand;

    .line 76
    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    .line 83
    move-result v6

    .line 84
    aget-byte v5, v5, v6

    .line 86
    and-int/lit8 v6, v5, 0x38

    .line 88
    if-eqz v6, :cond_5a

    .line 90
    goto :goto_63

    .line 91
    :cond_5a
    and-int/lit8 v5, v5, 0x40

    .line 93
    if-eqz v5, :cond_5f

    .line 95
    goto :goto_62

    .line 96
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    .line 98
    goto :goto_3d

    .line 99
    :cond_62
    :goto_62
    move v3, v2

    .line 100
    :goto_63
    if-eqz v3, :cond_66

    .line 102
    goto :goto_8

    .line 103
    :cond_66
    sget-object v2, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 105
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 112
    move-result v3

    .line 113
    aget v2, v2, v3

    .line 115
    const/4 v3, 0x7

    .line 116
    if-eq v2, v3, :cond_c6

    .line 118
    const/16 v3, 0xa

    .line 120
    if-eq v2, v3, :cond_b6

    .line 122
    const/16 v3, 0xf

    .line 124
    if-eq v2, v3, :cond_a6

    .line 126
    const/16 v3, 0x12

    .line 128
    if-eq v2, v3, :cond_96

    .line 130
    const/16 v3, 0x27

    .line 132
    if-eq v2, v3, :cond_86

    .line 134
    goto :goto_8

    .line 135
    :cond_86
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_8f

    .line 141
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    .line 143
    goto :goto_91

    .line 144
    :cond_8f
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    .line 146
    :goto_91
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 149
    goto/16 :goto_8

    .line 151
    :cond_96
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_9f

    .line 157
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    .line 159
    goto :goto_a1

    .line 160
    :cond_9f
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    .line 162
    :goto_a1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 165
    goto/16 :goto_8

    .line 167
    :cond_a6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_af

    .line 173
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    .line 175
    goto :goto_b1

    .line 176
    :cond_af
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    .line 178
    :goto_b1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 181
    goto/16 :goto_8

    .line 183
    :cond_b6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_bf

    .line 189
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    .line 191
    goto :goto_c1

    .line 192
    :cond_bf
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    .line 194
    :goto_c1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 197
    goto/16 :goto_8

    .line 199
    :cond_c6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_cf

    .line 205
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    .line 207
    goto :goto_d1

    .line 208
    :cond_cf
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    .line 210
    :goto_d1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 213
    goto/16 :goto_8

    .line 215
    :cond_d6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_df

    .line 221
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    .line 223
    goto :goto_e1

    .line 224
    :cond_df
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    .line 226
    :goto_e1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 229
    goto/16 :goto_8

    .line 231
    :cond_e6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_ef

    .line 237
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    .line 239
    goto :goto_f1

    .line 240
    :cond_ef
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    .line 242
    :goto_f1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 245
    goto/16 :goto_8

    .line 247
    :cond_f6
    return-void
.end method

.method private setIP(I)Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/RarVM;->codeSize:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget v0, p0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 12
    if-gtz v0, :cond_f

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_f
    iput p1, p0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    .line 18
    return v1
.end method

.method private setValue(Z[BII)V
    .registers 5

    .line 1
    if-eqz p1, :cond_10

    .line 3
    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_a

    .line 9
    int-to-byte p1, p4

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    and-int/lit16 p1, p4, 0xff

    .line 13
    int-to-byte p1, p1

    .line 14
    :goto_d
    aput-byte p1, p2, p3

    .line 16
    goto :goto_1d

    .line 17
    :cond_10
    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1a

    .line 23
    invoke-static {p2, p3, p4}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    invoke-static {p2, p3, p4}, Lcom/junrar/io/Raw;->writeIntBigEndian([BII)V

    .line 30
    :goto_1d
    return-void
.end method


# virtual methods
.method public execute(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 7
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 10
    move-result-object v2

    .line 11
    array-length v2, v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x2000

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result v0

    .line 30
    int-to-long v0, v0

    .line 31
    const-wide/16 v4, 0x0

    .line 33
    cmp-long v2, v0, v4

    .line 35
    const v6, 0x3c000

    .line 38
    if-eqz v2, :cond_44

    .line 40
    move v2, v3

    .line 41
    :goto_28
    int-to-long v7, v2

    .line 42
    cmp-long v7, v7, v0

    .line 44
    if-gez v7, :cond_44

    .line 46
    iget-object v7, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 48
    add-int v8, v2, v6

    .line 50
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Ljava/lang/Byte;

    .line 60
    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    .line 63
    move-result v9

    .line 64
    aput-byte v9, v7, v8

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_28

    .line 69
    :cond_44
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 76
    move-result v2

    .line 77
    int-to-long v7, v2

    .line 78
    const-wide/16 v9, 0x2000

    .line 80
    sub-long/2addr v9, v0

    .line 81
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 84
    move-result-wide v7

    .line 85
    cmp-long v2, v7, v4

    .line 87
    if-eqz v2, :cond_76

    .line 89
    move v2, v3

    .line 90
    :goto_59
    int-to-long v4, v2

    .line 91
    cmp-long v4, v4, v7

    .line 93
    if-gez v4, :cond_76

    .line 95
    iget-object v4, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 97
    long-to-int v5, v0

    .line 98
    add-int/2addr v5, v6

    .line 99
    add-int/2addr v5, v2

    .line 100
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v9, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Ljava/lang/Byte;

    .line 110
    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    .line 113
    move-result v9

    .line 114
    aput-byte v9, v4, v5

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 118
    goto :goto_59

    .line 119
    :cond_76
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    .line 121
    const/4 v1, 0x7

    .line 122
    const/high16 v2, 0x40000

    .line 124
    aput v2, v0, v1

    .line 126
    iput v3, p0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    .line 128
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_8e

    .line 138
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    .line 141
    move-result-object v0

    .line 142
    goto :goto_92

    .line 143
    :cond_8e
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    .line 146
    move-result-object v0

    .line 147
    :goto_92
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    .line 150
    move-result v1

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/vm/RarVM;->ExecuteCode(Ljava/util/List;I)Z

    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_a7

    .line 157
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/junrar/unpack/vm/VMPreparedCommand;

    .line 163
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    .line 165
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 168
    :cond_a7
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 170
    const v1, 0x3c020

    .line 173
    invoke-direct {p0, v3, v0, v1}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    .line 176
    move-result v0

    .line 177
    const v1, 0x3ffff

    .line 180
    and-int/2addr v0, v1

    .line 181
    iget-object v4, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 183
    const v5, 0x3c01c

    .line 186
    invoke-direct {p0, v3, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    .line 189
    move-result v4

    .line 190
    and-int/2addr v1, v4

    .line 191
    add-int v4, v0, v1

    .line 193
    if-lt v4, v2, :cond_c4

    .line 195
    move v0, v3

    .line 196
    move v1, v0

    .line 197
    :cond_c4
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataOffset(I)V

    .line 200
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataSize(I)V

    .line 203
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 210
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 212
    const v1, 0x3c030

    .line 215
    invoke-direct {p0, v3, v0, v1}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    .line 218
    move-result v0

    .line 219
    const/16 v1, 0x1fc0

    .line 221
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_101

    .line 227
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 230
    move-result-object v1

    .line 231
    add-int/lit8 v0, v0, 0x40

    .line 233
    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    .line 236
    :goto_eb
    if-ge v3, v0, :cond_101

    .line 238
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 241
    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 244
    add-int v4, v3, v6

    .line 246
    aget-byte v2, v2, v4

    .line 248
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v3, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 257
    goto :goto_eb

    .line 258
    :cond_101
    return-void
.end method

.method public getMem()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 3
    if-nez v0, :cond_b

    .line 5
    const v0, 0x40004

    .line 8
    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 12
    :cond_b
    return-void
.end method

.method public prepare([BILcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->InitBitInput()V

    .line 4
    const v0, 0x8000

    .line 7
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    if-ge v3, v1, :cond_1b

    .line 15
    iget-object v4, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 17
    aget-byte v5, v4, v3

    .line 19
    aget-byte v6, p1, v3

    .line 21
    or-int/2addr v5, v6

    .line 22
    int-to-byte v5, v5

    .line 23
    aput-byte v5, v4, v3

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_c

    .line 28
    :cond_1b
    const/4 v1, 0x1

    .line 29
    move v3, v1

    .line 30
    move v4, v2

    .line 31
    :goto_1e
    if-ge v3, p2, :cond_27

    .line 33
    aget-byte v5, p1, v3

    .line 35
    xor-int/2addr v4, v5

    .line 36
    int-to-byte v4, v4

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_1e

    .line 40
    :cond_27
    const/16 v3, 0x8

    .line 42
    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 45
    invoke-virtual {p3, v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 48
    aget-byte v5, p1, v2

    .line 50
    if-ne v4, v5, :cond_155

    .line 52
    invoke-direct {p0, p1}, Lcom/junrar/unpack/vm/RarVM;->IsStandardFilter([B)Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 55
    move-result-object p1

    .line 56
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 58
    if-eq p1, v4, :cond_70

    .line 60
    new-instance p2, Lcom/junrar/unpack/vm/VMPreparedCommand;

    .line 62
    invoke-direct {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 65
    sget-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    .line 67
    invoke-virtual {p2, v4}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 70
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMStandardFilters;->getFilter()I

    .line 77
    move-result p1

    .line 78
    invoke-virtual {v4, p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 81
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 84
    move-result-object p1

    .line 85
    sget-object v4, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    .line 87
    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 90
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 97
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    .line 107
    move-result p1

    .line 108
    add-int/2addr p1, v1

    .line 109
    invoke-virtual {p3, p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 112
    move p2, v2

    .line 113
    :cond_70
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 116
    :goto_73
    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 118
    if-ge p1, p2, :cond_155

    .line 120
    new-instance p1, Lcom/junrar/unpack/vm/VMPreparedCommand;

    .line 122
    invoke-direct {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 128
    move-result v4

    .line 129
    and-int v5, v4, v0

    .line 131
    const/4 v6, 0x4

    .line 132
    if-nez v5, :cond_92

    .line 134
    shr-int/lit8 v4, v4, 0xc

    .line 136
    invoke-static {v4}, Lcom/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/junrar/unpack/vm/VMCommands;

    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 146
    goto :goto_a1

    .line 147
    :cond_92
    shr-int/lit8 v4, v4, 0xa

    .line 149
    add-int/lit8 v4, v4, -0x18

    .line 151
    invoke-static {v4}, Lcom/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/junrar/unpack/vm/VMCommands;

    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 158
    const/4 v4, 0x6

    .line 159
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 162
    :goto_a1
    sget-object v4, Lcom/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 164
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    .line 171
    move-result v5

    .line 172
    aget-byte v5, v4, v5

    .line 174
    and-int/2addr v5, v6

    .line 175
    if-eqz v5, :cond_c2

    .line 177
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 180
    move-result v5

    .line 181
    shr-int/lit8 v5, v5, 0xf

    .line 183
    if-ne v5, v1, :cond_ba

    .line 185
    move v5, v1

    .line 186
    goto :goto_bb

    .line 187
    :cond_ba
    move v5, v2

    .line 188
    :goto_bb
    invoke-virtual {p1, v5}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 194
    goto :goto_c5

    .line 195
    :cond_c2
    invoke-virtual {p1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    .line 198
    :goto_c5
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 201
    move-result-object v5

    .line 202
    sget-object v6, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    .line 204
    invoke-virtual {v5, v6}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 207
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v5, v6}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 214
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    .line 221
    move-result v5

    .line 222
    aget-byte v5, v4, v5

    .line 224
    and-int/lit8 v5, v5, 0x3

    .line 226
    if-lez v5, :cond_144

    .line 228
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 235
    move-result v7

    .line 236
    invoke-direct {p0, v6, v7}, Lcom/junrar/unpack/vm/RarVM;->decodeArg(Lcom/junrar/unpack/vm/VMPreparedOperand;Z)V

    .line 239
    const/4 v6, 0x2

    .line 240
    if-ne v5, v6, :cond_fd

    .line 242
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    .line 249
    move-result v5

    .line 250
    invoke-direct {p0, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->decodeArg(Lcom/junrar/unpack/vm/VMPreparedOperand;Z)V

    .line 253
    goto :goto_144

    .line 254
    :cond_fd
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/junrar/unpack/vm/VMOpType;

    .line 261
    move-result-object v5

    .line 262
    sget-object v6, Lcom/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/junrar/unpack/vm/VMOpType;

    .line 264
    if-ne v5, v6, :cond_144

    .line 266
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    .line 273
    move-result v5

    .line 274
    aget-byte v4, v4, v5

    .line 276
    and-int/lit8 v4, v4, 0x18

    .line 278
    if-eqz v4, :cond_144

    .line 280
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    .line 287
    move-result v4

    .line 288
    const/16 v5, 0x100

    .line 290
    if-lt v4, v5, :cond_126

    .line 292
    add-int/lit16 v4, v4, -0x100

    .line 294
    goto :goto_13d

    .line 295
    :cond_126
    const/16 v5, 0x88

    .line 297
    if-lt v4, v5, :cond_12d

    .line 299
    add-int/lit16 v4, v4, -0x108

    .line 301
    goto :goto_138

    .line 302
    :cond_12d
    const/16 v5, 0x10

    .line 304
    if-lt v4, v5, :cond_134

    .line 306
    add-int/lit8 v4, v4, -0x8

    .line 308
    goto :goto_138

    .line 309
    :cond_134
    if-lt v4, v3, :cond_138

    .line 311
    add-int/lit8 v4, v4, -0x10

    .line 313
    :cond_138
    :goto_138
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    .line 316
    move-result v5

    .line 317
    add-int/2addr v4, v5

    .line 318
    :goto_13d
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 321
    move-result-object v5

    .line 322
    invoke-virtual {v5, v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 325
    :cond_144
    :goto_144
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    .line 328
    move-result v4

    .line 329
    add-int/2addr v4, v1

    .line 330
    invoke-virtual {p3, v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 333
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    .line 336
    move-result-object v4

    .line 337
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    goto/16 :goto_73

    .line 342
    :cond_155
    new-instance p1, Lcom/junrar/unpack/vm/VMPreparedCommand;

    .line 344
    invoke-direct {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 347
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    .line 349
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    .line 352
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 355
    move-result-object v0

    .line 356
    sget-object v2, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    .line 358
    invoke-virtual {v0, v2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 361
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0, v2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    .line 368
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    .line 371
    move-result-object v0

    .line 372
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    .line 378
    move-result p1

    .line 379
    add-int/2addr p1, v1

    .line 380
    invoke-virtual {p3, p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 383
    if-eqz p2, :cond_183

    .line 385
    invoke-direct {p0, p3}, Lcom/junrar/unpack/vm/RarVM;->optimize(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

    .line 388
    :cond_183
    return-void
.end method

.method public setLowEndianValue(Ljava/util/Vector;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    .line 1
    and-int/lit16 v0, p3, 0xff

    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, p2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    add-int/lit8 v0, p2, 0x1

    .line 13
    ushr-int/lit8 v1, p3, 0x8

    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 17
    int-to-byte v1, v1

    .line 18
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v0, p2, 0x2

    .line 27
    ushr-int/lit8 v1, p3, 0x10

    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 31
    int-to-byte v1, v1

    .line 32
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 p2, p2, 0x3

    .line 41
    ushr-int/lit8 p3, p3, 0x18

    .line 43
    and-int/lit16 p3, p3, 0xff

    .line 45
    int-to-byte p3, p3

    .line 46
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p1, p2, p3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setMemory(I[BII)V
    .registers 10

    .line 1
    const/high16 v0, 0x40000

    .line 3
    if-ge p1, v0, :cond_1f

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    array-length v2, p2

    .line 7
    sub-int/2addr v2, p3

    .line 8
    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1f

    .line 14
    sub-int v2, v0, p1

    .line 16
    if-ge v2, v1, :cond_12

    .line 18
    goto :goto_1f

    .line 19
    :cond_12
    iget-object v2, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    .line 21
    add-int v3, p1, v1

    .line 23
    add-int v4, p3, v1

    .line 25
    aget-byte v4, p2, v4

    .line 27
    aput-byte v4, v2, v3

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_5

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method
