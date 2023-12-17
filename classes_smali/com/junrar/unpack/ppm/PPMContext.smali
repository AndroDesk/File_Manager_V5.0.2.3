.class Lcom/junrar/unpack/ppm/PPMContext;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "PPMContext.java"


# static fields
.field private static final ExpEscape:[I

.field public static final size:I

.field private static final unionSize:I


# instance fields
.field private final freqData:Lcom/junrar/unpack/ppm/FreqData;

.field private numStats:I

.field private final oneState:Lcom/junrar/unpack/ppm/State;

.field private final ps:[I

.field private suffix:I

.field private tempPPMContext:Lcom/junrar/unpack/ppm/PPMContext;

.field private final tempState1:Lcom/junrar/unpack/ppm/State;

.field private final tempState2:Lcom/junrar/unpack/ppm/State;

.field private final tempState3:Lcom/junrar/unpack/ppm/State;

.field private final tempState4:Lcom/junrar/unpack/ppm/State;

.field private final tempState5:Lcom/junrar/unpack/ppm/State;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/PPMContext;->unionSize:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/junrar/unpack/ppm/PPMContext;->size:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    return-void

    nop

    :array_18
    .array-data 4
        0x19
        0xe
        0x9
        0x7
        0x5
        0x5
        0x4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/junrar/unpack/ppm/State;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    new-instance v0, Lcom/junrar/unpack/ppm/State;

    invoke-direct {v0, p1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    new-instance v0, Lcom/junrar/unpack/ppm/FreqData;

    invoke-direct {v0, p1}, Lcom/junrar/unpack/ppm/FreqData;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    return-void
.end method

.method private getArrayIndex(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;)I
    .registers 6

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNS2BSIndx()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result v0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result p2

    aget p2, v2, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    add-int/2addr p2, v1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result p1

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 p1, p1, 0x20

    add-int/2addr p2, p1

    return p2
.end method

.method private getMean(III)I
    .registers 5

    sub-int p3, p2, p3

    const/4 v0, 0x1

    shl-int p3, v0, p3

    add-int/2addr p1, p3

    ushr-int/2addr p1, p2

    return p1
.end method

.method private getTempPPMContext([B)Lcom/junrar/unpack/ppm/PPMContext;
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/junrar/unpack/ppm/PPMContext;

    if-nez v0, :cond_c

    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/junrar/unpack/ppm/PPMContext;

    :cond_c
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object p1

    return-object p1
.end method

.method private makeEscFreq2(Lcom/junrar/unpack/ppm/ModelPPM;I)Lcom/junrar/unpack/ppm/SEE2Context;
    .registers 9

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_64

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNS2Indx()[I

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    aget v2, v2, v3

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v1, :cond_2a

    move v1, v4

    goto :goto_2b

    :cond_2a
    move v1, v3

    :goto_2b
    add-int/2addr v1, v3

    iget-object v5, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v5

    mul-int/lit8 v0, v0, 0xb

    if-ge v5, v0, :cond_38

    move v0, v4

    goto :goto_39

    :cond_38
    move v0, v3

    :goto_39
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v1

    if-le v1, p2, :cond_43

    move v3, v4

    :cond_43
    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSEE2Cont()[[Lcom/junrar/unpack/ppm/SEE2Context;

    move-result-object v0

    aget-object v0, v0, v2

    aget-object p2, v0, p2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object p1

    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/SEE2Context;->getMean()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    goto :goto_75

    :cond_64
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getDummySEE2Cont()Lcom/junrar/unpack/ppm/SEE2Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    :goto_75
    return-object p2
.end method

.method private rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V
    .registers 15

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-instance v3, Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    new-instance v4, Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    new-instance v5, Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    :goto_30
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    iget-object v7, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v7}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v7

    if-eq v6, v7, :cond_4c

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-static {v4, v5}, Lcom/junrar/unpack/ppm/State;->ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    goto :goto_30

    :cond_4c
    iget-object v6, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    iget-object v7, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v7, v6}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    iget-object v6, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v6

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getOrderFall()I

    move-result v7

    if-eqz v7, :cond_71

    move v7, v2

    goto :goto_72

    :cond_71
    const/4 v7, 0x0

    :goto_72
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    add-int/2addr v8, v7

    ushr-int/2addr v8, v2

    invoke-virtual {v4, v8}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    iget-object v8, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    :cond_84
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    add-int/2addr v8, v7

    ushr-int/2addr v8, v2

    invoke-virtual {v4, v8}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    iget-object v8, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v5, v8}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    if-le v8, v9, :cond_103

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    new-instance v8, Lcom/junrar/unpack/ppm/StateRef;

    invoke-direct {v8}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    invoke-virtual {v8, v3}, Lcom/junrar/unpack/ppm/StateRef;->setValues(Lcom/junrar/unpack/ppm/State;)V

    new-instance v9, Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    new-instance v10, Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    :cond_d2
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v9, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/State;)V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v10, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    iget-object v12, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v12}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v12

    if-eq v11, v12, :cond_100

    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v11

    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v12

    if-gt v11, v12, :cond_d2

    :cond_100
    invoke-virtual {v3, v8}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/StateRef;)V

    :cond_103
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_84

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v3

    if-nez v3, :cond_164

    :cond_10d
    add-int/2addr v1, v2

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v3

    if-eqz v3, :cond_10d

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    if-ne v1, v2, :cond_164

    new-instance v1, Lcom/junrar/unpack/ppm/StateRef;

    invoke-direct {v1}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    iget-object v3, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v1, v5}, Lcom/junrar/unpack/ppm/StateRef;->setValues(Lcom/junrar/unpack/ppm/State;)V

    :cond_137
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v3

    ushr-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/StateRef;->decFreq(I)V

    ushr-int/2addr v6, v2

    if-gt v6, v2, :cond_137

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    move-result-object v3

    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v4

    add-int/2addr v0, v2

    ushr-int/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->freeUnits(II)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/StateRef;)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object p1

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    return-void

    :cond_164
    ushr-int/lit8 v1, v6, 0x1

    sub-int/2addr v6, v1

    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v1, v6}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    add-int/2addr v0, v2

    ushr-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    add-int/2addr v1, v2

    ushr-int/2addr v1, v2

    if-eq v0, v1, :cond_189

    iget-object v2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    move-result-object v3

    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->shrinkUnits(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    :cond_189
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object p1

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    return-void
.end method

.method private setOneState(Lcom/junrar/unpack/ppm/StateRef;)V
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/StateRef;)V

    return-void
