.class public Lcom/junrar/unpack/ppm/ModelPPM;
.super Ljava/lang/Object;
.source "ModelPPM.java"


# static fields
.field public static final BIN_SCALE:I = 0x4000

.field public static final INTERVAL:I = 0x80

.field private static final INT_BITS:I = 0x7

.field private static InitBinEsc:[I = null

.field public static final MAX_FREQ:I = 0x7c

.field private static final MAX_O:I = 0x40

.field public static final PERIOD_BITS:I = 0x7

.field public static final TOT_BITS:I = 0xe


# instance fields
.field private HB2Flag:[I

.field private NS2BSIndx:[I

.field private NS2Indx:[I

.field private SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

.field private binSumm:[[I

.field private charMask:[I

.field private coder:Lcom/junrar/unpack/ppm/RangeCoder;

.field private dummySEE2Cont:Lcom/junrar/unpack/ppm/SEE2Context;

.field private escCount:I

.field private foundState:Lcom/junrar/unpack/ppm/State;

.field private hiBitsFlag:I

.field private initEsc:I

.field private initRL:I

.field private maxContext:Lcom/junrar/unpack/ppm/PPMContext;

.field private maxOrder:I

.field private minContext:Lcom/junrar/unpack/ppm/PPMContext;

.field private numMasked:I

.field private orderFall:I

.field private prevSuccess:I

.field private final ps:[I

.field private runLength:I

.field private subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

.field private final tempPPMContext1:Lcom/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext2:Lcom/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext3:Lcom/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext4:Lcom/junrar/unpack/ppm/PPMContext;

.field private final tempState1:Lcom/junrar/unpack/ppm/State;

.field private final tempState2:Lcom/junrar/unpack/ppm/State;

.field private final tempState3:Lcom/junrar/unpack/ppm/State;

.field private final tempState4:Lcom/junrar/unpack/ppm/State;

.field private final tempStateRef1:Lcom/junrar/unpack/ppm/StateRef;

.field private final tempStateRef2:Lcom/junrar/unpack/ppm/StateRef;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    return-void

    :array_a
    .array-data 4
        0x3cdd
        0x1f3f
        0x59bf
        0x48f3
        0x64a1
        0x5abc
        0x6632
        0x6051
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_94

    const-class v2, Lcom/junrar/unpack/ppm/SEE2Context;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/junrar/unpack/ppm/SEE2Context;

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_9c

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    new-instance v0, Lcom/junrar/unpack/ppm/RangeCoder;

    invoke-direct {v0}, Lcom/junrar/unpack/ppm/RangeCoder;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    new-instance v0, Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-direct {v0}, Lcom/junrar/unpack/ppm/SubAllocator;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/junrar/unpack/ppm/StateRef;

    new-instance v0, Lcom/junrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/junrar/unpack/ppm/StateRef;

    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/junrar/unpack/ppm/PPMContext;

    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/junrar/unpack/ppm/PPMContext;

    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/junrar/unpack/ppm/PPMContext;

    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/junrar/unpack/ppm/PPMContext;

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    return-void

    :array_94
    .array-data 4
        0x19
        0x10
    .end array-data

    :array_9c
    .array-data 4
        0x80
        0x40
    .end array-data
.end method

.method private clearMask()V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private createSuccessors(ZLcom/junrar/unpack/ppm/State;)I
    .registers 12

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/junrar/unpack/ppm/StateRef;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v1

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object v2

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object v3

    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    iget-object v7, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v7}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v7

    aput v7, p1, v5

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result p1

    if-nez p1, :cond_52

    move p1, v6

    goto :goto_56

    :cond_52
    move p1, v5

    move v7, v6

    goto :goto_57

    :cond_55
    move p1, v5

    :goto_56
    move v7, p1

    :goto_57
    if-nez p1, :cond_d4

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result p1

    if-eqz p1, :cond_6f

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    move p1, v6

    goto :goto_70

    :cond_6f
    move p1, v5

    :goto_70
    if-nez p1, :cond_b1

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result p1

    if-eq p1, v6, :cond_a6

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p1

    iget-object p2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p2

    if-eq p1, p2, :cond_b1

    :cond_96
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p1

    iget-object p2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p2

    if-ne p1, p2, :cond_96

    goto :goto_b1

    :cond_a6
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    :cond_b1
    :goto_b1
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result p1

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p2

    if-eq p1, p2, :cond_c3

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    goto :goto_d4

    :cond_c3
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 p2, v7, 0x1

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    aput v8, p1, v7

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result p1

    move v7, p2

    if-nez p1, :cond_6f

    :cond_d4
    :goto_d4
    if-nez v7, :cond_db

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    return p1

    :cond_db
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object p1

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p2

    aget-byte p1, p1, p2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSymbol(I)V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result p1

    if-eq p1, v6, :cond_150

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    iget-object p2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result p2

    if-gt p1, p2, :cond_103

    return v5

    :cond_103
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result p2

    if-eq p1, p2, :cond_125

    :cond_118
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result p2

    if-ne p1, p2, :cond_118

    :cond_125
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result p2

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int/2addr p2, p1

    mul-int/lit8 v3, p1, 0x2

    if-gt v3, p2, :cond_144

    mul-int/lit8 p1, p1, 0x5

    if-le p1, p2, :cond_142

    move p1, v6

    goto :goto_14b

    :cond_142
    move p1, v5

    goto :goto_14b

    :cond_144
    mul-int/lit8 p1, p2, 0x3

    add-int/2addr p1, v3

    sub-int/2addr p1, v6

    mul-int/lit8 p2, p2, 0x2

    div-int/2addr p1, p2

    :goto_14b
    add-int/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/junrar/unpack/ppm/StateRef;->setFreq(I)V

    goto :goto_15b

    :cond_150
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setFreq(I)V

    :cond_15b
    :goto_15b
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v7, v7, -0x1

    aget p1, p1, v7

    invoke-virtual {v1, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v2, p0, v1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->createChild(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/StateRef;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    if-nez p1, :cond_172

    return v5

    :cond_172
    if-nez v7, :cond_15b

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    return p1
.end method

.method private restartModelRare()V
    .registers 10

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->initSubAllocator()V

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    const/16 v2, 0xc

    if-ge v0, v2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    neg-int v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result v0

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    const/16 v3, 0x100

    invoke-virtual {v0, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v0

    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v0

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v5, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v5

    iget v6, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    iput v6, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    iput v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    move v6, v1

    :goto_7a
    if-ge v6, v3, :cond_8e

    mul-int/lit8 v7, v6, 0x6

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v0, v6}, Lcom/junrar/unpack/ppm/State;->setSymbol(I)V

    invoke-virtual {v0, v2}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    :cond_8e
    move v0, v1

    :goto_8f
    if-ge v0, v4, :cond_b5

    move v2, v1

    :goto_92
    const/16 v3, 0x8

    if-ge v2, v3, :cond_b2

    move v3, v1

    :goto_97
    const/16 v5, 0x40

    if-ge v3, v5, :cond_af

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    aget-object v5, v5, v0

    add-int v6, v2, v3

    sget-object v7, Lcom/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    aget v7, v7, v2

    add-int/lit8 v8, v0, 0x2

    div-int/2addr v7, v8

    rsub-int v7, v7, 0x4000

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x8

    goto :goto_97

    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    :cond_b5
    move v0, v1

    :goto_b6
    const/16 v2, 0x19

    if-ge v0, v2, :cond_d2

    move v2, v1

    :goto_bb
    const/16 v3, 0x10

    if-ge v2, v3, :cond_cf

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/SEE2Context;->init(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    :cond_cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_d2
    return-void
.end method

.method private setEscCount(I)V
    .registers 2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    return-void
.end method

.method private startModelRare(I)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    const/4 v1, 0x0

    aput v1, p1, v1

    const/4 v2, 0x2

    aput v2, p1, v0

    move p1, v1

    :goto_11
    const/16 v2, 0x9

    if-ge p1, v2, :cond_1f

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v3, p1, 0x2

    const/4 v4, 0x4

    aput v4, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_1f
    move p1, v1

    :goto_20
    const/16 v2, 0xf5

    if-ge p1, v2, :cond_2e

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v3, p1, 0xb

    const/4 v4, 0x6

    aput v4, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_2e
    move p1, v1

    :goto_2f
    const/4 v2, 0x3

    if-ge p1, v2, :cond_39

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput p1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_39
    move v2, v0

    move v3, v2

    move v0, p1

    :goto_3c
    const/16 v4, 0x100

    if-ge p1, v4, :cond_50

    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput v0, v4, p1

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4d

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    :cond_4d
    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_50
    move p1, v1

    :goto_51
    const/16 v0, 0x40

    if-ge p1, v0, :cond_5c

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_51

    :cond_5c
    :goto_5c
    const/16 p1, 0xc0

    if-ge v1, p1, :cond_6b

    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    add-int/lit8 v0, v1, 0x40

    const/16 v2, 0x8

    aput v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_6b
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/junrar/unpack/ppm/SEE2Context;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/SEE2Context;->setShift(I)V

    return-void
.end method

.method private updateModel()V
    .registers 16

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/junrar/unpack/ppm/StateRef;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/StateRef;->setValues(Lcom/junrar/unpack/ppm/State;)V

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v1

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v2

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object v3

    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object v4

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x1f

    if-ge v5, v8, :cond_b2

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v5

    if-eqz v5, :cond_b2

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v5

    if-eq v5, v7, :cond_9c

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v5

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v8

    if-eq v5, v8, :cond_89

    :cond_63
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v5

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v8

    if-ne v5, v8, :cond_63

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v2, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v5

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    if-lt v5, v8, :cond_89

    invoke-static {v1, v2}, Lcom/junrar/unpack/ppm/State;->ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    :cond_89
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    const/16 v5, 0x73

    if-ge v2, v5, :cond_b2

    invoke-virtual {v1, v6}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto :goto_b2

    :cond_9c
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    const/16 v5, 0x20

    if-ge v2, v5, :cond_b2

    invoke-virtual {v1, v7}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    :cond_b2
    :goto_b2
    iget v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v2, :cond_e1

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-direct {p0, v7, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/junrar/unpack/ppm/State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v0

    if-nez v0, :cond_e0

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    :cond_e0
    return-void

    :cond_e1
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v2

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v5

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->incPText()V

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v2

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/SubAllocator;->getFakeUnitsStart()I

    move-result v5

    if-lt v2, v5, :cond_114

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    return-void

    :cond_114
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_15a

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v2

    iget-object v8, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v8

    if-gt v2, v8, :cond_138

    invoke-direct {p0, v5, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/junrar/unpack/ppm/State;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v2

    if-nez v2, :cond_138

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    return-void

    :cond_138
    iget v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v2, :cond_168

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v2

    iget-object v8, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v8

    if-eq v2, v8, :cond_168

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2, v7}, Lcom/junrar/unpack/ppm/SubAllocator;->decPText(I)V

    goto :goto_168

    :cond_15a
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, v2}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V

    :cond_168
    :goto_168
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v2

    iget-object v8, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v9

    sub-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v9}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    :goto_188
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v9

    iget-object v10, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v10

    if-eq v9, v10, :cond_2b3

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v7, :cond_1ec

    and-int/lit8 v11, v9, 0x1

    if-nez v11, :cond_1c4

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v11

    iget-object v12, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    ushr-int/lit8 v14, v9, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/junrar/unpack/ppm/SubAllocator;->expandUnits(II)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v11

    if-nez v11, :cond_1c4

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    return-void

    :cond_1c4
    mul-int/lit8 v11, v9, 0x2

    if-ge v11, v2, :cond_1ca

    move v11, v7

    goto :goto_1cb

    :cond_1ca
    move v11, v5

    :goto_1cb
    mul-int/lit8 v12, v9, 0x4

    if-gt v12, v2, :cond_1d1

    move v12, v7

    goto :goto_1d2

    :cond_1d1
    move v12, v5

    :goto_1d2
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v13

    mul-int/lit8 v14, v9, 0x8

    if-gt v13, v14, :cond_1e0

    move v13, v7

    goto :goto_1e1

    :cond_1e0
    move v13, v5

    :goto_1e1
    and-int/2addr v12, v13

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto :goto_236

    :cond_1ec
    iget-object v11, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v11, v7}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    if-nez v11, :cond_1ff

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    return-void

    :cond_1ff
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/State;)V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/junrar/unpack/ppm/FreqData;->setStats(Lcom/junrar/unpack/ppm/State;)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v11

    const/16 v12, 0x1e

    if-ge v11, v12, :cond_21d

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    goto :goto_222

    :cond_21d
    const/16 v11, 0x78

    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    :goto_222
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v12

    iget v13, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initEsc:I

    add-int/2addr v12, v13

    if-le v2, v10, :cond_231

    move v13, v7

    goto :goto_232

    :cond_231
    move v13, v5

    :goto_232
    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Lcom/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    :goto_236
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v11

    mul-int/2addr v11, v6

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v12

    add-int/lit8 v12, v12, 0x6

    mul-int/2addr v12, v11

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v11

    add-int/2addr v11, v8

    mul-int/lit8 v13, v11, 0x6

    if-ge v12, v13, :cond_269

    if-le v12, v11, :cond_257

    move v13, v7

    goto :goto_258

    :cond_257
    move v13, v5

    :goto_258
    add-int/2addr v13, v7

    mul-int/lit8 v11, v11, 0x4

    if-lt v12, v11, :cond_25f

    move v11, v7

    goto :goto_260

    :cond_25f
    move v11, v5

    :goto_260
    add-int/2addr v13, v11

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto :goto_28a

    :cond_269
    mul-int/lit8 v10, v11, 0x9

    if-lt v12, v10, :cond_26f

    move v10, v7

    goto :goto_270

    :cond_26f
    move v10, v5

    :goto_270
    add-int/lit8 v10, v10, 0x4

    mul-int/lit8 v13, v11, 0xc

    if-lt v12, v13, :cond_278

    move v13, v7

    goto :goto_279

    :cond_278
    move v13, v5

    :goto_279
    add-int/2addr v10, v13

    mul-int/lit8 v11, v11, 0xf

    if-lt v12, v11, :cond_280

    move v11, v7

    goto :goto_281

    :cond_280
    move v11, v5

    :goto_281
    add-int v13, v10, v11

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    :goto_28a
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v10

    mul-int/lit8 v11, v9, 0x6

    add-int/2addr v11, v10

    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/State;->setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/junrar/unpack/ppm/State;->setSymbol(I)V

    invoke-virtual {v1, v13}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    goto/16 :goto_188

    :cond_2b3
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    return-void
.end method

.method private updateModelRestart()V
    .registers 2

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    return-void
.end method


# virtual methods
.method public decodeChar()I
    .registers 5

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_eb

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v1

    if-le v0, v1, :cond_1f

    goto/16 :goto_eb

    :cond_1f
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v0, v3, :cond_55

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-le v0, v3, :cond_4d

    goto :goto_55

    :cond_4d
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->decodeSymbol1(Lcom/junrar/unpack/ppm/ModelPPM;)Z

    move-result v0

    if-nez v0, :cond_5b

    :cond_55
    :goto_55
    return v2

    :cond_56
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->decodeBinSymbol(Lcom/junrar/unpack/ppm/ModelPPM;)V

    :cond_5b
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->decode()V

    :goto_60
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    :cond_6d
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v0

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v0, v3, :cond_b1

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v0

    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-le v0, v3, :cond_98

    goto :goto_b1

    :cond_98
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    iget v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    if-eq v0, v3, :cond_6d

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->decodeSymbol2(Lcom/junrar/unpack/ppm/ModelPPM;)Z

    move-result v0

    if-nez v0, :cond_ab

    return v2

    :cond_ab
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->decode()V

    goto :goto_60

    :cond_b1
    :goto_b1
    return v2

    :cond_b2
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v0

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v1, :cond_db

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v2

    if-le v1, v2, :cond_db

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    goto :goto_e5

    :cond_db
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModel()V

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    if-nez v1, :cond_e5

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->clearMask()V

    :cond_e5
    :goto_e5
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    return v0

    :cond_eb
    :goto_eb
    return v2
.end method

.method public decodeInit(Lcom/junrar/unpack/Unpack;)Z
    .registers 9

    invoke-virtual {p1}, Lcom/junrar/unpack/Unpack;->getChar()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/junrar/unpack/Unpack;->getChar()I

    move-result v4

    if-le v4, v3, :cond_23

    move v4, v3

    goto :goto_23

    :cond_19
    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/SubAllocator;->GetAllocatedMemory()I

    move-result v4

    if-nez v4, :cond_22

    return v2

    :cond_22
    move v4, v2

    :cond_23
    :goto_23
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_2e

    invoke-virtual {p1}, Lcom/junrar/unpack/Unpack;->getChar()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/junrar/unpack/Unpack;->setPpmEscChar(I)V

    :cond_2e
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v5, p1}, Lcom/junrar/unpack/ppm/RangeCoder;->initDecoder(Lcom/junrar/unpack/Unpack;)V

    if-eqz v1, :cond_93

    and-int/lit8 p1, v0, 0x1f

    add-int/2addr p1, v3

    const/16 v0, 0x10

    if-le p1, v0, :cond_41

    add-int/lit8 p1, p1, -0x10

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v0

    :cond_41
    if-ne p1, v3, :cond_49

    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    return v2

    :cond_49
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/SubAllocator;->startSubAllocator(I)Z

    new-instance v1, Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    new-instance v1, Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    new-instance v1, Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    new-instance v1, Lcom/junrar/unpack/ppm/SEE2Context;

    invoke-direct {v1}, Lcom/junrar/unpack/ppm/SEE2Context;-><init>()V

    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/junrar/unpack/ppm/SEE2Context;

    move v1, v2

    :goto_78
    const/16 v4, 0x19

    if-ge v1, v4, :cond_90

    move v4, v2

    :goto_7d
    if-ge v4, v0, :cond_8d

    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    aget-object v5, v5, v1

    new-instance v6, Lcom/junrar/unpack/ppm/SEE2Context;

    invoke-direct {v6}, Lcom/junrar/unpack/ppm/SEE2Context;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_90
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/ModelPPM;->startModelRare(I)V

    :cond_93
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    if-eqz p1, :cond_9c

    move v2, v3

    :cond_9c
    return v2
.end method

.method public getBinSumm()[[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    return-object v0
.end method

.method public getCharMask()[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    return-object v0
.end method

.method public getCoder()Lcom/junrar/unpack/ppm/RangeCoder;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    return-object v0
.end method

.method public getDummySEE2Cont()Lcom/junrar/unpack/ppm/SEE2Context;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/junrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getEscCount()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    return v0
.end method

.method public getFoundState()Lcom/junrar/unpack/ppm/State;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    return-object v0
.end method

.method public getHB2Flag()[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    return-object v0
.end method

.method public getHeap()[B
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    return-object v0
.end method

.method public getHiBitsFlag()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    return v0
.end method

.method public getInitRL()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    return v0
.end method

.method public getNS2BSIndx()[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    return-object v0
.end method

.method public getNS2Indx()[I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    return-object v0
.end method

.method public getNumMasked()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    return v0
.end method

.method public getOrderFall()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    return v0
.end method

.method public getPrevSuccess()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    return v0
.end method

.method public getRunLength()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    return v0
.end method

.method public getSEE2Cont()[[Lcom/junrar/unpack/ppm/SEE2Context;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    return-object v0
.end method

.method public incEscCount(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/ModelPPM;->setEscCount(I)V

    return-void
.end method

.method public incRunLength(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    return-void
.end method

.method public setHiBitsFlag(I)V
    .registers 2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    return-void
.end method

.method public setInitEsc(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initEsc:I

    return-void
.end method

.method public setNumMasked(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    return-void
.end method

.method public setPrevSuccess(I)V
    .registers 2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    return-void
.end method

.method public setRunLength(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ModelPPM["

    const-string v1, "\n  numMasked="

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  initEsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initEsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  orderFall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  maxOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  runLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  initRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  escCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  prevSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  foundState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  coder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  subAlloc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
