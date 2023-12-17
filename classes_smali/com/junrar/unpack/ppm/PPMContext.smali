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

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result v0

    .line 6
    sput v0, Lcom/junrar/unpack/ppm/PPMContext;->unionSize:I

    .line 8
    add-int/lit8 v0, v0, 0x2

    .line 10
    add-int/lit8 v0, v0, 0x4

    .line 12
    sput v0, Lcom/junrar/unpack/ppm/PPMContext;->size:I

    .line 14
    const/16 v0, 0x10

    .line 16
    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_18

    .line 21
    sput-object v0, Lcom/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    .line 23
    return-void

    .line 24
    nop

    .line 25
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

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 4
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 10
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/junrar/unpack/ppm/State;

    .line 12
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 14
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 17
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/junrar/unpack/ppm/State;

    .line 19
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 21
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 24
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/junrar/unpack/ppm/State;

    .line 26
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 28
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 31
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/junrar/unpack/ppm/State;

    .line 33
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 35
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 38
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/junrar/unpack/ppm/State;

    .line 40
    const/16 v0, 0x100

    .line 42
    new-array v0, v0, [I

    .line 44
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    .line 46
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 48
    invoke-direct {v0, p1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 51
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 53
    new-instance v0, Lcom/junrar/unpack/ppm/FreqData;

    .line 55
    invoke-direct {v0, p1}, Lcom/junrar/unpack/ppm/FreqData;-><init>([B)V

    .line 58
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 60
    return-void
.end method

.method private getArrayIndex(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 20
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, 0x0

    .line 26
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNS2BSIndx()[I

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 33
    move-result v0

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 36
    aget v0, v2, v0

    .line 38
    add-int/2addr v1, v0

    .line 39
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 50
    move-result p2

    .line 51
    aget p2, v2, p2

    .line 53
    mul-int/lit8 p2, p2, 0x2

    .line 55
    add-int/2addr p2, v0

    .line 56
    add-int/2addr p2, v1

    .line 57
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    .line 60
    move-result p1

    .line 61
    ushr-int/lit8 p1, p1, 0x1a

    .line 63
    and-int/lit8 p1, p1, 0x20

    .line 65
    add-int/2addr p2, p1

    .line 66
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

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    .line 11
    iput-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 15
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method private makeEscFreq2(Lcom/junrar/unpack/ppm/ModelPPM;I)Lcom/junrar/unpack/ppm/SEE2Context;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x100

    .line 7
    if-eq v0, v1, :cond_64

    .line 9
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 24
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNS2Indx()[I

    .line 27
    move-result-object v2

    .line 28
    add-int/lit8 v3, p2, -0x1

    .line 30
    aget v2, v2, v3

    .line 32
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ge p2, v1, :cond_2a

    .line 41
    move v1, v4

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v1, v3

    .line 44
    :goto_2b
    add-int/2addr v1, v3

    .line 45
    iget-object v5, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 47
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 50
    move-result v5

    .line 51
    mul-int/lit8 v0, v0, 0xb

    .line 53
    if-ge v5, v0, :cond_38

    .line 55
    move v0, v4

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v0, v3

    .line 58
    :goto_39
    mul-int/lit8 v0, v0, 0x2

    .line 60
    add-int/2addr v0, v1

    .line 61
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    .line 64
    move-result v1

    .line 65
    if-le v1, p2, :cond_43

    .line 67
    move v3, v4

    .line 68
    :cond_43
    mul-int/lit8 v3, v3, 0x4

    .line 70
    add-int/2addr v3, v0

    .line 71
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    .line 74
    move-result p2

    .line 75
    add-int/2addr p2, v3

    .line 76
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSEE2Cont()[[Lcom/junrar/unpack/ppm/SEE2Context;

    .line 79
    move-result-object v0

    .line 80
    aget-object v0, v0, v2

    .line 82
    aget-object p2, v0, p2

    .line 84
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/SEE2Context;->getMean()I

    .line 95
    move-result v0

    .line 96
    int-to-long v0, v0

    .line 97
    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 100
    goto :goto_75

    .line 101
    :cond_64
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getDummySEE2Cont()Lcom/junrar/unpack/ppm/SEE2Context;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 112
    move-result-object p1

    .line 113
    const-wide/16 v0, 0x1

    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 118
    :goto_75
    return-object p2
.end method

.method private rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    new-instance v3, Lcom/junrar/unpack/ppm/State;

    .line 13
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, v4}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 20
    new-instance v4, Lcom/junrar/unpack/ppm/State;

    .line 22
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 25
    move-result-object v5

    .line 26
    invoke-direct {v4, v5}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 29
    new-instance v5, Lcom/junrar/unpack/ppm/State;

    .line 31
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v5, v6}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 38
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 45
    move-result v6

    .line 46
    invoke-virtual {v4, v6}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 49
    :goto_30
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 52
    move-result v6

    .line 53
    iget-object v7, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 55
    invoke-virtual {v7}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 58
    move-result v7

    .line 59
    if-eq v6, v7, :cond_4c

    .line 61
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 64
    move-result v6

    .line 65
    add-int/lit8 v6, v6, -0x6

    .line 67
    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 70
    invoke-static {v4, v5}, Lcom/junrar/unpack/ppm/State;->ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V

    .line 73
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    .line 76
    goto :goto_30

    .line 77
    :cond_4c
    iget-object v6, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 79
    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 82
    move-result v6

    .line 83
    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 86
    const/4 v6, 0x4

    .line 87
    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    .line 90
    iget-object v7, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 92
    invoke-virtual {v7, v6}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 95
    iget-object v6, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 97
    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 100
    move-result v6

    .line 101
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 104
    move-result v7

    .line 105
    sub-int/2addr v6, v7

    .line 106
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getOrderFall()I

    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_71

    .line 112
    move v7, v2

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    const/4 v7, 0x0

    .line 115
    :goto_72
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 118
    move-result v8

    .line 119
    add-int/2addr v8, v7

    .line 120
    ushr-int/2addr v8, v2

    .line 121
    invoke-virtual {v4, v8}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    .line 124
    iget-object v8, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 126
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 129
    move-result v9

    .line 130
    invoke-virtual {v8, v9}, Lcom/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 133
    :cond_84
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    .line 136
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 139
    move-result v8

    .line 140
    sub-int/2addr v6, v8

    .line 141
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 144
    move-result v8

    .line 145
    add-int/2addr v8, v7

    .line 146
    ushr-int/2addr v8, v2

    .line 147
    invoke-virtual {v4, v8}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    .line 150
    iget-object v8, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 152
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 155
    move-result v9

    .line 156
    invoke-virtual {v8, v9}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 159
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 162
    move-result v8

    .line 163
    add-int/lit8 v8, v8, -0x6

    .line 165
    invoke-virtual {v5, v8}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 168
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 171
    move-result v8

    .line 172
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 175
    move-result v9

    .line 176
    if-le v8, v9, :cond_103

    .line 178
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 181
    move-result v8

    .line 182
    invoke-virtual {v3, v8}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 185
    new-instance v8, Lcom/junrar/unpack/ppm/StateRef;

    .line 187
    invoke-direct {v8}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    .line 190
    invoke-virtual {v8, v3}, Lcom/junrar/unpack/ppm/StateRef;->setValues(Lcom/junrar/unpack/ppm/State;)V

    .line 193
    new-instance v9, Lcom/junrar/unpack/ppm/State;

    .line 195
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 198
    move-result-object v10

    .line 199
    invoke-direct {v9, v10}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 202
    new-instance v10, Lcom/junrar/unpack/ppm/State;

    .line 204
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 207
    move-result-object v11

    .line 208
    invoke-direct {v10, v11}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 211
    :cond_d2
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 214
    move-result v11

    .line 215
    add-int/lit8 v11, v11, -0x6

    .line 217
    invoke-virtual {v9, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 220
    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/State;)V

    .line 223
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    .line 226
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 229
    move-result v11

    .line 230
    add-int/lit8 v11, v11, -0x6

    .line 232
    invoke-virtual {v10, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 235
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 238
    move-result v11

    .line 239
    iget-object v12, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 241
    invoke-virtual {v12}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 244
    move-result v12

    .line 245
    if-eq v11, v12, :cond_100

    .line 247
    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    .line 250
    move-result v11

    .line 251
    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 254
    move-result v12

    .line 255
    if-gt v11, v12, :cond_d2

    .line 257
    :cond_100
    invoke-virtual {v3, v8}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/StateRef;)V

    .line 260
    :cond_103
    add-int/lit8 v1, v1, -0x1

    .line 262
    if-nez v1, :cond_84

    .line 264
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 267
    move-result v3

    .line 268
    if-nez v3, :cond_164

    .line 270
    :cond_10d
    add-int/2addr v1, v2

    .line 271
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    .line 274
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_10d

    .line 280
    add-int/2addr v6, v1

    .line 281
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 284
    move-result v3

    .line 285
    sub-int/2addr v3, v1

    .line 286
    invoke-virtual {p0, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 289
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 292
    move-result v1

    .line 293
    if-ne v1, v2, :cond_164

    .line 295
    new-instance v1, Lcom/junrar/unpack/ppm/StateRef;

    .line 297
    invoke-direct {v1}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    .line 300
    iget-object v3, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 302
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 305
    move-result v3

    .line 306
    invoke-virtual {v5, v3}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 309
    invoke-virtual {v1, v5}, Lcom/junrar/unpack/ppm/StateRef;->setValues(Lcom/junrar/unpack/ppm/State;)V

    .line 312
    :cond_137
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    .line 315
    move-result v3

    .line 316
    ushr-int/2addr v3, v2

    .line 317
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/StateRef;->decFreq(I)V

    .line 320
    ushr-int/2addr v6, v2

    .line 321
    if-gt v6, v2, :cond_137

    .line 323
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    .line 326
    move-result-object v3

    .line 327
    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 329
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 332
    move-result v4

    .line 333
    add-int/2addr v0, v2

    .line 334
    ushr-int/2addr v0, v2

    .line 335
    invoke-virtual {v3, v4, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->freeUnits(II)V

    .line 338
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 340
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/StateRef;)V

    .line 343
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 346
    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 349
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 352
    move-result v0

    .line 353
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 356
    return-void

    .line 357
    :cond_164
    ushr-int/lit8 v1, v6, 0x1

    .line 359
    sub-int/2addr v6, v1

    .line 360
    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 362
    invoke-virtual {v1, v6}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 365
    add-int/2addr v0, v2

    .line 366
    ushr-int/2addr v0, v2

    .line 367
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 370
    move-result v1

    .line 371
    add-int/2addr v1, v2

    .line 372
    ushr-int/2addr v1, v2

    .line 373
    if-eq v0, v1, :cond_189

    .line 375
    iget-object v2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 377
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    .line 380
    move-result-object v3

    .line 381
    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 383
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 386
    move-result v4

    .line 387
    invoke-virtual {v3, v4, v0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->shrinkUnits(III)I

    .line 390
    move-result v0

    .line 391
    invoke-virtual {v2, v0}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 394
    :cond_189
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 397
    move-result-object p1

    .line 398
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 400
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 403
    move-result v0

    .line 404
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 407
    return-void
.end method

.method private setOneState(Lcom/junrar/unpack/ppm/StateRef;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 3
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/StateRef;)V

    .line 6
    return-void
.end method

.method private setSuffix(Lcom/junrar/unpack/ppm/PPMContext;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    return-void
.end method

.method private update1(Lcom/junrar/unpack/ppm/ModelPPM;I)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 8
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    .line 16
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 18
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 21
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/junrar/unpack/ppm/State;

    .line 23
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/junrar/unpack/ppm/State;

    .line 33
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 44
    add-int/lit8 p2, p2, -0x6

    .line 46
    invoke-virtual {v1, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 49
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 52
    move-result p2

    .line 53
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 56
    move-result v2

    .line 57
    if-le p2, v2, :cond_53

    .line 59
    invoke-static {v0, v1}, Lcom/junrar/unpack/ppm/State;->ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V

    .line 62
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 69
    move-result v0

    .line 70
    invoke-virtual {p2, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 73
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 76
    move-result p2

    .line 77
    const/16 v0, 0x7c

    .line 79
    if-le p2, v0, :cond_53

    .line 81
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V

    .line 84
    :cond_53
    return-void
.end method

.method private update2(Lcom/junrar/unpack/ppm/ModelPPM;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/junrar/unpack/ppm/State;

    .line 3
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 14
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 21
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 24
    move-result-object p2

    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-virtual {p2, v1}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    .line 29
    iget-object p2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 31
    invoke-virtual {p2, v1}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 34
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 37
    move-result p2

    .line 38
    const/16 v0, 0x7c

    .line 40
    if-le p2, v0, :cond_2c

    .line 42
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V

    .line 45
    :cond_2c
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/ppm/ModelPPM;->incEscCount(I)V

    .line 49
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getInitRL()I

    .line 52
    move-result p2

    .line 53
    invoke-virtual {p1, p2}, Lcom/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public createChild(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/StateRef;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/SubAllocator;->allocContext()I

    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 28
    invoke-direct {v0, p3}, Lcom/junrar/unpack/ppm/PPMContext;->setOneState(Lcom/junrar/unpack/ppm/StateRef;)V

    .line 31
    invoke-direct {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->setSuffix(Lcom/junrar/unpack/ppm/PPMContext;)V

    .line 34
    invoke-virtual {p2, v0}, Lcom/junrar/unpack/ppm/State;->setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V

    .line 37
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public decodeBinSymbol(Lcom/junrar/unpack/ppm/ModelPPM;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/junrar/unpack/ppm/State;

    .line 3
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 13
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 20
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 31
    move-result v2

    .line 32
    aget v1, v1, v2

    .line 34
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 37
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    sub-int/2addr v1, v2

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->getArrayIndex(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;)I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    .line 50
    move-result-object v4

    .line 51
    aget-object v4, v4, v1

    .line 53
    aget v4, v4, v3

    .line 55
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 58
    move-result-object v5

    .line 59
    const/16 v6, 0xe

    .line 61
    invoke-virtual {v5, v6}, Lcom/junrar/unpack/ppm/RangeCoder;->getCurrentShiftCount(I)J

    .line 64
    move-result-wide v5

    .line 65
    int-to-long v7, v4

    .line 66
    cmp-long v5, v5, v7

    .line 68
    const v6, 0xffff

    .line 71
    const/4 v9, 0x2

    .line 72
    const/4 v10, 0x7

    .line 73
    const/4 v11, 0x0

    .line 74
    if-gez v5, :cond_91

    .line 76
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 83
    move-result v12

    .line 84
    invoke-virtual {v5, v12}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 87
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 90
    move-result v5

    .line 91
    const/16 v12, 0x80

    .line 93
    if-ge v5, v12, :cond_5f

    .line 95
    move v11, v2

    .line 96
    :cond_5f
    invoke-virtual {v0, v11}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    .line 99
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 106
    move-result-object v0

    .line 107
    const-wide/16 v11, 0x0

    .line 109
    invoke-virtual {v0, v11, v12}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 112
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v7, v8}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 123
    add-int/lit16 v0, v4, 0x80

    .line 125
    invoke-direct {p0, v4, v10, v9}, Lcom/junrar/unpack/ppm/PPMContext;->getMean(III)I

    .line 128
    move-result v4

    .line 129
    sub-int/2addr v0, v4

    .line 130
    and-int/2addr v0, v6

    .line 131
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    .line 134
    move-result-object v4

    .line 135
    aget-object v1, v4, v1

    .line 137
    aput v0, v1, v3

    .line 139
    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 142
    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    .line 145
    goto :goto_db

    .line 146
    :cond_91
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5, v7, v8}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 157
    invoke-direct {p0, v4, v10, v9}, Lcom/junrar/unpack/ppm/PPMContext;->getMean(III)I

    .line 160
    move-result v5

    .line 161
    sub-int/2addr v4, v5

    .line 162
    and-int/2addr v4, v6

    .line 163
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    .line 166
    move-result-object v5

    .line 167
    aget-object v1, v5, v1

    .line 169
    aput v4, v1, v3

    .line 171
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 178
    move-result-object v1

    .line 179
    const-wide/16 v5, 0x4000

    .line 181
    invoke-virtual {v1, v5, v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 184
    sget-object v1, Lcom/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    .line 186
    ushr-int/lit8 v3, v4, 0xa

    .line 188
    aget v1, v1, v3

    .line 190
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->setInitEsc(I)V

    .line 193
    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 196
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 203
    move-result v0

    .line 204
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    .line 207
    move-result v2

    .line 208
    aput v2, v1, v0

    .line 210
    invoke-virtual {p1, v11}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 213
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 220
    :goto_db
    return-void
.end method

.method public decodeSymbol1(Lcom/junrar/unpack/ppm/ModelPPM;)Z
    .registers 15

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 11
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 14
    move-result v2

    .line 15
    int-to-long v2, v2

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 19
    new-instance v1, Lcom/junrar/unpack/ppm/State;

    .line 21
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 28
    iget-object v2, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 30
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 37
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    .line 40
    move-result v2

    .line 41
    int-to-long v2, v2

    .line 42
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 49
    move-result-wide v4

    .line 50
    cmp-long v4, v2, v4

    .line 52
    const/4 v5, 0x0

    .line 53
    if-ltz v4, :cond_37

    .line 55
    return v5

    .line 56
    :cond_37
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 59
    move-result v4

    .line 60
    int-to-long v6, v4

    .line 61
    cmp-long v8, v2, v6

    .line 63
    const/4 v9, 0x1

    .line 64
    if-gez v8, :cond_8c

    .line 66
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v6, v7}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 73
    mul-int/lit8 v2, v4, 0x2

    .line 75
    int-to-long v2, v2

    .line 76
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 83
    move-result-wide v6

    .line 84
    cmp-long v2, v2, v6

    .line 86
    if-lez v2, :cond_58

    .line 88
    move v5, v9

    .line 89
    :cond_58
    invoke-virtual {p1, v5}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 92
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    .line 95
    move-result v2

    .line 96
    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    .line 99
    const/4 v2, 0x4

    .line 100
    add-int/2addr v4, v2

    .line 101
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 108
    move-result v1

    .line 109
    invoke-virtual {v3, v1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 112
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    .line 119
    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 121
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 124
    const/16 v1, 0x7c

    .line 126
    if-le v4, v1, :cond_82

    .line 128
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/PPMContext;->rescale(Lcom/junrar/unpack/ppm/ModelPPM;)V

    .line 131
    :cond_82
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 134
    move-result-object p1

    .line 135
    const-wide/16 v0, 0x0

    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 140
    return v9

    .line 141
    :cond_8c
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_97

    .line 151
    return v5

    .line 152
    :cond_97
    invoke-virtual {p1, v5}, Lcom/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 155
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 158
    move-result v6

    .line 159
    add-int/lit8 v7, v6, -0x1

    .line 161
    move v8, v7

    .line 162
    :cond_a1
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    .line 165
    move-result-object v10

    .line 166
    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 169
    move-result v10

    .line 170
    add-int/2addr v4, v10

    .line 171
    int-to-long v10, v4

    .line 172
    cmp-long v12, v10, v2

    .line 174
    if-gtz v12, :cond_109

    .line 176
    add-int/lit8 v8, v8, -0x1

    .line 178
    if-nez v8, :cond_a1

    .line 180
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 191
    move-result v3

    .line 192
    aget v2, v2, v3

    .line 194
    invoke-virtual {p1, v2}, Lcom/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 197
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2, v10, v11}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 204
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 211
    move-result v3

    .line 212
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    .line 215
    move-result v4

    .line 216
    aput v4, v2, v3

    .line 218
    invoke-virtual {p1, v6}, Lcom/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 221
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/junrar/unpack/ppm/State;

    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 228
    :cond_e3
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 239
    move-result v3

    .line 240
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    .line 243
    move-result v4

    .line 244
    aput v4, v2, v3

    .line 246
    add-int/lit8 v7, v7, -0x1

    .line 248
    if-nez v7, :cond_e3

    .line 250
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 261
    move-result-wide v0

    .line 262
    invoke-virtual {p1, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 265
    return v9

    .line 266
    :cond_109
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 273
    move-result v3

    .line 274
    sub-int/2addr v4, v3

    .line 275
    int-to-long v3, v4

    .line 276
    invoke-virtual {v2, v3, v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 279
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0, v10, v11}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 286
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 289
    move-result v0

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->update1(Lcom/junrar/unpack/ppm/ModelPPM;I)V

    .line 293
    return v9
.end method

.method public decodeSymbol2(Lcom/junrar/unpack/ppm/ModelPPM;)Z
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->makeEscFreq2(Lcom/junrar/unpack/ppm/ModelPPM;I)Lcom/junrar/unpack/ppm/SEE2Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/junrar/unpack/ppm/RangeCoder;

    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/junrar/unpack/ppm/State;

    .line 20
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 27
    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/junrar/unpack/ppm/State;

    .line 30
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 37
    move-result-object v4

    .line 38
    iget-object v5, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 40
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 43
    move-result v5

    .line 44
    add-int/lit8 v5, v5, -0x6

    .line 46
    invoke-virtual {v3, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 49
    const/4 v5, 0x0

    .line 50
    move v6, v5

    .line 51
    move v7, v6

    .line 52
    :cond_33
    :goto_33
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    .line 55
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 62
    move-result v9

    .line 63
    aget v8, v8, v9

    .line 65
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    .line 68
    move-result v9

    .line 69
    if-eq v8, v9, :cond_33

    .line 71
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 74
    move-result v8

    .line 75
    add-int/2addr v6, v8

    .line 76
    iget-object v8, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    .line 78
    add-int/lit8 v9, v7, 0x1

    .line 80
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 83
    move-result v10

    .line 84
    aput v10, v8, v7

    .line 86
    add-int/lit8 v0, v0, -0x1

    .line 88
    if-nez v0, :cond_100

    .line 90
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->incScale(I)V

    .line 97
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    .line 100
    move-result v0

    .line 101
    int-to-long v7, v0

    .line 102
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 109
    move-result-wide v9

    .line 110
    cmp-long v0, v7, v9

    .line 112
    if-ltz v0, :cond_72

    .line 114
    return v5

    .line 115
    :cond_72
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    .line 117
    aget v0, v0, v5

    .line 119
    invoke-virtual {v3, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 122
    int-to-long v9, v6

    .line 123
    cmp-long v0, v7, v9

    .line 125
    const/4 v11, 0x1

    .line 126
    if-gez v0, :cond_b2

    .line 128
    move v0, v5

    .line 129
    :goto_80
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 132
    move-result v4

    .line 133
    add-int/2addr v5, v4

    .line 134
    int-to-long v9, v5

    .line 135
    cmp-long v4, v9, v7

    .line 137
    if-gtz v4, :cond_93

    .line 139
    iget-object v4, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    .line 141
    add-int/2addr v0, v11

    .line 142
    aget v4, v4, v0

    .line 144
    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 147
    goto :goto_80

    .line 148
    :cond_93
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, v9, v10}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 155
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 162
    move-result v2

    .line 163
    sub-int/2addr v5, v2

    .line 164
    int-to-long v4, v5

    .line 165
    invoke-virtual {v0, v4, v5}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 168
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/SEE2Context;->update()V

    .line 171
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 174
    move-result v0

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->update2(Lcom/junrar/unpack/ppm/ModelPPM;I)V

    .line 178
    goto :goto_ff

    .line 179
    :cond_b2
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, v9, v10}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 186
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 197
    move-result-wide v5

    .line 198
    invoke-virtual {v0, v5, v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 201
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 204
    move-result v0

    .line 205
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    .line 208
    move-result v3

    .line 209
    sub-int/2addr v0, v3

    .line 210
    const/4 v7, -0x1

    .line 211
    move v3, v7

    .line 212
    :cond_d3
    iget-object v5, p0, Lcom/junrar/unpack/ppm/PPMContext;->ps:[I

    .line 214
    add-int/2addr v3, v11

    .line 215
    aget v5, v5, v3

    .line 217
    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 220
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 227
    move-result v6

    .line 228
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    .line 231
    move-result v8

    .line 232
    aput v8, v5, v6

    .line 234
    add-int/2addr v0, v7

    .line 235
    if-nez v0, :cond_d3

    .line 237
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 244
    move-result-wide v2

    .line 245
    long-to-int v0, v2

    .line 246
    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/SEE2Context;->incSumm(I)V

    .line 249
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 252
    move-result v0

    .line 253
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 256
    :goto_ff
    return v11

    .line 257
    :cond_100
    move v7, v9

    .line 258
    goto/16 :goto_33
.end method

.method public getFreqData()Lcom/junrar/unpack/ppm/FreqData;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 3
    return-object v0
.end method

.method public final getNumStats()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 10
    move-result v0

    .line 11
    const v1, 0xffff

    .line 14
    and-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->numStats:I

    .line 17
    :cond_10
    iget v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->numStats:I

    .line 19
    return v0
.end method

.method public getOneState()Lcom/junrar/unpack/ppm/State;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 3
    return-object v0
.end method

.method public getSuffix()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    add-int/lit8 v1, v1, 0x8

    .line 9
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->suffix:I

    .line 15
    :cond_e
    iget v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->suffix:I

    .line 17
    return v0
.end method

.method public init([B)Lcom/junrar/unpack/ppm/PPMContext;
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 6
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 8
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 11
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 13
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/FreqData;->init([B)Lcom/junrar/unpack/ppm/FreqData;

    .line 16
    return-object p0
.end method

.method public setAddress(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 4
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 6
    add-int/lit8 p1, p1, 0x2

    .line 8
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 11
    iget-object v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 13
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/FreqData;->setAddress(I)V

    .line 16
    return-void
.end method

.method public final setNumStats(I)V
    .registers 4

    .line 1
    const v0, 0xffff

    .line 4
    and-int/2addr v0, p1

    .line 5
    iput v0, p0, Lcom/junrar/unpack/ppm/PPMContext;->numStats:I

    .line 7
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 9
    if-eqz v0, :cond_10

    .line 11
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 13
    int-to-short p1, p1

    .line 14
    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 17
    :cond_10
    return-void
.end method

.method public setSuffix(I)V
    .registers 4

    .line 2
    iput p1, p0, Lcom/junrar/unpack/ppm/PPMContext;->suffix:I

    .line 3
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_d

    .line 4
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "PPMContext[\n  pos="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "\n  size="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget v1, Lcom/junrar/unpack/ppm/PPMContext;->size:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "\n  numStats="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "\n  Suffix="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "\n  freqData="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->freqData:Lcom/junrar/unpack/ppm/FreqData;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "\n  oneState="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/junrar/unpack/ppm/PPMContext;->oneState:Lcom/junrar/unpack/ppm/State;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "\n]"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