.end method

.method private setSuffix(Lcom/junrar/unpack/ppm/PPMContext;)V
    .registers 2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    return-void
.end method

.method private update1(Lcom/junrar/unpack/ppm/ModelPPM;I)V
    .registers 6

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    add-int/lit8 p2, p2, -0x6

    invoke-virtual {v1, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result p2

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    if-le p2, v2, :cond_53

    invoke-static {v0, v1}, Lcom/junrar/unpack/ppm/State;->ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object p2

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result p2

    const/16 v0, 0x7c

    if-le p2, v0, :cond_53

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V

    :cond_53
    return-void
.end method

.method private update2(Lcom/junrar/unpack/ppm/ModelPPM;I)V
    .registers 5

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    iget-object p2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {p2, v1}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result p2

    const/16 v0, 0x7c

    if-le p2, v0, :cond_2c

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V

    :cond_2c
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/ppm/ModelPPM;->incEscCount(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getInitRL()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    return-void
.end method


# virtual methods
.method public createChild(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/StateRef;)I
    .registers 5

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    invoke-direct {v0, p3}, Lcom/junrar/unpack/ppm/PPMContext;->setOneState(Lcom/junrar/unpack/ppm/StateRef;)V

    invoke-direct {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->setSuffix(Lcom/junrar/unpack/ppm/PPMContext;)V

    invoke-virtual {p2, v0}, Lcom/junrar/unpack/ppm/State;->setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    return p1
.end method

.method public decodeBinSymbol(Lcom/junrar/unpack/ppm/ModelPPM;)V
    .registers 15

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->getArrayIndex(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;)I

    move-result v3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v4

    aget-object v4, v4, v1

    aget v4, v4, v3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/RangeCoder;->getCurrentShiftCount(I)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v5, v5, v7

    const v6, 0xffff

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/4 v11, 0x0

    if-gez v5, :cond_91

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v5

    const/16 v12, 0x80

    if-ge v5, v12, :cond_5f

    move v11, v2

    :cond_5f
    invoke-virtual {v0, v11}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    add-int/lit16 v0, v4, 0x80

    invoke-direct {p0, v4, v10, v9}, Lcom/junrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v4

    sub-int/2addr v0, v4

    and-int/2addr v0, v6

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v4

    aget-object v1, v4, v1

    aput v0, v1, v3

    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    goto :goto_db

    :cond_91
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    invoke-direct {p0, v4, v10, v9}, Lcom/junrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v5

    sub-int/2addr v4, v5

    and-int/2addr v4, v6

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v5

    aget-object v1, v5, v1

    aput v4, v1, v3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v1

    const-wide/16 v5, 0x4000

    invoke-virtual {v1, v5, v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    sget-object v1, Lcom/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    ushr-int/lit8 v3, v4, 0xa

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->setInitEsc(I)V

    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1, v11}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    :goto_db
    return-void
.end method

.method public decodeSymbol1(Lcom/junrar/unpack/ppm/ModelPPM;)Z
    .registers 15

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v1

    iget-object v2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    new-instance v1, Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    iget-object v2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v4

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_37

    return v5

    :cond_37
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v4

    int-to-long v6, v4

    cmp-long v8, v2, v6

    const/4 v9, 0x1

    if-gez v8, :cond_8c

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    mul-int/lit8 v2, v4, 0x2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v6

    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_58

    move v5, v9

    :cond_58
    invoke-virtual {p1, v5}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    const/4 v2, 0x4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v3

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    const/16 v1, 0x7c

    if-le v4, v1, :cond_82

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V

    :cond_82
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    return v9

    :cond_8c
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    if-nez v6, :cond_97

    return v5

    :cond_97
    invoke-virtual {p1, v5}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    move v8, v7

    :cond_a1
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v10

    add-int/2addr v4, v10

    int-to-long v10, v4

    cmp-long v12, v10, v2

    if-gtz v12, :cond_109

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_a1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p1, v6}, Lcom/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    :cond_e3
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v3

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_e3

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object p1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    return v9

    :cond_109
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v2

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-long v3, v4

    invoke-virtual {v2, v3, v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->update1(Lcom/junrar/unpack/ppm/ModelPPM;I)V

    return v9
.end method

.method public decodeSymbol2(Lcom/junrar/unpack/ppm/ModelPPM;)Z
    .registers 14

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->makeEscFreq2(Lcom/junrar/unpack/ppm/ModelPPM;I)Lcom/junrar/unpack/ppm/SEE2Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    move-result-object v2

    iget-object v3, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v3

    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    move-result-object v4

    iget-object v5, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v3, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_33
    :goto_33
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v8

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v9

    if-eq v8, v9, :cond_33

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v10

    aput v10, v8, v7

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_100

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->incScale(I)V

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-ltz v0, :cond_72

    return v5

    :cond_72
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    aget v0, v0, v5

    invoke-virtual {v3, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    int-to-long v9, v6

    cmp-long v0, v7, v9

    const/4 v11, 0x1

    if-gez v0, :cond_b2

    move v0, v5

    :goto_80
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v4

    add-int/2addr v5, v4

    int-to-long v9, v5

    cmp-long v4, v9, v7

    if-gtz v4, :cond_93

    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/2addr v0, v11

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    goto :goto_80

    :cond_93
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-long v4, v5

    invoke-virtual {v0, v4, v5}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/SEE2Context;->update()V

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->update2(Lcom/junrar/unpack/ppm/ModelPPM;I)V

    goto :goto_ff

    :cond_b2
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v7, -0x1

    move v3, v7

    :cond_d3
    iget-object v5, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/2addr v3, v11

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v5

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    move-result v6

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v8

    aput v8, v5, v6

    add-int/2addr v0, v7

    if-nez v0, :cond_d3

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/SEE2Context;->incSumm(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    :goto_ff
    return v11

    :cond_100
    move v7, v9

    goto/16 :goto_33
.end method

.method public getFreqData()Lcom/junrar/unpack/ppm/FreqData;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    return-object v0
.end method

.method public final getNumStats()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->numStats:I

    :cond_10
    iget v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->numStats:I

    return v0
.end method

.method public getOneState()Lcom/junrar/unpack/ppm/State;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    return-object v0
.end method

.method public getSuffix()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->suffix:I

    :cond_e
    iget v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->suffix:I

    return v0
.end method

.method public init([B)Lcom/junrar/unpack/ppm/PPMContext;
    .registers 3

    iput-object p1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/FreqData;->init([B)Lcom/junrar/unpack/ppm/FreqData;

    return-object p0
.end method

.method public setAddress(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/FreqData;->setAddress(I)V

    return-void
.end method

.method public final setNumStats(I)V
    .registers 4

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->numStats:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    :cond_10
    return-void
.end method

.method public setSuffix(I)V
    .registers 4

    iput p1, p0, Lcom/junrar/unpack/ppm/PPMContext;->suffix:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "PPMContext[\n  pos="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/junrar/unpack/ppm/PPMContext;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  numStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freqData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  oneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
