.class public Lcom/junrar/unpack/ppm/SubAllocator;
.super Ljava/lang/Object;
.source "SubAllocator.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final FIXED_UNIT_SIZE:I = 0xc

.field private static final N1:I = 0x4

.field private static final N2:I = 0x4

.field private static final N3:I = 0x4

.field private static final N4:I = 0x1a

.field private static final N_INDEXES:I = 0x26

.field private static final UNIT_SIZE:I


# instance fields
.field private fakeUnitsStart:I

.field private final freeList:[Lcom/junrar/unpack/ppm/RarNode;

.field private freeListPos:I

.field private glueCount:I

.field private heap:[B

.field private heapEnd:I

.field private heapStart:I

.field private hiUnit:I

.field private indx2Units:[I

.field private loUnit:I

.field private pText:I

.field private subAllocatorSize:I

.field private tempMemBlockPos:I

.field private tempRarMemBlock1:Lcom/junrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock2:Lcom/junrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock3:Lcom/junrar/unpack/ppm/RarMemBlock;

.field private tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

.field private units2Indx:[I

.field private unitsStart:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/junrar/unpack/ppm/PPMContext;->size:I

    .line 3
    const/16 v1, 0xc

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x26

    .line 6
    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 10
    const/16 v1, 0x80

    .line 12
    new-array v1, v1, [I

    .line 14
    iput-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 16
    new-array v0, v0, [Lcom/junrar/unpack/ppm/RarNode;

    .line 18
    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 20
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->clean()V

    .line 23
    return-void
.end method

.method private MBPtr(II)I
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 4
    move-result p2

    .line 5
    add-int/2addr p1, p2

    .line 6
    return p1
.end method

.method private U2B(I)I
    .registers 3

    .line 1
    sget v0, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    .line 3
    mul-int/2addr v0, p1

    .line 4
    return v0
.end method

.method private allocUnitsRare(I)I
    .registers 5

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 3
    if-nez v0, :cond_1a

    .line 5
    const/16 v0, 0xff

    .line 7
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 9
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->glueFreeBlocks()V

    .line 12
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 14
    aget-object v0, v0, p1

    .line 16
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1a

    .line 22
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1a
    move v0, p1

    .line 28
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 30
    const/16 v1, 0x26

    .line 32
    if-ne v0, v1, :cond_48

    .line 34
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 38
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 40
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 42
    aget v0, v0, p1

    .line 44
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 50
    aget p1, v1, p1

    .line 52
    mul-int/lit8 p1, p1, 0xc

    .line 54
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 56
    iget v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 58
    sub-int v2, v1, v2

    .line 60
    if-le v2, p1, :cond_46

    .line 62
    sub-int/2addr v1, p1

    .line 63
    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 65
    iget p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 67
    sub-int/2addr p1, v0

    .line 68
    iput p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 70
    return p1

    .line 71
    :cond_46
    const/4 p1, 0x0

    .line 72
    return p1

    .line 73
    :cond_48
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 75
    aget-object v1, v1, v0

    .line 77
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1b

    .line 83
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    .line 86
    move-result v1

    .line 87
    invoke-direct {p0, v1, v0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    .line 90
    return v1
.end method

.method private clean()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 4
    return-void
.end method

.method private glueFreeBlocks()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 8
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 10
    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 12
    iget v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 14
    iget v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eq v3, v4, :cond_16

    .line 19
    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 21
    aput-byte v5, v4, v3

    .line 23
    :cond_16
    invoke-virtual {v0, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    .line 26
    invoke-virtual {v0, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    .line 29
    :goto_1c
    const/16 v3, 0x26

    .line 31
    const v4, 0xffff

    .line 34
    if-ge v5, v3, :cond_45

    .line 36
    :goto_23
    iget-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 38
    aget-object v3, v3, v5

    .line 40
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_42

    .line 46
    invoke-direct {p0, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->insertAt(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    .line 56
    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/RarMemBlock;->setStamp(I)V

    .line 59
    iget-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 61
    aget v3, v3, v5

    .line 63
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNU(I)V

    .line 66
    goto :goto_23

    .line 67
    :cond_42
    add-int/lit8 v5, v5, 0x1

    .line 69
    goto :goto_1c

    .line 70
    :cond_45
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 73
    move-result v3

    .line 74
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 77
    :goto_4c
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 80
    move-result v3

    .line 81
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 84
    move-result v5

    .line 85
    if-eq v3, v5, :cond_9f

    .line 87
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    .line 94
    move-result v5

    .line 95
    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    .line 98
    move-result v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 102
    :goto_65
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->getStamp()I

    .line 105
    move-result v3

    .line 106
    if-ne v3, v4, :cond_97

    .line 108
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    .line 111
    move-result v3

    .line 112
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    .line 115
    move-result v5

    .line 116
    add-int/2addr v3, v5

    .line 117
    const/high16 v5, 0x10000

    .line 119
    if-ge v3, v5, :cond_97

    .line 121
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->remove()V

    .line 124
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    .line 127
    move-result v3

    .line 128
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    .line 131
    move-result v5

    .line 132
    add-int/2addr v3, v5

    .line 133
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNU(I)V

    .line 136
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 139
    move-result v3

    .line 140
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    .line 143
    move-result v5

    .line 144
    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    .line 147
    move-result v3

    .line 148
    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 151
    goto :goto_65

    .line 152
    :cond_97
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 155
    move-result v3

    .line 156
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 159
    goto :goto_4c

    .line 160
    :cond_9f
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 163
    move-result v2

    .line 164
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 167
    :goto_a6
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 170
    move-result v2

    .line 171
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 174
    move-result v3

    .line 175
    if-eq v2, v3, :cond_101

    .line 177
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->remove()V

    .line 180
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    .line 183
    move-result v2

    .line 184
    :goto_b7
    const/16 v3, 0x80

    .line 186
    if-le v2, v3, :cond_d2

    .line 188
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 191
    move-result v4

    .line 192
    const/16 v5, 0x25

    .line 194
    invoke-direct {p0, v4, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 197
    add-int/lit8 v2, v2, -0x80

    .line 199
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 202
    move-result v4

    .line 203
    invoke-direct {p0, v4, v3}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    .line 206
    move-result v3

    .line 207
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 210
    goto :goto_b7

    .line 211
    :cond_d2
    iget-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 213
    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 215
    add-int/lit8 v5, v2, -0x1

    .line 217
    aget v4, v4, v5

    .line 219
    aget v5, v3, v4

    .line 221
    if-eq v5, v2, :cond_f2

    .line 223
    add-int/lit8 v4, v4, -0x1

    .line 225
    aget v3, v3, v4

    .line 227
    sub-int v3, v2, v3

    .line 229
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 232
    move-result v5

    .line 233
    sub-int/2addr v2, v3

    .line 234
    invoke-direct {p0, v5, v2}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    .line 237
    move-result v2

    .line 238
    add-int/lit8 v3, v3, -0x1

    .line 240
    invoke-direct {p0, v2, v3}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 243
    :cond_f2
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    .line 246
    move-result v2

    .line 247
    invoke-direct {p0, v2, v4}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 250
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    .line 253
    move-result v2

    .line 254
    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 257
    goto :goto_a6

    .line 258
    :cond_101
    return-void
.end method

.method private insertNode(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    .line 3
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 6
    iget-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 8
    aget-object p1, p1, p2

    .line 10
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/RarNode;->setNext(I)V

    .line 17
    iget-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 19
    aget-object p1, p1, p2

    .line 21
    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/RarNode;->setNext(Lcom/junrar/unpack/ppm/RarNode;)V

    .line 24
    return-void
.end method

.method private removeNode(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 3
    aget-object v0, v0, p1

    .line 5
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    .line 11
    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 14
    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 16
    aget-object p1, v2, p1

    .line 18
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1, v1}, Lcom/junrar/unpack/ppm/RarNode;->setNext(I)V

    .line 25
    return v0
.end method

.method private setPText(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 3
    return-void
.end method

.method private sizeOfFreeList()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 3
    array-length v0, v0

    .line 4
    mul-int/lit8 v0, v0, 0x4

    .line 6
    return v0
.end method

.method private splitBlock(III)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 3
    aget p2, v0, p2

    .line 5
    aget p3, v0, p3

    .line 7
    sub-int/2addr p2, p3

    .line 8
    invoke-direct {p0, p3}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 11
    move-result p3

    .line 12
    add-int/2addr p1, p3

    .line 13
    iget-object p3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 15
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 17
    add-int/lit8 v1, p2, -0x1

    .line 19
    aget v0, v0, v1

    .line 21
    aget p3, p3, v0

    .line 23
    if-eq p3, p2, :cond_27

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 30
    iget-object p3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 32
    aget p3, p3, v0

    .line 34
    invoke-direct {p0, p3}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 37
    move-result v0

    .line 38
    add-int/2addr p1, v0

    .line 39
    sub-int/2addr p2, p3

    .line 40
    :cond_27
    iget-object p3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 42
    add-int/lit8 p2, p2, -0x1

    .line 44
    aget p2, p3, p2

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 49
    return-void
.end method


# virtual methods
.method public GetAllocatedMemory()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 3
    return v0
.end method

.method public allocContext()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 5
    if-eq v0, v1, :cond_c

    .line 7
    sget v1, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 12
    return v0

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 15
    const/4 v1, 0x0

    .line 16
    aget-object v0, v0, v1

    .line 18
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_1c
    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public allocUnits(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 5
    aget p1, v0, p1

    .line 7
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 9
    aget-object v0, v0, p1

    .line 11
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_15
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 24
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 26
    aget v1, v1, p1

    .line 28
    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 35
    iget v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 37
    if-gt v1, v2, :cond_27

    .line 39
    return v0

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 42
    aget v0, v0, p1

    .line 44
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 47
    move-result v0

    .line 48
    sub-int/2addr v1, v0

    .line 49
    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 51
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public decPText(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->setPText(I)V

    .line 9
    return-void
.end method

.method public expandUnits(II)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 3
    add-int/lit8 v1, p2, -0x1

    .line 5
    aget v2, v0, v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 9
    aget v0, v0, v1

    .line 11
    if-ne v2, v0, :cond_d

    .line 13
    return p1

    .line 14
    :cond_d
    add-int/lit8 v0, p2, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_21

    .line 22
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 24
    invoke-direct {p0, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 27
    move-result p2

    .line 28
    invoke-static {v1, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-direct {p0, p1, v2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 34
    :cond_21
    return v0
.end method

.method public freeUnits(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 5
    aget p2, v0, p2

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 10
    return-void
.end method

.method public getFakeUnitsStart()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 3
    return v0
.end method

.method public getHeap()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 3
    return-object v0
.end method

.method public getHeapEnd()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapEnd:I

    .line 3
    return v0
.end method

.method public getPText()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 3
    return v0
.end method

.method public incPText()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 7
    return-void
.end method

.method public initSubAllocator()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 3
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    .line 5
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->sizeOfFreeList()I

    .line 8
    move-result v2

    .line 9
    add-int/2addr v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 14
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 16
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 18
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 20
    mul-int/lit8 v2, v1, 0xc

    .line 22
    const/16 v4, 0x8

    .line 24
    div-int/2addr v2, v4

    .line 25
    const/16 v5, 0xc

    .line 27
    div-int/2addr v2, v5

    .line 28
    mul-int/lit8 v2, v2, 0x7

    .line 30
    div-int/lit8 v6, v2, 0xc

    .line 32
    sget v7, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    .line 34
    mul-int/2addr v6, v7

    .line 35
    sub-int/2addr v1, v2

    .line 36
    div-int/lit8 v2, v1, 0xc

    .line 38
    mul-int/2addr v2, v7

    .line 39
    rem-int/lit8 v7, v1, 0xc

    .line 41
    add-int/2addr v7, v2

    .line 42
    add-int/2addr v7, v0

    .line 43
    iput v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 45
    iput v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 47
    add-int/2addr v0, v1

    .line 48
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 50
    add-int/2addr v7, v6

    .line 51
    iput v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 53
    const/4 v0, 0x1

    .line 54
    move v2, v0

    .line 55
    move v1, v3

    .line 56
    :goto_37
    const/4 v6, 0x4

    .line 57
    if-ge v1, v6, :cond_45

    .line 59
    iget-object v6, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 61
    and-int/lit16 v7, v2, 0xff

    .line 63
    aput v7, v6, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_37

    .line 70
    :cond_45
    add-int/2addr v2, v0

    .line 71
    :goto_46
    if-ge v1, v4, :cond_53

    .line 73
    iget-object v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 75
    and-int/lit16 v8, v2, 0xff

    .line 77
    aput v8, v7, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 81
    add-int/lit8 v2, v2, 0x2

    .line 83
    goto :goto_46

    .line 84
    :cond_53
    add-int/2addr v2, v0

    .line 85
    :goto_54
    if-ge v1, v5, :cond_61

    .line 87
    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 89
    and-int/lit16 v7, v2, 0xff

    .line 91
    aput v7, v4, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 95
    add-int/lit8 v2, v2, 0x3

    .line 97
    goto :goto_54

    .line 98
    :cond_61
    add-int/2addr v2, v0

    .line 99
    :goto_62
    const/16 v4, 0x26

    .line 101
    if-ge v1, v4, :cond_70

    .line 103
    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 105
    and-int/lit16 v5, v2, 0xff

    .line 107
    aput v5, v4, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 111
    add-int/2addr v2, v6

    .line 112
    goto :goto_62

    .line 113
    :cond_70
    iput v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 115
    move v1, v3

    .line 116
    move v2, v1

    .line 117
    :goto_74
    const/16 v4, 0x80

    .line 119
    if-ge v1, v4, :cond_8c

    .line 121
    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 123
    aget v4, v4, v2

    .line 125
    add-int/lit8 v5, v1, 0x1

    .line 127
    if-ge v4, v5, :cond_82

    .line 129
    move v4, v0

    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move v4, v3

    .line 132
    :goto_83
    add-int/2addr v2, v4

    .line 133
    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 135
    and-int/lit16 v6, v2, 0xff

    .line 137
    aput v6, v4, v1

    .line 139
    move v1, v5

    .line 140
    goto :goto_74

    .line 141
    :cond_8c
    return-void
.end method

.method public shrinkUnits(III)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 5
    aget p2, v0, p2

    .line 7
    add-int/lit8 v1, p3, -0x1

    .line 9
    aget v0, v0, v1

    .line 11
    if-ne p2, v0, :cond_d

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 16
    aget-object v1, v1, v0

    .line 18
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_28

    .line 24
    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 30
    invoke-direct {p0, p3}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    .line 33
    move-result p3

    .line 34
    invoke-static {v1, p1, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 40
    return v0

    .line 41
    :cond_28
    invoke-direct {p0, p1, p2, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    .line 44
    return p1
.end method

.method public startSubAllocator(I)Z
    .registers 7

    .line 1
    shl-int/lit8 p1, p1, 0x14

    .line 3
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, p1, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 12
    div-int/lit8 v0, p1, 0xc

    .line 14
    sget v2, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    .line 16
    mul-int/2addr v0, v2

    .line 17
    add-int/2addr v0, v2

    .line 18
    add-int/lit8 v3, v0, 0x1

    .line 20
    add-int/lit16 v3, v3, 0x98

    .line 22
    iput v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    .line 24
    add-int/lit8 v3, v3, 0xc

    .line 26
    new-array v3, v3, [B

    .line 28
    iput-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 30
    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 32
    add-int v3, v1, v0

    .line 34
    sub-int/2addr v3, v2

    .line 35
    iput v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapEnd:I

    .line 37
    iput p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 39
    add-int/2addr v0, v1

    .line 40
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    .line 42
    const/4 p1, 0x0

    .line 43
    :goto_2a
    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 45
    array-length v3, v2

    .line 46
    if-ge p1, v3, :cond_44

    .line 48
    new-instance v3, Lcom/junrar/unpack/ppm/RarNode;

    .line 50
    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 52
    invoke-direct {v3, v4}, Lcom/junrar/unpack/ppm/RarNode;-><init>([B)V

    .line 55
    aput-object v3, v2, p1

    .line 57
    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    .line 59
    aget-object v2, v2, p1

    .line 61
    invoke-virtual {v2, v0}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 66
    add-int/lit8 v0, v0, 0x4

    .line 68
    goto :goto_2a

    .line 69
    :cond_44
    new-instance p1, Lcom/junrar/unpack/ppm/RarNode;

    .line 71
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 73
    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarNode;-><init>([B)V

    .line 76
    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    .line 78
    new-instance p1, Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 80
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 82
    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 85
    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 87
    new-instance p1, Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 89
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 91
    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 94
    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 96
    new-instance p1, Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 98
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 100
    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 103
    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 105
    return v1
.end method

.method public stopSubAllocator()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 14
    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    .line 16
    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 18
    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 20
    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/junrar/unpack/ppm/RarMemBlock;

    .line 22
    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "SubAllocator["

    .line 3
    const-string v1, "\n  subAllocatorSize="

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "\n  glueCount="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\n  heapStart="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "\n  loUnit="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "\n  hiUnit="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "\n  pText="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "\n  unitsStart="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 71
    const-string v2, "\n]"

    .line 73
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method
