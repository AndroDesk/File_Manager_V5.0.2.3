.class public Lcom/junrar/unpack/vm/RarVM;
.super Lcom/junrar/unpack/vm/BitInput;
.source "RarVM.java"


# static fields
.field public static final VM_FIXEDGLOBALSIZE:I

.field public static final VM_GLOBALMEMADDR:I

.field public static final VM_GLOBALMEMSIZE:I

.field private static final VM_MEMMASK:I

.field private static final VM_MEMSIZE:I

.field private static final regCount:I


# instance fields
.field private IP:I

.field private R:[I

.field private codeSize:I

.field private flags:I

.field private maxOpCount:I

.field private mem:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92dd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/vm/RarVM;->VM_FIXEDGLOBALSIZE:I

    const v0, 0xaed96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/vm/RarVM;->VM_GLOBALMEMADDR:I

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/vm/RarVM;->VM_GLOBALMEMSIZE:I

    const v0, 0xad269

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/vm/RarVM;->VM_MEMMASK:I

    const v0, 0xd2d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/vm/RarVM;->VM_MEMSIZE:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/vm/RarVM;->regCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/junrar/unpack/vm/BitInput;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    const v0, 0x17d7840

    iput v0, p0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

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

    iput v1, v0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    move/from16 v1, p2

    iput v1, v0, Lcom/junrar/unpack/vm/RarVM;->codeSize:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    :goto_e
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/junrar/unpack/vm/VMPreparedCommand;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/junrar/unpack/vm/RarVM;->getOperand(Lcom/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v4

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/junrar/unpack/vm/RarVM;->getOperand(Lcom/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v5

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

    :pswitch_45  #0x36
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v2

    invoke-static {v2}, Lcom/junrar/unpack/vm/VMStandardFilters;->findFilter(I)Lcom/junrar/unpack/vm/VMStandardFilters;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->ExecuteStandardFilter(Lcom/junrar/unpack/vm/VMStandardFilters;)V

    goto :goto_42

    :pswitch_55  #0x35
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v2, v13

    const/high16 v4, 0x40000

    if-lt v2, v4, :cond_5e

    return v14

    :cond_5e
    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v2, v10

    invoke-direct {v0, v1, v4, v2}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, 0x4

    aput v4, v2, v13

    goto :goto_e

    :pswitch_71  #0x34
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    iget v7, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    int-to-long v8, v6

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

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_b8

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

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_c5  #0x33
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    iget v7, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    int-to-long v8, v6

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

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_10b

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

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_118  #0x32
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    if-eqz v5, :cond_6e1

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    div-int/2addr v6, v5

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_13a  #0x31
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v8, v11

    and-long v5, v6, v8

    long-to-int v5, v5

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_15f  #0x30
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    invoke-direct {v0, v7, v8, v4, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

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

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_1a0  #0x2d
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v4, v13

    and-int/2addr v4, v10

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, 0x4

    aput v4, v2, v13

    goto/16 :goto_6e1

    :pswitch_1b7  #0x2c
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, -0x4

    aput v4, v2, v13

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v4, v10

    iget v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_1c9  #0x2b
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v2, v13

    move v4, v1

    :goto_1ce
    if-ge v4, v7, :cond_6e1

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

    :pswitch_1e3  #0x2a
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v2, v13

    add-int/lit8 v2, v2, -0x4

    move v4, v1

    :goto_1ea
    if-ge v4, v7, :cond_1fc

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int v6, v2, v10

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v4

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x4

    goto :goto_1ea

    :cond_1fc
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, -0x20

    aput v4, v2, v13

    goto/16 :goto_6e1

    :pswitch_206  #0x29
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    neg-int v5, v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_212  #0x28
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v5, 0x1

    invoke-direct {v0, v5, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    neg-int v6, v6

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_51f

    :pswitch_21f  #0x27
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v5, v6, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    neg-int v5, v5

    if-nez v5, :cond_233

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_241

    :cond_233
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    sget-object v7, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v7}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v7

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    :goto_241
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_24e  #0x26
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    shr-int v7, v6, v5

    if-nez v7, :cond_26d

    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_274

    :cond_26d
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_274
    add-int/lit8 v5, v5, -0x1

    shr-int v5, v6, v5

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v5, v6

    or-int/2addr v5, v8

    iput v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v7}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_28d  #0x25
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    ushr-int v7, v6, v5

    if-nez v7, :cond_2ac

    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_2b3

    :cond_2ac
    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_2b3
    add-int/lit8 v5, v5, -0x1

    ushr-int v5, v6, v5

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v5, v6

    or-int/2addr v5, v8

    iput v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v7}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_2cc  #0x24
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    shl-int v7, v6, v5

    if-nez v7, :cond_2eb

    sget-object v8, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_2f2

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

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    goto :goto_303

    :cond_302
    move v5, v1

    :goto_303
    or-int/2addr v5, v8

    iput v5, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v7}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_311  #0x23
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    not-int v2, v2

    invoke-direct {v0, v5, v6, v4, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_327  #0x22
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v5, v2, v13

    add-int/lit8 v5, v5, -0x4

    aput v5, v2, v13

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v5, v10

    iget v6, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_344  #0x21
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v5, v5, v13

    and-int/2addr v5, v10

    invoke-direct {v0, v1, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v4, v2, v13

    add-int/lit8 v4, v4, 0x4

    aput v4, v2, v13

    goto/16 :goto_6e1

    :pswitch_35c  #0x20
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v5, v2, v13

    add-int/lit8 v5, v5, -0x4

    aput v5, v2, v13

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    and-int/2addr v5, v10

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_370  #0x1f
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_6e1

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

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

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

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

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_3c0  #0x1c
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_6e1

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_3d6  #0x1b
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_6e1

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_3ec  #0x1a
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_6e1

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_402  #0x19
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    and-int/2addr v2, v4

    if-nez v2, :cond_420

    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    goto :goto_427

    :cond_420
    sget-object v4, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v2, v4

    :goto_427
    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    :pswitch_42b  #0x18
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    or-int/2addr v5, v6

    if-nez v5, :cond_449

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_450

    :cond_449
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_450
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_45d  #0x17
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    and-int/2addr v5, v6

    if-nez v5, :cond_47b

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_482

    :cond_47b
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_482
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_48f  #0x16
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    xor-int/2addr v5, v6

    if-nez v5, :cond_4ad

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_4b4

    :cond_4ad
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_4b4
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_4c1  #0x15
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_4cc  #0x14
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_4da  #0x13
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v5, 0x1

    invoke-direct {v0, v5, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_51f

    :pswitch_4e8  #0x12
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v5, v6, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    if-nez v5, :cond_507

    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    goto :goto_50e

    :cond_507
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    and-int/2addr v2, v5

    :goto_50e
    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    :pswitch_512  #0x11
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_519  #0x10
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v5, 0x1

    invoke-direct {v0, v5, v2, v4, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    :goto_51f
    move v6, v5

    goto/16 :goto_702

    :pswitch_522  #0xf
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    :pswitch_538  #0xe
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_6e1

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_54e  #0xd
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    sget-object v5, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_6e1

    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/junrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_e

    :pswitch_564  #0xc
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v8, v5

    sub-long/2addr v11, v8

    and-long v5, v6, v11

    long-to-int v5, v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_57b  #0xb
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v9, v5

    sub-long/2addr v11, v9

    and-long/2addr v7, v11

    long-to-int v5, v7

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_702

    :pswitch_592  #0xa
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v7, v6

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

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_5bf

    :cond_5b4
    if-le v5, v6, :cond_5b8

    const/4 v6, 0x1

    goto :goto_5bf

    :cond_5b8
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_5bf
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_5cc  #0x9
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v8, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v8, v11

    and-long v5, v6, v8

    long-to-int v5, v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_5e3  #0x8
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v9, v11

    and-long/2addr v7, v9

    long-to-int v5, v7

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_702

    :pswitch_5fa  #0x7
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    int-to-long v7, v6

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v7, v9

    long-to-int v5, v7

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    if-eqz v7, :cond_636

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v6, :cond_61e

    const/4 v6, 0x1

    goto :goto_633

    :cond_61e
    if-nez v5, :cond_627

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_633

    :cond_627
    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_632

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

    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    goto :goto_64a

    :cond_643
    sget-object v6, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v6

    and-int/2addr v6, v5

    :goto_64a
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    :goto_64c
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_6e1

    :pswitch_657  #0x6
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    sub-int v4, v2, v4

    if-nez v4, :cond_671

    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_6e1

    :cond_671
    if-le v4, v2, :cond_675

    const/4 v2, 0x1

    goto :goto_67c

    :cond_675
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    and-int/2addr v2, v4

    :goto_67c
    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    :pswitch_67f  #0x5
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    sub-int v4, v2, v4

    if-nez v4, :cond_699

    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    :cond_699
    if-le v4, v2, :cond_69d

    const/4 v6, 0x1

    goto :goto_6a5

    :cond_69d
    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    and-int v6, v4, v2

    :goto_6a5
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    :pswitch_6a8  #0x4
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v6

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v6, v7, v4}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v6, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    sub-int v2, v4, v2

    if-nez v2, :cond_6c9

    sget-object v2, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    :cond_6c9
    if-le v2, v4, :cond_6cd

    const/4 v6, 0x1

    goto :goto_6d5

    :cond_6cd
    sget-object v4, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int v6, v2, v4

    :goto_6d5
    iput v6, v0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_6e1

    :pswitch_6d8  #0x3
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v1, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    :cond_6e1
    :goto_6e1
    const/4 v6, 0x1

    goto :goto_702

    :pswitch_6e3  #0x2
    iget-object v2, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v6, 0x1

    invoke-direct {v0, v6, v2, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v5

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_702

    :pswitch_6ee  #0x1
    move v6, v14

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v9, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    invoke-direct {v0, v7, v8, v4, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    :goto_702
    iget v2, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/junrar/unpack/vm/RarVM;->IP:I

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

    move-object/from16 v0, p0

    sget-object v1, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v4, 0xff

    const v7, 0x1e000

    const v8, 0x3c020

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v14, 0x4

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_326

    goto/16 :goto_325

    :pswitch_1b  #0x7
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v1, v1, v14

    if-lt v1, v7, :cond_23

    goto/16 :goto_325

    :cond_23
    move v4, v1

    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_44

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    if-ne v3, v10, :cond_3d

    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v5, v6

    if-eq v6, v10, :cond_38

    add-int/lit8 v6, v6, -0x20

    int-to-byte v6, v6

    :cond_38
    move/from16 v34, v6

    move v6, v3

    move/from16 v3, v34

    :cond_3d
    add-int/lit8 v7, v4, 0x1

    aput-byte v3, v5, v4

    move v3, v6

    move v4, v7

    goto :goto_25

    :cond_44
    iget-object v3, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const v5, 0x3c01c

    sub-int/2addr v4, v1

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    iget-object v3, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_325

    :pswitch_54  #0x6
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    aget v9, v1, v14

    aget v1, v1, v2

    iget-object v12, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v12, v8, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    if-lt v9, v7, :cond_63

    goto/16 :goto_325

    :cond_63
    move v7, v2

    move v8, v7

    :goto_65
    if-ge v7, v1, :cond_325

    const/4 v12, 0x7

    new-array v13, v12, [J

    move v3, v2

    move v10, v3

    move v14, v10

    move/from16 v23, v14

    move/from16 v24, v23

    move/from16 v25, v24

    move v12, v7

    move/from16 v16, v12

    const-wide/16 v6, 0x0

    const-wide/16 v21, 0x0

    :goto_7a
    if-ge v12, v9, :cond_181

    long-to-int v6, v6

    sub-int v7, v6, v24

    const-wide/16 v26, 0x8

    mul-long v26, v26, v21

    mul-int v15, v3, v6

    move/from16 v29, v3

    int-to-long v2, v15

    add-long v26, v26, v2

    mul-int v2, v14, v7

    int-to-long v2, v2

    add-long v26, v26, v2

    mul-int v2, v10, v23

    int-to-long v2, v2

    add-long v26, v26, v2

    ushr-long v2, v26, v11

    and-long/2addr v2, v4

    iget-object v15, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v26, v8, 0x1

    aget-byte v8, v15, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v4, v8

    sub-long/2addr v2, v4

    add-int v8, v9, v12

    long-to-int v11, v2

    int-to-byte v11, v11

    aput-byte v11, v15, v8

    move v11, v9

    sub-long v8, v2, v21

    long-to-int v8, v8

    int-to-byte v8, v8

    int-to-long v8, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    shl-int/2addr v4, v5

    const/4 v5, 0x0

    aget-wide v21, v13, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-wide/from16 v30, v2

    int-to-long v2, v15

    add-long v21, v21, v2

    aput-wide v21, v13, v5

    const/4 v2, 0x1

    aget-wide v21, v13, v2

    sub-int v3, v4, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-wide/from16 v32, v8

    int-to-long v8, v3

    add-long v21, v21, v8

    aput-wide v21, v13, v2

    const/4 v2, 0x2

    aget-wide v8, v13, v2

    add-int v3, v4, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move v15, v6

    int-to-long v5, v3

    add-long/2addr v8, v5

    aput-wide v8, v13, v2

    const/4 v2, 0x3

    aget-wide v5, v13, v2

    sub-int v3, v4, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v5, v8

    aput-wide v5, v13, v2

    const/4 v2, 0x4

    aget-wide v5, v13, v2

    add-int v3, v4, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v5, v8

    aput-wide v5, v13, v2

    const/4 v2, 0x5

    aget-wide v5, v13, v2

    sub-int v3, v4, v23

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v5, v8

    aput-wide v5, v13, v2

    const/4 v2, 0x6

    aget-wide v5, v13, v2

    add-int v4, v4, v23

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v5, v3

    aput-wide v5, v13, v2

    and-int/lit8 v2, v25, 0x1f

    if-nez v2, :cond_169

    const/4 v2, 0x0

    aget-wide v3, v13, v2

    const-wide/16 v18, 0x0

    aput-wide v18, v13, v2

    move-wide/from16 v8, v18

    const/4 v2, 0x1

    const/4 v5, 0x7

    :goto_120
    if-ge v2, v5, :cond_132

    aget-wide v21, v13, v2

    cmp-long v6, v21, v3

    if-gez v6, :cond_12b

    int-to-long v8, v2

    move-wide/from16 v3, v21

    :cond_12b
    aput-wide v18, v13, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v18, 0x0

    goto :goto_120

    :cond_132
    long-to-int v2, v8

    const/16 v3, -0x10

    packed-switch v2, :pswitch_data_338

    :cond_138
    move/from16 v4, v29

    goto :goto_16c

    :pswitch_13b  #0x6
    const/16 v2, 0x10

    if-ge v10, v2, :cond_138

    add-int/lit8 v10, v10, 0x1

    goto :goto_156

    :pswitch_142  #0x5
    const/16 v2, 0x10

    if-lt v10, v3, :cond_138

    add-int/lit8 v10, v10, -0x1

    goto :goto_156

    :pswitch_149  #0x4
    const/16 v2, 0x10

    if-ge v14, v2, :cond_138

    add-int/lit8 v14, v14, 0x1

    goto :goto_156

    :pswitch_150  #0x3
    const/16 v2, 0x10

    if-lt v14, v3, :cond_138

    add-int/lit8 v14, v14, -0x1

    :goto_156
    move/from16 v3, v29

    goto :goto_16d

    :pswitch_159  #0x2
    move/from16 v4, v29

    const/16 v2, 0x10

    if-ge v4, v2, :cond_16c

    add-int/lit8 v3, v4, 0x1

    goto :goto_16d

    :pswitch_162  #0x1
    move/from16 v4, v29

    if-lt v4, v3, :cond_16c

    add-int/lit8 v3, v4, -0x1

    goto :goto_16d

    :cond_169
    move/from16 v4, v29

    const/4 v5, 0x7

    :cond_16c
    :goto_16c
    move v3, v4

    :goto_16d
    add-int/2addr v12, v1

    add-int/lit8 v25, v25, 0x1

    move/from16 v23, v7

    move v9, v11

    move/from16 v24, v15

    move/from16 v8, v26

    move-wide/from16 v21, v30

    move-wide/from16 v6, v32

    const/4 v2, 0x0

    const-wide/16 v4, 0xff

    const/4 v11, 0x3

    goto/16 :goto_7a

    :cond_181
    move v11, v9

    add-int/lit8 v7, v16, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0xff

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v14, 0x4

    goto/16 :goto_65

    :pswitch_18c  #0x5
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    const/4 v6, 0x1

    aget v1, v1, v6

    iget-object v6, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v3, v6, v8, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    if-ge v2, v7, :cond_325

    if-gez v1, :cond_1a4

    goto/16 :goto_325

    :cond_1a4
    const/4 v3, 0x0

    const/16 v28, 0x0

    :goto_1a7
    if-ge v3, v5, :cond_20f

    move v8, v3

    const-wide/16 v6, 0x0

    :goto_1ac
    if-ge v8, v2, :cond_207

    sub-int v9, v8, v4

    if-lt v9, v5, :cond_1e8

    add-int/2addr v9, v2

    iget-object v10, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    aget-byte v11, v10, v9

    and-int/lit16 v11, v11, 0xff

    sub-int/2addr v9, v5

    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v10, v11

    add-long v12, v6, v10

    int-to-long v14, v9

    sub-long/2addr v12, v14

    move/from16 p1, v4

    sub-long v4, v12, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-wide/from16 v16, v6

    sub-long v5, v12, v10

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-long/2addr v12, v14

    long-to-int v6, v12

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v4, v5, :cond_1e2

    if-gt v4, v6, :cond_1e2

    move-wide/from16 v6, v16

    goto :goto_1ec

    :cond_1e2
    if-gt v5, v6, :cond_1e6

    move-wide v6, v10

    goto :goto_1ec

    :cond_1e6
    move-wide v6, v14

    goto :goto_1ec

    :cond_1e8
    move/from16 p1, v4

    move-wide/from16 v16, v6

    :goto_1ec
    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v5, v28, 0x1

    aget-byte v9, v4, v28

    int-to-long v9, v9

    sub-long/2addr v6, v9

    const-wide/16 v9, 0xff

    and-long/2addr v6, v9

    add-int v11, v2, v8

    and-long v12, v6, v9

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v4, v11

    add-int/lit8 v8, v8, 0x3

    move/from16 v4, p1

    move/from16 v28, v5

    const/4 v5, 0x3

    goto :goto_1ac

    :cond_207
    move/from16 p1, v4

    const-wide/16 v9, 0xff

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x3

    goto :goto_1a7

    :cond_20f
    add-int/lit8 v3, v2, -0x2

    :goto_211
    if-ge v1, v3, :cond_325

    iget-object v4, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int v5, v2, v1

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    aget-byte v7, v4, v5

    add-int/2addr v7, v6

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    const/4 v7, 0x2

    add-int/2addr v5, v7

    aget-byte v7, v4, v5

    add-int/2addr v7, v6

    int-to-byte v6, v7

    aput-byte v6, v4, v5

    add-int/lit8 v1, v1, 0x3

    goto :goto_211

    :pswitch_22c  #0x4
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    mul-int/lit8 v4, v2, 0x2

    iget-object v5, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v3, v5, v8, v2}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    if-lt v2, v7, :cond_23f

    goto/16 :goto_325

    :cond_23f
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_241
    if-ge v3, v1, :cond_325

    add-int v6, v2, v3

    const/4 v7, 0x0

    :goto_246
    if-ge v6, v4, :cond_255

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, v8, v5

    sub-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v8, v6

    add-int/2addr v6, v1

    move v5, v9

    goto :goto_246

    :cond_255
    add-int/lit8 v3, v3, 0x1

    goto :goto_241

    :pswitch_258  #0x3
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v3, v1, v2

    const/4 v4, 0x6

    aget v1, v1, v4

    int-to-long v4, v1

    const v1, 0x3c000

    if-lt v3, v1, :cond_268

    goto/16 :goto_325

    :cond_268
    const/16 v1, 0x10

    new-array v6, v1, [B

    fill-array-data v6, :array_348

    ushr-long/2addr v4, v2

    const/4 v2, 0x0

    :goto_271
    add-int/lit8 v7, v3, -0x15

    if-ge v2, v7, :cond_325

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    aget-byte v7, v7, v2

    and-int/lit8 v7, v7, 0x1f

    sub-int/2addr v7, v1

    if-ltz v7, :cond_2b0

    aget-byte v7, v6, v7

    if-eqz v7, :cond_2b0

    const/4 v8, 0x0

    const/4 v9, 0x2

    :goto_284
    const/4 v10, 0x1

    if-gt v8, v9, :cond_2b2

    shl-int v11, v10, v8

    and-int/2addr v11, v7

    if-eqz v11, :cond_2ac

    mul-int/lit8 v11, v8, 0x29

    const/4 v12, 0x5

    add-int/2addr v11, v12

    add-int/lit8 v13, v11, 0x25

    const/4 v14, 0x4

    invoke-direct {v0, v2, v13, v14}, Lcom/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v13

    if-ne v13, v12, :cond_2ad

    add-int/lit8 v11, v11, 0xd

    const/16 v13, 0x14

    invoke-direct {v0, v2, v11, v13}, Lcom/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v14, v4

    long-to-int v14, v14

    const v15, 0xfffff

    and-int/2addr v14, v15

    invoke-direct {v0, v2, v14, v11, v13}, Lcom/junrar/unpack/vm/RarVM;->filterItanium_SetBits(IIII)V

    goto :goto_2ad

    :cond_2ac
    const/4 v12, 0x5

    :cond_2ad
    :goto_2ad
    add-int/lit8 v8, v8, 0x1

    goto :goto_284

    :cond_2b0
    const/4 v9, 0x2

    const/4 v10, 0x1

    :cond_2b2
    const/4 v12, 0x5

    add-int/lit8 v2, v2, 0x10

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    goto :goto_271

    :pswitch_2b9  #0x1, 0x2
    iget-object v1, v0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v3, v1, v2

    const/4 v2, 0x6

    aget v1, v1, v2

    int-to-long v1, v1

    const v4, 0x3c000

    if-lt v3, v4, :cond_2c8

    goto :goto_325

    :cond_2c8
    const/high16 v4, 0x1000000

    sget-object v5, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v6, 0xe8

    move-object/from16 v7, p1

    if-ne v7, v5, :cond_2d5

    const/16 v5, 0xe9

    goto :goto_2d6

    :cond_2d5
    move v5, v6

    :goto_2d6
    int-to-byte v5, v5

    const/4 v7, 0x0

    :goto_2d8
    const/4 v8, 0x4

    add-int/lit8 v9, v3, -0x4

    if-ge v7, v9, :cond_325

    iget-object v9, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v9, v7

    if-eq v7, v6, :cond_2ec

    if-ne v7, v5, :cond_2e8

    goto :goto_2ec

    :cond_2e8
    const/4 v7, 0x0

    const-wide/16 v17, 0x0

    goto :goto_323

    :cond_2ec
    :goto_2ec
    int-to-long v11, v10

    add-long/2addr v11, v1

    const/4 v7, 0x0

    invoke-direct {v0, v7, v9, v10}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    int-to-long v13, v9

    const-wide/32 v15, -0x80000000

    and-long v20, v13, v15

    const-wide/16 v17, 0x0

    cmp-long v7, v20, v17

    if-eqz v7, :cond_311

    add-long/2addr v11, v13

    and-long/2addr v11, v15

    cmp-long v7, v11, v17

    if-nez v7, :cond_30f

    iget-object v7, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    long-to-int v9, v13

    add-int/2addr v9, v4

    const/4 v11, 0x0

    invoke-direct {v0, v11, v7, v10, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    move v7, v11

    goto :goto_321

    :cond_30f
    const/4 v7, 0x0

    goto :goto_321

    :cond_311
    const/4 v7, 0x0

    int-to-long v8, v4

    sub-long v8, v13, v8

    and-long/2addr v8, v15

    cmp-long v8, v8, v17

    if-eqz v8, :cond_321

    iget-object v8, v0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    sub-long/2addr v13, v11

    long-to-int v9, v13

    invoke-direct {v0, v7, v8, v10, v9}, Lcom/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    :cond_321
    :goto_321
    add-int/lit8 v10, v10, 0x4

    :goto_323
    move v7, v10

    goto :goto_2d8

    :cond_325
    :goto_325
    return-void

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

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v3, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0x35

    const v5, -0x52a89779

    invoke-direct {v2, v4, v5, v3}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x39

    const v6, 0x3cd7e57e

    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x78

    const v6, 0x3769893f

    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x1d

    const v6, 0xe06077d

    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x95

    const v6, 0x1c2c5dc8

    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0xd8

    const v6, -0x437a18ff

    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lcom/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x28

    const v6, 0x46b9c560  # 23778.688f

    invoke-direct {v2, v5, v6, v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    array-length v2, p1

    const/4 v4, -0x1

    invoke-static {v4, p1, v3, v2}, Lcom/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v2

    not-int v2, v2

    :goto_73
    if-ge v3, v0, :cond_8c

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->getCRC()I

    move-result v5

    if-ne v5, v2, :cond_89

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->getLength()I

    move-result v5

    array-length v6, p1

    if-ne v5, v6, :cond_89

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->getType()Lcom/junrar/unpack/vm/VMStandardFilters;

    move-result-object p1

    return-object p1

    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_8c
    sget-object p1, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    return-object p1
.end method

.method public static ReadData(Lcom/junrar/unpack/vm/BitInput;)I
    .registers 7

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    const v1, 0xc000

    and-int/2addr v1, v0

    const/16 v2, 0xa

    const/4 v3, 0x6

    if-eqz v1, :cond_4e

    const/16 v4, 0x4000

    const/4 v5, 0x2

    if-eq v1, v4, :cond_38

    const v0, 0x8000

    const/16 v2, 0x10

    if-eq v1, v0, :cond_2d

    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    shl-int/2addr v0, v2

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    return v0

    :cond_2d
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    return v0

    :cond_38
    and-int/lit16 v1, v0, 0x3c00

    if-nez v1, :cond_47

    shr-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, -0x100

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_4d

    :cond_47
    shr-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_4d
    return v0

    :cond_4e
    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    shr-int/lit8 p0, v0, 0xa

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private decodeArg(Lcom/junrar/unpack/vm/VMPreparedOperand;Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x7

    if-eqz v1, :cond_22

    sget-object p2, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    shr-int/lit8 p2, v0, 0xc

    and-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_89

    :cond_22
    const v1, 0xc000

    and-int/2addr v1, v0

    const/4 v4, 0x6

    const/16 v5, 0xa

    if-nez v1, :cond_49

    sget-object v1, Lcom/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    if-eqz p2, :cond_3d

    shr-int/lit8 p2, v0, 0x6

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_89

    :cond_3d
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-static {p0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    goto :goto_89

    :cond_49
    sget-object p2, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    and-int/lit16 p2, v0, 0x2000

    const/4 v1, 0x0

    if-nez p2, :cond_67

    shr-int/lit8 p2, v0, 0xa

    and-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_89

    :cond_67
    and-int/lit16 p2, v0, 0x1000

    if-nez p2, :cond_7c

    shr-int/lit8 p2, v0, 0x9

    and-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_82

    :cond_7c
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_82
    invoke-static {p0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    :goto_89
    return-void
.end method

.method private filterItanium_GetBits(III)I
    .registers 8

    div-int/lit8 v0, p2, 0x8

    and-int/lit8 p2, p2, 0x7

    iget-object v1, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, p1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, p1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/2addr p1, v2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    ushr-int/2addr p1, p2

    rsub-int/lit8 p2, p3, 0x20

    const/4 p3, -0x1

    ushr-int p2, p3, p2

    and-int/2addr p1, p2

    return p1
.end method

.method private filterItanium_SetBits(IIII)V
    .registers 9

    div-int/lit8 v0, p3, 0x8

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p4, p4, 0x20

    const/4 v1, -0x1

    ushr-int p4, v1, p4

    shl-int/2addr p4, p3

    not-int p4, p4

    shl-int/2addr p2, p3

    const/4 p3, 0x0

    :goto_d
    const/4 v1, 0x4

    if-ge p3, v1, :cond_29

    iget-object v1, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int v2, p1, v0

    add-int/2addr v2, p3

    aget-byte v3, v1, v2

    and-int/2addr v3, p4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    or-int/2addr v3, p2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    ushr-int/lit8 p4, p4, 0x8

    const/high16 v1, -0x1000000

    or-int/2addr p4, v1

    ushr-int/lit8 p2, p2, 0x8

    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method

.method private getOperand(Lcom/junrar/unpack/vm/VMPreparedOperand;)I
    .registers 4

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/junrar/unpack/vm/VMOpType;

    move-result-object v0

    sget-object v1, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/junrar/unpack/vm/VMOpType;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getBase()I

    move-result p1

    add-int/2addr p1, v0

    const v0, 0x3ffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v0, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    goto :goto_26

    :cond_1c
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result p1

    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v0, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    :goto_26
    return p1
.end method

.method private getValue(Z[BI)I
    .registers 4

    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result p1

    if-eqz p1, :cond_b

    aget-byte p1, p2, p3

    goto :goto_f

    :cond_b
    aget-byte p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    :goto_f
    return p1

    :cond_10
    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-static {p2, p3}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    goto :goto_1f

    :cond_1b
    invoke-static {p2, p3}, Lcom/junrar/io/Raw;->readIntBigEndian([BI)I

    move-result p1

    :goto_1f
    return p1
.end method

.method private isVMMem([B)Z
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private optimize(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 9

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/junrar/unpack/vm/VMPreparedCommand;

    sget-object v2, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e6

    const/4 v4, 0x4

    if-eq v2, v4, :cond_d6

    sget-object v2, Lcom/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_37

    goto :goto_8

    :cond_37
    const/4 v2, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v3

    :goto_3d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_62

    sget-object v5, Lcom/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/junrar/unpack/vm/VMPreparedCommand;

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v6

    invoke-virtual {v6}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v6

    aget-byte v5, v5, v6

    and-int/lit8 v6, v5, 0x38

    if-eqz v6, :cond_5a

    goto :goto_63

    :cond_5a
    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5f

    goto :goto_62

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_62
    :goto_62
    move v3, v2

    :goto_63
    if-eqz v3, :cond_66

    goto :goto_8

    :cond_66
    sget-object v2, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_c6

    const/16 v3, 0xa

    if-eq v2, v3, :cond_b6

    const/16 v3, 0xf

    if-eq v2, v3, :cond_a6

    const/16 v3, 0x12

    if-eq v2, v3, :cond_96

    const/16 v3, 0x27

    if-eq v2, v3, :cond_86

    goto :goto_8

    :cond_86
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    if-eqz v2, :cond_8f

    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    goto :goto_91

    :cond_8f
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    :goto_91
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_96
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    if-eqz v2, :cond_9f

    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    goto :goto_a1

    :cond_9f
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    :goto_a1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_a6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    if-eqz v2, :cond_af

    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    goto :goto_b1

    :cond_af
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    :goto_b1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_b6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    if-eqz v2, :cond_bf

    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    goto :goto_c1

    :cond_bf
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    :goto_c1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_c6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    if-eqz v2, :cond_cf

    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    goto :goto_d1

    :cond_cf
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    :goto_d1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_d6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    if-eqz v2, :cond_df

    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    goto :goto_e1

    :cond_df
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    :goto_e1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_e6
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v2

    if-eqz v2, :cond_ef

    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    goto :goto_f1

    :cond_ef
    sget-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    :goto_f1
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_f6
    return-void
.end method

.method private setIP(I)Z
    .registers 4

    iget v0, p0, Lcom/junrar/unpack/vm/RarVM;->codeSize:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/vm/RarVM;->maxOpCount:I

    if-gtz v0, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    iput p1, p0, Lcom/junrar/unpack/vm/RarVM;->IP:I

    return v1
.end method

.method private setValue(Z[BII)V
    .registers 5

    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result p1

    if-eqz p1, :cond_a

    int-to-byte p1, p4

    goto :goto_d

    :cond_a
    and-int/lit16 p1, p4, 0xff

    int-to-byte p1, p1

    :goto_d
    aput-byte p1, p2, p3

    goto :goto_1d

    :cond_10
    invoke-direct {p0, p2}, Lcom/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {p2, p3, p4}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    goto :goto_1d

    :cond_1a
    invoke-static {p2, p3, p4}, Lcom/junrar/io/Raw;->writeIntBigEndian([BII)V

    :goto_1d
    return-void
.end method


# virtual methods
.method public execute(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 13

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v0

    iget-object v1, p0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const v6, 0x3c000

    if-eqz v2, :cond_44

    move v2, v3

    :goto_28
    int-to-long v7, v2

    cmp-long v7, v7, v0

    if-gez v7, :cond_44

    iget-object v7, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int v8, v2, v6

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_44
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-long v7, v2

    const-wide/16 v9, 0x2000

    sub-long/2addr v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-eqz v2, :cond_76

    move v2, v3

    :goto_59
    int-to-long v4, v2

    cmp-long v4, v4, v7

    if-gez v4, :cond_76

    iget-object v4, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    long-to-int v5, v0

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_76
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->R:[I

    const/4 v1, 0x7

    const/high16 v2, 0x40000

    aput v2, v0, v1

    iput v3, p0, Lcom/junrar/unpack/vm/RarVM;->flags:I

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v0

    goto :goto_92

    :cond_8e
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v0

    :goto_92
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/vm/RarVM;->ExecuteCode(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_a7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/junrar/unpack/vm/VMPreparedCommand;

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    :cond_a7
    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const v1, 0x3c020

    invoke-direct {p0, v3, v0, v1}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v0

    const v1, 0x3ffff

    and-int/2addr v0, v1

    iget-object v4, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const v5, 0x3c01c

    invoke-direct {p0, v3, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v4

    and-int/2addr v1, v4

    add-int v4, v0, v1

    if-lt v4, v2, :cond_c4

    move v0, v3

    move v1, v0

    :cond_c4
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataOffset(I)V

    invoke-virtual {p1, v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataSize(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    const v1, 0x3c030

    invoke-direct {p0, v3, v0, v1}, Lcom/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v0

    const/16 v1, 0x1fc0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_101

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    :goto_eb
    if-ge v3, v0, :cond_101

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int v4, v3, v6

    aget-byte v2, v2, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    :cond_101
    return-void
.end method

.method public getMem()[B
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    return-object v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    if-nez v0, :cond_b

    const v0, 0x40004

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    :cond_b
    return-void
.end method

.method public prepare([BILcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 12

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->InitBitInput()V

    const v0, 0x8000

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_1b

    iget-object v4, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    aget-byte v5, v4, v3

    aget-byte v6, p1, v3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    const/4 v1, 0x1

    move v3, v1

    move v4, v2

    :goto_1e
    if-ge v3, p2, :cond_27

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_27
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-virtual {p3, v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    aget-byte v5, p1, v2

    if-ne v4, v5, :cond_155

    invoke-direct {p0, p1}, Lcom/junrar/unpack/vm/RarVM;->IsStandardFilter([B)Lcom/junrar/unpack/vm/VMStandardFilters;

    move-result-object p1

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    if-eq p1, v4, :cond_70

    new-instance p2, Lcom/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    sget-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {p2, v4}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v4

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMStandardFilters;->getFilter()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object p1

    sget-object v4, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p3, p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    move p2, v2

    :cond_70
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_73
    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    if-ge p1, p2, :cond_155

    new-instance p1, Lcom/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v4

    and-int v5, v4, v0

    const/4 v6, 0x4

    if-nez v5, :cond_92

    shr-int/lit8 v4, v4, 0xc

    invoke-static {v4}, Lcom/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_a1

    :cond_92
    shr-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x18

    invoke-static {v4}, Lcom/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_a1
    sget-object v4, Lcom/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v5

    aget-byte v5, v4, v5

    and-int/2addr v5, v6

    if-eqz v5, :cond_c2

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v5

    shr-int/lit8 v5, v5, 0xf

    if-ne v5, v1, :cond_ba

    move v5, v1

    goto :goto_bb

    :cond_ba
    move v5, v2

    :goto_bb
    invoke-virtual {p1, v5}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_c5

    :cond_c2
    invoke-virtual {p1, v2}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    :goto_c5
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    sget-object v6, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    invoke-virtual {v5, v6}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v5

    aget-byte v5, v4, v5

    and-int/lit8 v5, v5, 0x3

    if-lez v5, :cond_144

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v6

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/junrar/unpack/vm/RarVM;->decodeArg(Lcom/junrar/unpack/vm/VMPreparedOperand;Z)V

    const/4 v6, 0x2

    if-ne v5, v6, :cond_fd

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v4

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/junrar/unpack/vm/RarVM;->decodeArg(Lcom/junrar/unpack/vm/VMPreparedOperand;Z)V

    goto :goto_144

    :cond_fd
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/junrar/unpack/vm/VMOpType;

    move-result-object v5

    sget-object v6, Lcom/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/junrar/unpack/vm/VMOpType;

    if-ne v5, v6, :cond_144

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v5

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x18

    if-eqz v4, :cond_144

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v4

    const/16 v5, 0x100

    if-lt v4, v5, :cond_126

    add-int/lit16 v4, v4, -0x100

    goto :goto_13d

    :cond_126
    const/16 v5, 0x88

    if-lt v4, v5, :cond_12d

    add-int/lit16 v4, v4, -0x108

    goto :goto_138

    :cond_12d
    const/16 v5, 0x10

    if-lt v4, v5, :cond_134

    add-int/lit8 v4, v4, -0x8

    goto :goto_138

    :cond_134
    if-lt v4, v3, :cond_138

    add-int/lit8 v4, v4, -0x10

    :cond_138
    :goto_138
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v5

    add-int/2addr v4, v5

    :goto_13d
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    :cond_144
    :goto_144
    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p3, v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_73

    :cond_155
    new-instance p1, Lcom/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {p1, v0}, Lcom/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v0

    sget-object v2, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    invoke-virtual {v0, v2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/junrar/unpack/vm/VMOpType;)V

    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p3, p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    if-eqz p2, :cond_183

    invoke-direct {p0, p3}, Lcom/junrar/unpack/vm/RarVM;->optimize(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

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

    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 p3, p3, 0x18

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMemory(I[BII)V
    .registers 10

    const/high16 v0, 0x40000

    if-ge p1, v0, :cond_1f

    const/4 v1, 0x0

    :goto_5
    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1f

    sub-int v2, v0, p1

    if-ge v2, v1, :cond_12

    goto :goto_1f

    :cond_12
    iget-object v2, p0, Lcom/junrar/unpack/vm/RarVM;->mem:[B

    add-int v3, p1, v1

    add-int v4, p3, v1

    aget-byte v4, p2, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    :goto_1f
    return-void
.end method
