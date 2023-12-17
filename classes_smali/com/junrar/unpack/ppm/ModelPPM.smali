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

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_a

    .line 8
    sput-object v0, Lcom/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    .line 10
    return-void

    .line 11
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_94

    .line 10
    const-class v2, Lcom/junrar/unpack/ppm/SEE2Context;

    .line 12
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, [[Lcom/junrar/unpack/ppm/SEE2Context;

    .line 18
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    .line 20
    const/16 v1, 0x100

    .line 22
    new-array v2, v1, [I

    .line 24
    iput-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    .line 26
    new-array v2, v1, [I

    .line 28
    iput-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    .line 30
    new-array v2, v1, [I

    .line 32
    iput-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 34
    new-array v1, v1, [I

    .line 36
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    .line 38
    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_9c

    .line 43
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, [[I

    .line 51
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    .line 53
    new-instance v0, Lcom/junrar/unpack/ppm/RangeCoder;

    .line 55
    invoke-direct {v0}, Lcom/junrar/unpack/ppm/RangeCoder;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 60
    new-instance v0, Lcom/junrar/unpack/ppm/SubAllocator;

    .line 62
    invoke-direct {v0}, Lcom/junrar/unpack/ppm/SubAllocator;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 67
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 73
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/junrar/unpack/ppm/State;

    .line 75
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 77
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 80
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/junrar/unpack/ppm/State;

    .line 82
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 84
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 87
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/junrar/unpack/ppm/State;

    .line 89
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 91
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 94
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/junrar/unpack/ppm/State;

    .line 96
    new-instance v0, Lcom/junrar/unpack/ppm/StateRef;

    .line 98
    invoke-direct {v0}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/junrar/unpack/ppm/StateRef;

    .line 103
    new-instance v0, Lcom/junrar/unpack/ppm/StateRef;

    .line 105
    invoke-direct {v0}, Lcom/junrar/unpack/ppm/StateRef;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/junrar/unpack/ppm/StateRef;

    .line 110
    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    .line 112
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    .line 115
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/junrar/unpack/ppm/PPMContext;

    .line 117
    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    .line 119
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    .line 122
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/junrar/unpack/ppm/PPMContext;

    .line 124
    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    .line 126
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    .line 129
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/junrar/unpack/ppm/PPMContext;

    .line 131
    new-instance v0, Lcom/junrar/unpack/ppm/PPMContext;

    .line 133
    invoke-direct {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    .line 136
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/junrar/unpack/ppm/PPMContext;

    .line 138
    const/16 v0, 0x40

    .line 140
    new-array v0, v0, [I

    .line 142
    iput-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    .line 144
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 146
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 148
    return-void

    .line 149
    :array_94
    .array-data 4
        0x19
        0x10
    .end array-data

    .line 157
    :array_9c
    .array-data 4
        0x80
        0x40
    .end array-data
.end method

.method private clearMask()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 4
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 10
    return-void
.end method

.method private createSuccessors(ZLcom/junrar/unpack/ppm/State;)I
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/junrar/unpack/ppm/StateRef;

    .line 3
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/junrar/unpack/ppm/State;

    .line 5
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/junrar/unpack/ppm/PPMContext;

    .line 15
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 25
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 32
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/junrar/unpack/ppm/PPMContext;

    .line 34
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 44
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 47
    move-result v4

    .line 48
    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 51
    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/junrar/unpack/ppm/State;

    .line 53
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 60
    move-result-object v4

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x1

    .line 63
    if-nez p1, :cond_55

    .line 65
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    .line 67
    iget-object v7, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 69
    invoke-virtual {v7}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 72
    move-result v7

    .line 73
    aput v7, p1, v5

    .line 75
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_52

    .line 81
    move p1, v6

    .line 82
    goto :goto_56

    .line 83
    :cond_52
    move p1, v5

    .line 84
    move v7, v6

    .line 85
    goto :goto_57

    .line 86
    :cond_55
    move p1, v5

    .line 87
    :goto_56
    move v7, p1

    .line 88
    :goto_57
    if-nez p1, :cond_d4

    .line 90
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6f

    .line 96
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 99
    move-result p1

    .line 100
    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 103
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 106
    move-result p1

    .line 107
    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 110
    move p1, v6

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move p1, v5

    .line 113
    :goto_70
    if-nez p1, :cond_b1

    .line 115
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 118
    move-result p1

    .line 119
    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 122
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 125
    move-result p1

    .line 126
    if-eq p1, v6, :cond_a6

    .line 128
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 135
    move-result p1

    .line 136
    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 139
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 142
    move-result p1

    .line 143
    iget-object p2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 145
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 148
    move-result p2

    .line 149
    if-eq p1, p2, :cond_b1

    .line 151
    :cond_96
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    .line 154
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 157
    move-result p1

    .line 158
    iget-object p2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 160
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 163
    move-result p2

    .line 164
    if-ne p1, p2, :cond_96

    .line 166
    goto :goto_b1

    .line 167
    :cond_a6
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 174
    move-result p1

    .line 175
    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 178
    :cond_b1
    :goto_b1
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 181
    move-result p1

    .line 182
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 185
    move-result p2

    .line 186
    if-eq p1, p2, :cond_c3

    .line 188
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 191
    move-result p1

    .line 192
    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 195
    goto :goto_d4

    .line 196
    :cond_c3
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    .line 198
    add-int/lit8 p2, v7, 0x1

    .line 200
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 203
    move-result v8

    .line 204
    aput v8, p1, v7

    .line 206
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 209
    move-result p1

    .line 210
    move v7, p2

    .line 211
    if-nez p1, :cond_6f

    .line 213
    :cond_d4
    :goto_d4
    if-nez v7, :cond_db

    .line 215
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 218
    move-result p1

    .line 219
    return p1

    .line 220
    :cond_db
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 227
    move-result p2

    .line 228
    aget-byte p1, p1, p2

    .line 230
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSymbol(I)V

    .line 233
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 236
    move-result p1

    .line 237
    add-int/2addr p1, v6

    .line 238
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 241
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 244
    move-result p1

    .line 245
    if-eq p1, v6, :cond_150

    .line 247
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 250
    move-result p1

    .line 251
    iget-object p2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 253
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 256
    move-result p2

    .line 257
    if-gt p1, p2, :cond_103

    .line 259
    return v5

    .line 260
    :cond_103
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 267
    move-result p1

    .line 268
    invoke-virtual {v4, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 271
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 274
    move-result p1

    .line 275
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    .line 278
    move-result p2

    .line 279
    if-eq p1, p2, :cond_125

    .line 281
    :cond_118
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    .line 284
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 287
    move-result p1

    .line 288
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    .line 291
    move-result p2

    .line 292
    if-ne p1, p2, :cond_118

    .line 294
    :cond_125
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 297
    move-result p1

    .line 298
    sub-int/2addr p1, v6

    .line 299
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 306
    move-result p2

    .line 307
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 310
    move-result v3

    .line 311
    sub-int/2addr p2, v3

    .line 312
    sub-int/2addr p2, p1

    .line 313
    mul-int/lit8 v3, p1, 0x2

    .line 315
    if-gt v3, p2, :cond_144

    .line 317
    mul-int/lit8 p1, p1, 0x5

    .line 319
    if-le p1, p2, :cond_142

    .line 321
    move p1, v6

    .line 322
    goto :goto_14b

    .line 323
    :cond_142
    move p1, v5

    .line 324
    goto :goto_14b

    .line 325
    :cond_144
    mul-int/lit8 p1, p2, 0x3

    .line 327
    add-int/2addr p1, v3

    .line 328
    sub-int/2addr p1, v6

    .line 329
    mul-int/lit8 p2, p2, 0x2

    .line 331
    div-int/2addr p1, p2

    .line 332
    :goto_14b
    add-int/2addr v6, p1

    .line 333
    invoke-virtual {v0, v6}, Lcom/junrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 336
    goto :goto_15b

    .line 337
    :cond_150
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 344
    move-result p1

    .line 345
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 348
    :cond_15b
    :goto_15b
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->ps:[I

    .line 350
    add-int/lit8 v7, v7, -0x1

    .line 352
    aget p1, p1, v7

    .line 354
    invoke-virtual {v1, p1}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 357
    invoke-virtual {v2, p0, v1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->createChild(Lcom/junrar/unpack/ppm/ModelPPM;Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/StateRef;)I

    .line 360
    move-result p1

    .line 361
    invoke-virtual {v2, p1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 364
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 367
    move-result p1

    .line 368
    if-nez p1, :cond_172

    .line 370
    return v5

    .line 371
    :cond_172
    if-nez v7, :cond_15b

    .line 373
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 376
    move-result p1

    .line 377
    return p1
.end method

.method private restartModelRare()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 7
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 9
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->initSubAllocator()V

    .line 12
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    .line 14
    const/16 v2, 0xc

    .line 16
    if-ge v0, v2, :cond_12

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v0, v2

    .line 20
    :goto_13
    neg-int v0, v0

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v0, v2

    .line 23
    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    .line 25
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 27
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->allocContext()I

    .line 30
    move-result v0

    .line 31
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 33
    invoke-virtual {v3, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 36
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 38
    invoke-virtual {v3, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 41
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 43
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    .line 46
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    .line 48
    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 50
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 52
    const/16 v3, 0x100

    .line 54
    invoke-virtual {v0, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 57
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 59
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 62
    move-result-object v0

    .line 63
    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 65
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 68
    move-result v4

    .line 69
    add-int/2addr v4, v2

    .line 70
    invoke-virtual {v0, v4}, Lcom/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 73
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 75
    const/16 v4, 0x80

    .line 77
    invoke-virtual {v0, v4}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    .line 80
    move-result v0

    .line 81
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 83
    invoke-virtual {v5, v0}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 86
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 88
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5, v0}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 95
    new-instance v0, Lcom/junrar/unpack/ppm/State;

    .line 97
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 99
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    .line 102
    move-result-object v5

    .line 103
    invoke-direct {v0, v5}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 106
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 108
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 115
    move-result v5

    .line 116
    iget v6, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    .line 118
    iput v6, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 120
    iput v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 122
    move v6, v1

    .line 123
    :goto_7a
    if-ge v6, v3, :cond_8e

    .line 125
    mul-int/lit8 v7, v6, 0x6

    .line 127
    add-int/2addr v7, v5

    .line 128
    invoke-virtual {v0, v7}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 131
    invoke-virtual {v0, v6}, Lcom/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 134
    invoke-virtual {v0, v2}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 142
    goto :goto_7a

    .line 143
    :cond_8e
    move v0, v1

    .line 144
    :goto_8f
    if-ge v0, v4, :cond_b5

    .line 146
    move v2, v1

    .line 147
    :goto_92
    const/16 v3, 0x8

    .line 149
    if-ge v2, v3, :cond_b2

    .line 151
    move v3, v1

    .line 152
    :goto_97
    const/16 v5, 0x40

    .line 154
    if-ge v3, v5, :cond_af

    .line 156
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    .line 158
    aget-object v5, v5, v0

    .line 160
    add-int v6, v2, v3

    .line 162
    sget-object v7, Lcom/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    .line 164
    aget v7, v7, v2

    .line 166
    add-int/lit8 v8, v0, 0x2

    .line 168
    div-int/2addr v7, v8

    .line 169
    rsub-int v7, v7, 0x4000

    .line 171
    aput v7, v5, v6

    .line 173
    add-int/lit8 v3, v3, 0x8

    .line 175
    goto :goto_97

    .line 176
    :cond_af
    add-int/lit8 v2, v2, 0x1

    .line 178
    goto :goto_92

    .line 179
    :cond_b2
    add-int/lit8 v0, v0, 0x1

    .line 181
    goto :goto_8f

    .line 182
    :cond_b5
    move v0, v1

    .line 183
    :goto_b6
    const/16 v2, 0x19

    .line 185
    if-ge v0, v2, :cond_d2

    .line 187
    move v2, v1

    .line 188
    :goto_bb
    const/16 v3, 0x10

    .line 190
    if-ge v2, v3, :cond_cf

    .line 192
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    .line 194
    aget-object v3, v3, v0

    .line 196
    aget-object v3, v3, v2

    .line 198
    mul-int/lit8 v4, v0, 0x5

    .line 200
    add-int/lit8 v4, v4, 0xa

    .line 202
    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/SEE2Context;->init(I)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    .line 207
    goto :goto_bb

    .line 208
    :cond_cf
    add-int/lit8 v0, v0, 0x1

    .line 210
    goto :goto_b6

    .line 211
    :cond_d2
    return-void
.end method

.method private setEscCount(I)V
    .registers 2

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 5
    return-void
.end method

.method private startModelRare(I)V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 4
    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    .line 6
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 9
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 11
    const/4 v1, 0x0

    .line 12
    aput v1, p1, v1

    .line 14
    const/4 v2, 0x2

    .line 15
    aput v2, p1, v0

    .line 17
    move p1, v1

    .line 18
    :goto_11
    const/16 v2, 0x9

    .line 20
    if-ge p1, v2, :cond_1f

    .line 22
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 24
    add-int/lit8 v3, p1, 0x2

    .line 26
    const/4 v4, 0x4

    .line 27
    aput v4, v2, v3

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 31
    goto :goto_11

    .line 32
    :cond_1f
    move p1, v1

    .line 33
    :goto_20
    const/16 v2, 0xf5

    .line 35
    if-ge p1, v2, :cond_2e

    .line 37
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 39
    add-int/lit8 v3, p1, 0xb

    .line 41
    const/4 v4, 0x6

    .line 42
    aput v4, v2, v3

    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 46
    goto :goto_20

    .line 47
    :cond_2e
    move p1, v1

    .line 48
    :goto_2f
    const/4 v2, 0x3

    .line 49
    if-ge p1, v2, :cond_39

    .line 51
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    .line 53
    aput p1, v2, p1

    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 57
    goto :goto_2f

    .line 58
    :cond_39
    move v2, v0

    .line 59
    move v3, v2

    .line 60
    move v0, p1

    .line 61
    :goto_3c
    const/16 v4, 0x100

    .line 63
    if-ge p1, v4, :cond_50

    .line 65
    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    .line 67
    aput v0, v4, p1

    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 71
    if-nez v2, :cond_4d

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 77
    move v2, v3

    .line 78
    :cond_4d
    add-int/lit8 p1, p1, 0x1

    .line 80
    goto :goto_3c

    .line 81
    :cond_50
    move p1, v1

    .line 82
    :goto_51
    const/16 v0, 0x40

    .line 84
    if-ge p1, v0, :cond_5c

    .line 86
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    .line 88
    aput v1, v0, p1

    .line 90
    add-int/lit8 p1, p1, 0x1

    .line 92
    goto :goto_51

    .line 93
    :cond_5c
    :goto_5c
    const/16 p1, 0xc0

    .line 95
    if-ge v1, p1, :cond_6b

    .line 97
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    .line 99
    add-int/lit8 v0, v1, 0x40

    .line 101
    const/16 v2, 0x8

    .line 103
    aput v2, p1, v0

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 107
    goto :goto_5c

    .line 108
    :cond_6b
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/junrar/unpack/ppm/SEE2Context;

    .line 110
    const/4 v0, 0x7

    .line 111
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/SEE2Context;->setShift(I)V

    .line 114
    return-void
.end method

.method private updateModel()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/junrar/unpack/ppm/StateRef;

    .line 3
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 5
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/StateRef;->setValues(Lcom/junrar/unpack/ppm/State;)V

    .line 8
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/junrar/unpack/ppm/State;

    .line 10
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/junrar/unpack/ppm/State;

    .line 20
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/State;->init([B)Lcom/junrar/unpack/ppm/State;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/junrar/unpack/ppm/PPMContext;

    .line 30
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/junrar/unpack/ppm/PPMContext;

    .line 40
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Lcom/junrar/unpack/ppm/PPMContext;->init([B)Lcom/junrar/unpack/ppm/PPMContext;

    .line 47
    move-result-object v4

    .line 48
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 50
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 53
    move-result v5

    .line 54
    invoke-virtual {v3, v5}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 57
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    .line 60
    move-result v5

    .line 61
    const/4 v6, 0x2

    .line 62
    const/4 v7, 0x1

    .line 63
    const/16 v8, 0x1f

    .line 65
    if-ge v5, v8, :cond_b2

    .line 67
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_b2

    .line 73
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 76
    move-result v5

    .line 77
    if-eq v5, v7, :cond_9c

    .line 79
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 86
    move-result v5

    .line 87
    invoke-virtual {v1, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 90
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 93
    move-result v5

    .line 94
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    .line 97
    move-result v8

    .line 98
    if-eq v5, v8, :cond_89

    .line 100
    :cond_63
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->incAddress()Lcom/junrar/unpack/ppm/State;

    .line 103
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 106
    move-result v5

    .line 107
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    .line 110
    move-result v8

    .line 111
    if-ne v5, v8, :cond_63

    .line 113
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 116
    move-result v5

    .line 117
    add-int/lit8 v5, v5, -0x6

    .line 119
    invoke-virtual {v2, v5}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 122
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 125
    move-result v5

    .line 126
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 129
    move-result v8

    .line 130
    if-lt v5, v8, :cond_89

    .line 132
    invoke-static {v1, v2}, Lcom/junrar/unpack/ppm/State;->ppmdSwap(Lcom/junrar/unpack/ppm/State;Lcom/junrar/unpack/ppm/State;)V

    .line 135
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->decAddress()Lcom/junrar/unpack/ppm/State;

    .line 138
    :cond_89
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 141
    move-result v2

    .line 142
    const/16 v5, 0x73

    .line 144
    if-ge v2, v5, :cond_b2

    .line 146
    invoke-virtual {v1, v6}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    .line 149
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2, v6}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 156
    goto :goto_b2

    .line 157
    :cond_9c
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 164
    move-result v2

    .line 165
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 168
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 171
    move-result v2

    .line 172
    const/16 v5, 0x20

    .line 174
    if-ge v2, v5, :cond_b2

    .line 176
    invoke-virtual {v1, v7}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    .line 179
    :cond_b2
    :goto_b2
    iget v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 181
    if-nez v2, :cond_e1

    .line 183
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 185
    invoke-direct {p0, v7, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/junrar/unpack/ppm/State;)I

    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 192
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 194
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 196
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 203
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 205
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 207
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 210
    move-result v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 214
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 216
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_e0

    .line 222
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 225
    :cond_e0
    return-void

    .line 226
    :cond_e1
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 228
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    .line 231
    move-result-object v2

    .line 232
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 234
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 237
    move-result v5

    .line 238
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    .line 241
    move-result v8

    .line 242
    int-to-byte v8, v8

    .line 243
    aput-byte v8, v2, v5

    .line 245
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 247
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->incPText()V

    .line 250
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 252
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 255
    move-result v2

    .line 256
    invoke-virtual {v4, v2}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 259
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 261
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 264
    move-result v2

    .line 265
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 267
    invoke-virtual {v5}, Lcom/junrar/unpack/ppm/SubAllocator;->getFakeUnitsStart()I

    .line 270
    move-result v5

    .line 271
    if-lt v2, v5, :cond_114

    .line 273
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 276
    return-void

    .line 277
    :cond_114
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    .line 280
    move-result v2

    .line 281
    const/4 v5, 0x0

    .line 282
    if-eqz v2, :cond_15a

    .line 284
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    .line 287
    move-result v2

    .line 288
    iget-object v8, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 290
    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 293
    move-result v8

    .line 294
    if-gt v2, v8, :cond_138

    .line 296
    invoke-direct {p0, v5, v1}, Lcom/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/junrar/unpack/ppm/State;)I

    .line 299
    move-result v2

    .line 300
    invoke-virtual {v0, v2}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 303
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_138

    .line 309
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 312
    return-void

    .line 313
    :cond_138
    iget v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 315
    sub-int/2addr v2, v7

    .line 316
    iput v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 318
    if-nez v2, :cond_168

    .line 320
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    .line 323
    move-result v2

    .line 324
    invoke-virtual {v4, v2}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 327
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 329
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 332
    move-result v2

    .line 333
    iget-object v8, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 335
    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 338
    move-result v8

    .line 339
    if-eq v2, v8, :cond_168

    .line 341
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 343
    invoke-virtual {v2, v7}, Lcom/junrar/unpack/ppm/SubAllocator;->decPText(I)V

    .line 346
    goto :goto_168

    .line 347
    :cond_15a
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 349
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 352
    move-result v8

    .line 353
    invoke-virtual {v2, v8}, Lcom/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 356
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 358
    invoke-virtual {v0, v2}, Lcom/junrar/unpack/ppm/StateRef;->setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V

    .line 361
    :cond_168
    :goto_168
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 363
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 366
    move-result v2

    .line 367
    iget-object v8, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 369
    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 376
    move-result v8

    .line 377
    sub-int/2addr v8, v2

    .line 378
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    .line 381
    move-result v9

    .line 382
    sub-int/2addr v9, v7

    .line 383
    sub-int/2addr v8, v9

    .line 384
    iget-object v9, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 386
    invoke-virtual {v9}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 389
    move-result v9

    .line 390
    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 393
    :goto_188
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 396
    move-result v9

    .line 397
    iget-object v10, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 399
    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 402
    move-result v10

    .line 403
    if-eq v9, v10, :cond_2b3

    .line 405
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 408
    move-result v9

    .line 409
    const/4 v10, 0x3

    .line 410
    if-eq v9, v7, :cond_1ec

    .line 412
    and-int/lit8 v11, v9, 0x1

    .line 414
    if-nez v11, :cond_1c4

    .line 416
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 419
    move-result-object v11

    .line 420
    iget-object v12, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 422
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 425
    move-result-object v13

    .line 426
    invoke-virtual {v13}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 429
    move-result v13

    .line 430
    ushr-int/lit8 v14, v9, 0x1

    .line 432
    invoke-virtual {v12, v13, v14}, Lcom/junrar/unpack/ppm/SubAllocator;->expandUnits(II)I

    .line 435
    move-result v12

    .line 436
    invoke-virtual {v11, v12}, Lcom/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 439
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 442
    move-result-object v11

    .line 443
    invoke-virtual {v11}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 446
    move-result v11

    .line 447
    if-nez v11, :cond_1c4

    .line 449
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 452
    return-void

    .line 453
    :cond_1c4
    mul-int/lit8 v11, v9, 0x2

    .line 455
    if-ge v11, v2, :cond_1ca

    .line 457
    move v11, v7

    .line 458
    goto :goto_1cb

    .line 459
    :cond_1ca
    move v11, v5

    .line 460
    :goto_1cb
    mul-int/lit8 v12, v9, 0x4

    .line 462
    if-gt v12, v2, :cond_1d1

    .line 464
    move v12, v7

    .line 465
    goto :goto_1d2

    .line 466
    :cond_1d1
    move v12, v5

    .line 467
    :goto_1d2
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 470
    move-result-object v13

    .line 471
    invoke-virtual {v13}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 474
    move-result v13

    .line 475
    mul-int/lit8 v14, v9, 0x8

    .line 477
    if-gt v13, v14, :cond_1e0

    .line 479
    move v13, v7

    .line 480
    goto :goto_1e1

    .line 481
    :cond_1e0
    move v13, v5

    .line 482
    :goto_1e1
    and-int/2addr v12, v13

    .line 483
    mul-int/2addr v12, v6

    .line 484
    add-int/2addr v12, v11

    .line 485
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 488
    move-result-object v11

    .line 489
    invoke-virtual {v11, v12}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 492
    goto :goto_236

    .line 493
    :cond_1ec
    iget-object v11, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 495
    invoke-virtual {v11, v7}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    .line 498
    move-result v11

    .line 499
    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 502
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 505
    move-result v11

    .line 506
    if-nez v11, :cond_1ff

    .line 508
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 511
    return-void

    .line 512
    :cond_1ff
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/junrar/unpack/ppm/State;

    .line 515
    move-result-object v11

    .line 516
    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setValues(Lcom/junrar/unpack/ppm/State;)V

    .line 519
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 522
    move-result-object v11

    .line 523
    invoke-virtual {v11, v1}, Lcom/junrar/unpack/ppm/FreqData;->setStats(Lcom/junrar/unpack/ppm/State;)V

    .line 526
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 529
    move-result v11

    .line 530
    const/16 v12, 0x1e

    .line 532
    if-ge v11, v12, :cond_21d

    .line 534
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 537
    move-result v11

    .line 538
    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->incFreq(I)V

    .line 541
    goto :goto_222

    .line 542
    :cond_21d
    const/16 v11, 0x78

    .line 544
    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    .line 547
    :goto_222
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 550
    move-result-object v11

    .line 551
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getFreq()I

    .line 554
    move-result v12

    .line 555
    iget v13, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initEsc:I

    .line 557
    add-int/2addr v12, v13

    .line 558
    if-le v2, v10, :cond_231

    .line 560
    move v13, v7

    .line 561
    goto :goto_232

    .line 562
    :cond_231
    move v13, v5

    .line 563
    :goto_232
    add-int/2addr v12, v13

    .line 564
    invoke-virtual {v11, v12}, Lcom/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 567
    :goto_236
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getFreq()I

    .line 570
    move-result v11

    .line 571
    mul-int/2addr v11, v6

    .line 572
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 575
    move-result-object v12

    .line 576
    invoke-virtual {v12}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 579
    move-result v12

    .line 580
    add-int/lit8 v12, v12, 0x6

    .line 582
    mul-int/2addr v12, v11

    .line 583
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 586
    move-result-object v11

    .line 587
    invoke-virtual {v11}, Lcom/junrar/unpack/ppm/FreqData;->getSummFreq()I

    .line 590
    move-result v11

    .line 591
    add-int/2addr v11, v8

    .line 592
    mul-int/lit8 v13, v11, 0x6

    .line 594
    if-ge v12, v13, :cond_269

    .line 596
    if-le v12, v11, :cond_257

    .line 598
    move v13, v7

    .line 599
    goto :goto_258

    .line 600
    :cond_257
    move v13, v5

    .line 601
    :goto_258
    add-int/2addr v13, v7

    .line 602
    mul-int/lit8 v11, v11, 0x4

    .line 604
    if-lt v12, v11, :cond_25f

    .line 606
    move v11, v7

    .line 607
    goto :goto_260

    .line 608
    :cond_25f
    move v11, v5

    .line 609
    :goto_260
    add-int/2addr v13, v11

    .line 610
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 613
    move-result-object v11

    .line 614
    invoke-virtual {v11, v10}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 617
    goto :goto_28a

    .line 618
    :cond_269
    mul-int/lit8 v10, v11, 0x9

    .line 620
    if-lt v12, v10, :cond_26f

    .line 622
    move v10, v7

    .line 623
    goto :goto_270

    .line 624
    :cond_26f
    move v10, v5

    .line 625
    :goto_270
    add-int/lit8 v10, v10, 0x4

    .line 627
    mul-int/lit8 v13, v11, 0xc

    .line 629
    if-lt v12, v13, :cond_278

    .line 631
    move v13, v7

    .line 632
    goto :goto_279

    .line 633
    :cond_278
    move v13, v5

    .line 634
    :goto_279
    add-int/2addr v10, v13

    .line 635
    mul-int/lit8 v11, v11, 0xf

    .line 637
    if-lt v12, v11, :cond_280

    .line 639
    move v11, v7

    .line 640
    goto :goto_281

    .line 641
    :cond_280
    move v11, v5

    .line 642
    :goto_281
    add-int v13, v10, v11

    .line 644
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 647
    move-result-object v10

    .line 648
    invoke-virtual {v10, v13}, Lcom/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 651
    :goto_28a
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 654
    move-result-object v10

    .line 655
    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 658
    move-result v10

    .line 659
    mul-int/lit8 v11, v9, 0x6

    .line 661
    add-int/2addr v11, v10

    .line 662
    invoke-virtual {v1, v11}, Lcom/junrar/unpack/ppm/State;->setAddress(I)V

    .line 665
    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/State;->setSuccessor(Lcom/junrar/unpack/ppm/PPMContext;)V

    .line 668
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSymbol()I

    .line 671
    move-result v10

    .line 672
    invoke-virtual {v1, v10}, Lcom/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 675
    invoke-virtual {v1, v13}, Lcom/junrar/unpack/ppm/State;->setFreq(I)V

    .line 678
    add-int/lit8 v9, v9, 0x1

    .line 680
    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 683
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 686
    move-result v9

    .line 687
    invoke-virtual {v3, v9}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 690
    goto/16 :goto_188

    .line 692
    :cond_2b3
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/StateRef;->getSuccessor()I

    .line 695
    move-result v0

    .line 696
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 698
    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 701
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 703
    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 706
    return-void
.end method

.method private updateModelRestart()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 7
    return-void
.end method


# virtual methods
.method public decodeChar()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 3
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 9
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-le v0, v1, :cond_eb

    .line 16
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 18
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 24
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    .line 27
    move-result v1

    .line 28
    if-le v0, v1, :cond_1f

    .line 30
    goto/16 :goto_eb

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 34
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq v0, v1, :cond_56

    .line 41
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 43
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 50
    move-result v0

    .line 51
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 53
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 56
    move-result v3

    .line 57
    if-le v0, v3, :cond_55

    .line 59
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 61
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/junrar/unpack/ppm/FreqData;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/FreqData;->getStats()I

    .line 68
    move-result v0

    .line 69
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 71
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    .line 74
    move-result v3

    .line 75
    if-le v0, v3, :cond_4d

    .line 77
    goto :goto_55

    .line 78
    :cond_4d
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 80
    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->decodeSymbol1(Lcom/junrar/unpack/ppm/ModelPPM;)Z

    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_5b

    .line 86
    :cond_55
    :goto_55
    return v2

    .line 87
    :cond_56
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 89
    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->decodeBinSymbol(Lcom/junrar/unpack/ppm/ModelPPM;)V

    .line 92
    :cond_5b
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 94
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->decode()V

    .line 97
    :goto_60
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 99
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getAddress()I

    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_b2

    .line 105
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 107
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    .line 110
    :cond_6d
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 112
    add-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 115
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 117
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getSuffix()I

    .line 120
    move-result v3

    .line 121
    invoke-virtual {v0, v3}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 124
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 126
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 129
    move-result v0

    .line 130
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 132
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 135
    move-result v3

    .line 136
    if-le v0, v3, :cond_b1

    .line 138
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 140
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 143
    move-result v0

    .line 144
    iget-object v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 146
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    .line 149
    move-result v3

    .line 150
    if-le v0, v3, :cond_98

    .line 152
    goto :goto_b1

    .line 153
    :cond_98
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 155
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/PPMContext;->getNumStats()I

    .line 158
    move-result v0

    .line 159
    iget v3, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    .line 161
    if-eq v0, v3, :cond_6d

    .line 163
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 165
    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/PPMContext;->decodeSymbol2(Lcom/junrar/unpack/ppm/ModelPPM;)Z

    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_ab

    .line 171
    return v2

    .line 172
    :cond_ab
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 174
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RangeCoder;->decode()V

    .line 177
    goto :goto_60

    .line 178
    :cond_b1
    :goto_b1
    return v2

    .line 179
    :cond_b2
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 181
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/State;->getSymbol()I

    .line 184
    move-result v0

    .line 185
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 187
    if-nez v1, :cond_db

    .line 189
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 191
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 194
    move-result v1

    .line 195
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 197
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 200
    move-result v2

    .line 201
    if-le v1, v2, :cond_db

    .line 203
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 205
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/State;->getSuccessor()I

    .line 208
    move-result v1

    .line 209
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 211
    invoke-virtual {v2, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 214
    iget-object v2, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 216
    invoke-virtual {v2, v1}, Lcom/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 219
    goto :goto_e5

    .line 220
    :cond_db
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->updateModel()V

    .line 223
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 225
    if-nez v1, :cond_e5

    .line 227
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->clearMask()V

    .line 230
    :cond_e5
    :goto_e5
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 232
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    .line 235
    return v0

    .line 236
    :cond_eb
    :goto_eb
    return v2
.end method

.method public decodeInit(Lcom/junrar/unpack/Unpack;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/Unpack;->getChar()I

    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 7
    and-int/lit8 v1, v0, 0x20

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_e

    .line 13
    move v1, v3

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v1, v2

    .line 16
    :goto_f
    if-eqz v1, :cond_19

    .line 18
    invoke-virtual {p1}, Lcom/junrar/unpack/Unpack;->getChar()I

    .line 21
    move-result v4

    .line 22
    if-le v4, v3, :cond_23

    .line 24
    move v4, v3

    .line 25
    goto :goto_23

    .line 26
    :cond_19
    iget-object v4, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 28
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/SubAllocator;->GetAllocatedMemory()I

    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_22

    .line 34
    return v2

    .line 35
    :cond_22
    move v4, v2

    .line 36
    :cond_23
    :goto_23
    and-int/lit8 v5, v0, 0x40

    .line 38
    if-eqz v5, :cond_2e

    .line 40
    invoke-virtual {p1}, Lcom/junrar/unpack/Unpack;->getChar()I

    .line 43
    move-result v5

    .line 44
    invoke-virtual {p1, v5}, Lcom/junrar/unpack/Unpack;->setPpmEscChar(I)V

    .line 47
    :cond_2e
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 49
    invoke-virtual {v5, p1}, Lcom/junrar/unpack/ppm/RangeCoder;->initDecoder(Lcom/junrar/unpack/Unpack;)V

    .line 52
    if-eqz v1, :cond_93

    .line 54
    and-int/lit8 p1, v0, 0x1f

    .line 56
    add-int/2addr p1, v3

    .line 57
    const/16 v0, 0x10

    .line 59
    if-le p1, v0, :cond_41

    .line 61
    add-int/lit8 p1, p1, -0x10

    .line 63
    mul-int/lit8 p1, p1, 0x3

    .line 65
    add-int/2addr p1, v0

    .line 66
    :cond_41
    if-ne p1, v3, :cond_49

    .line 68
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 70
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 73
    return v2

    .line 74
    :cond_49
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 76
    add-int/2addr v4, v3

    .line 77
    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/SubAllocator;->startSubAllocator(I)Z

    .line 80
    new-instance v1, Lcom/junrar/unpack/ppm/PPMContext;

    .line 82
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 85
    move-result-object v4

    .line 86
    invoke-direct {v1, v4}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    .line 89
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 91
    new-instance v1, Lcom/junrar/unpack/ppm/PPMContext;

    .line 93
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v1, v4}, Lcom/junrar/unpack/ppm/PPMContext;-><init>([B)V

    .line 100
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 102
    new-instance v1, Lcom/junrar/unpack/ppm/State;

    .line 104
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    .line 107
    move-result-object v4

    .line 108
    invoke-direct {v1, v4}, Lcom/junrar/unpack/ppm/State;-><init>([B)V

    .line 111
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 113
    new-instance v1, Lcom/junrar/unpack/ppm/SEE2Context;

    .line 115
    invoke-direct {v1}, Lcom/junrar/unpack/ppm/SEE2Context;-><init>()V

    .line 118
    iput-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/junrar/unpack/ppm/SEE2Context;

    .line 120
    move v1, v2

    .line 121
    :goto_78
    const/16 v4, 0x19

    .line 123
    if-ge v1, v4, :cond_90

    .line 125
    move v4, v2

    .line 126
    :goto_7d
    if-ge v4, v0, :cond_8d

    .line 128
    iget-object v5, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    .line 130
    aget-object v5, v5, v1

    .line 132
    new-instance v6, Lcom/junrar/unpack/ppm/SEE2Context;

    .line 134
    invoke-direct {v6}, Lcom/junrar/unpack/ppm/SEE2Context;-><init>()V

    .line 137
    aput-object v6, v5, v4

    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 141
    goto :goto_7d

    .line 142
    :cond_8d
    add-int/lit8 v1, v1, 0x1

    .line 144
    goto :goto_78

    .line 145
    :cond_90
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/ModelPPM;->startModelRare(I)V

    .line 148
    :cond_93
    iget-object p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/junrar/unpack/ppm/PPMContext;

    .line 150
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_9c

    .line 156
    move v2, v3

    .line 157
    :cond_9c
    return v2
.end method

.method public getBinSumm()[[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    .line 3
    return-object v0
.end method

.method public getCharMask()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->charMask:[I

    .line 3
    return-object v0
.end method

.method public getCoder()Lcom/junrar/unpack/ppm/RangeCoder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 3
    return-object v0
.end method

.method public getDummySEE2Cont()Lcom/junrar/unpack/ppm/SEE2Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/junrar/unpack/ppm/SEE2Context;

    .line 3
    return-object v0
.end method

.method public getEscCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 3
    return v0
.end method

.method public getFoundState()Lcom/junrar/unpack/ppm/State;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 3
    return-object v0
.end method

.method public getHB2Flag()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    .line 3
    return-object v0
.end method

.method public getHeap()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 3
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHiBitsFlag()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    .line 3
    return v0
.end method

.method public getInitRL()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    .line 3
    return v0
.end method

.method public getNS2BSIndx()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 3
    return-object v0
.end method

.method public getNS2Indx()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    .line 3
    return-object v0
.end method

.method public getNumMasked()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    .line 3
    return v0
.end method

.method public getOrderFall()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 3
    return v0
.end method

.method public getPrevSuccess()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 3
    return v0
.end method

.method public getRunLength()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 3
    return v0
.end method

.method public getSEE2Cont()[[Lcom/junrar/unpack/ppm/SEE2Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/junrar/unpack/ppm/SEE2Context;

    .line 3
    return-object v0
.end method

.method public getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 3
    return-object v0
.end method

.method public incEscCount(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/ModelPPM;->setEscCount(I)V

    .line 9
    return-void
.end method

.method public incRunLength(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 9
    return-void
.end method

.method public setHiBitsFlag(I)V
    .registers 2

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    .line 5
    return-void
.end method

.method public setInitEsc(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initEsc:I

    .line 3
    return-void
.end method

.method public setNumMasked(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    .line 3
    return-void
.end method

.method public setPrevSuccess(I)V
    .registers 2

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 5
    return-void
.end method

.method public setRunLength(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ModelPPM["

    .line 3
    const-string v1, "\n  numMasked="

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->numMasked:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "\n  initEsc="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initEsc:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\n  orderFall="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "\n  maxOrder="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "\n  runLength="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "\n  initRL="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->initRL:I

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "\n  escCount="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "\n  prevSuccess="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "\n  foundState="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/junrar/unpack/ppm/State;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "\n  coder="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->coder:Lcom/junrar/unpack/ppm/RangeCoder;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "\n  subAlloc="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/junrar/unpack/ppm/SubAllocator;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "\n]"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method
