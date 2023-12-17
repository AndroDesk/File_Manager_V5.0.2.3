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

    sget v0, Lcom/junrar/unpack/ppm/PPMContext;->size:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x26

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    new-array v0, v0, [Lcom/junrar/unpack/ppm/RarNode;

    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->clean()V

    return-void
.end method

.method private MBPtr(II)I
    .registers 3

    invoke-direct {p0, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private U2B(I)I
    .registers 3

    sget v0, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v0, p1

    return v0
.end method

.method private allocUnitsRare(I)I
    .registers 5

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    if-nez v0, :cond_1a

    const/16 v0, 0xff

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->glueFreeBlocks()V

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result p1

    return p1

    :cond_1a
    move v0, p1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x26

    if-ne v0, v1, :cond_48

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget p1, v1, p1

    mul-int/lit8 p1, p1, 0xc

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    iget v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_46

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    iget p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    return p1

    :cond_46
    const/4 p1, 0x0

    return p1

    :cond_48
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v1

    invoke-direct {p0, v1, v0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    return v1
.end method

.method private clean()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    return-void
.end method

.method private glueFreeBlocks()V
    .registers 7

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/junrar/unpack/ppm/RarMemBlock;

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/junrar/unpack/ppm/RarMemBlock;

    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/junrar/unpack/ppm/RarMemBlock;

    iget v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    const/4 v5, 0x0

    if-eq v3, v4, :cond_16

    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    aput-byte v5, v4, v3

    :cond_16
    invoke-virtual {v0, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setPrev(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    invoke-virtual {v0, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNext(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    :goto_1c
    const/16 v3, 0x26

    const v4, 0xffff

    if-ge v5, v3, :cond_45

    :goto_23
    iget-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    if-eqz v3, :cond_42

    invoke-direct {p0, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->insertAt(Lcom/junrar/unpack/ppm/RarMemBlock;)V

    invoke-virtual {v1, v4}, Lcom/junrar/unpack/ppm/RarMemBlock;->setStamp(I)V

    iget-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNU(I)V

    goto :goto_23

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_45
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    :goto_4c
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v3

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v5

    if-eq v3, v5, :cond_9f

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v3

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    :goto_65
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->getStamp()I

    move-result v3

    if-ne v3, v4, :cond_97

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v3

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v5

    add-int/2addr v3, v5

    const/high16 v5, 0x10000

    if-ge v3, v5, :cond_97

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->remove()V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v3

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/RarMemBlock;->setNU(I)V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v3

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    goto :goto_65

    :cond_97
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    goto :goto_4c

    :cond_9f
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    :goto_a6
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v2

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v3

    if-eq v2, v3, :cond_101

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->remove()V

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v2

    :goto_b7
    const/16 v3, 0x80

    if-le v2, v3, :cond_d2

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v4

    const/16 v5, 0x25

    invoke-direct {p0, v4, v5}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    add-int/lit8 v2, v2, -0x80

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    goto :goto_b7

    :cond_d2
    iget-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    aget v5, v3, v4

    if-eq v5, v2, :cond_f2

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    sub-int v3, v2, v3

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v5

    sub-int/2addr v2, v3

    invoke-direct {p0, v5, v2}, Lcom/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    :cond_f2
    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    goto :goto_a6

    :cond_101
    return-void
.end method

.method private insertNode(II)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    iget-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/ppm/RarNode;->setNext(I)V

    iget-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Lcom/junrar/unpack/ppm/RarNode;->setNext(Lcom/junrar/unpack/ppm/RarNode;)V

    return-void
.end method

.method private removeNode(I)I
    .registers 5

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    invoke-virtual {v1, v0}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object p1, v2, p1

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/junrar/unpack/ppm/RarNode;->setNext(I)V

    return v0
.end method

.method private setPText(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    return-void
.end method

.method private sizeOfFreeList()I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private splitBlock(III)V
    .registers 6

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget p2, v0, p2

    aget p3, v0, p3

    sub-int/2addr p2, p3

    invoke-direct {p0, p3}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    aget p3, p3, v0

    if-eq p3, p2, :cond_27

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    iget-object p3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget p3, p3, v0

    invoke-direct {p0, p3}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p2, p3

    :cond_27
    iget-object p3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 p2, p2, -0x1

    aget p2, p3, p2

    invoke-direct {p0, p1, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    return-void
.end method


# virtual methods
.method public GetAllocatedMemory()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    return v0
.end method

.method public allocContext()I
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    if-eq v0, v1, :cond_c

    sget v1, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    return v0

    :cond_c
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v0

    return v0

    :cond_1c
    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result v0

    return v0
.end method

.method public allocUnits(I)I
    .registers 5

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result p1

    return p1

    :cond_15
    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    if-gt v1, v2, :cond_27

    return v0

    :cond_27
    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result p1

    return p1
.end method

.method public decPText(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->setPText(I)V

    return-void
.end method

.method public expandUnits(II)I
    .registers 6

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p2, -0x1

    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    if-ne v2, v0, :cond_d

    return p1

    :cond_d
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result p2

    invoke-static {v1, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    :cond_21
    return v0
.end method

.method public freeUnits(II)V
    .registers 4

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 p2, p2, -0x1

    aget p2, v0, p2

    invoke-direct {p0, p1, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    return-void
.end method

.method public getFakeUnitsStart()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    return v0
.end method

.method public getHeap()[B
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    return-object v0
.end method

.method public getHeapEnd()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapEnd:I

    return v0
.end method

.method public getPText()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    return v0
.end method

.method public incPText()V
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    return-void
.end method

.method public initSubAllocator()V
    .registers 10

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->sizeOfFreeList()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    mul-int/lit8 v2, v1, 0xc

    const/16 v4, 0x8

    div-int/2addr v2, v4

    const/16 v5, 0xc

    div-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v6, v2, 0xc

    sget v7, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v6, v7

    sub-int/2addr v1, v2

    div-int/lit8 v2, v1, 0xc

    mul-int/2addr v2, v7

    rem-int/lit8 v7, v1, 0xc

    add-int/2addr v7, v2

    add-int/2addr v7, v0

    iput v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    iput v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    const/4 v0, 0x1

    move v2, v0

    move v1, v3

    :goto_37
    const/4 v6, 0x4

    if-ge v1, v6, :cond_45

    iget-object v6, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v7, v2, 0xff

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_45
    add-int/2addr v2, v0

    :goto_46
    if-ge v1, v4, :cond_53

    iget-object v7, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v2, 0xff

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_46

    :cond_53
    add-int/2addr v2, v0

    :goto_54
    if-ge v1, v5, :cond_61

    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v7, v2, 0xff

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x3

    goto :goto_54

    :cond_61
    add-int/2addr v2, v0

    :goto_62
    const/16 v4, 0x26

    if-ge v1, v4, :cond_70

    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v5, v2, 0xff

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v6

    goto :goto_62

    :cond_70
    iput v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    move v1, v3

    move v2, v1

    :goto_74
    const/16 v4, 0x80

    if-ge v1, v4, :cond_8c

    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v4, v4, v2

    add-int/lit8 v5, v1, 0x1

    if-ge v4, v5, :cond_82

    move v4, v0

    goto :goto_83

    :cond_82
    move v4, v3

    :goto_83
    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    and-int/lit16 v6, v2, 0xff

    aput v6, v4, v1

    move v1, v5

    goto :goto_74

    :cond_8c
    return-void
.end method

.method public shrinkUnits(III)I
    .registers 6

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 p2, p2, -0x1

    aget p2, v0, p2

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    if-ne p2, v0, :cond_d

    return p1

    :cond_d
    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v0

    iget-object v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p3}, Lcom/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result p3

    invoke-static {v1, p1, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, p2}, Lcom/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    return v0

    :cond_28
    invoke-direct {p0, p1, p2, v0}, Lcom/junrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    return p1
.end method

.method public startSubAllocator(I)Z
    .registers 7

    shl-int/lit8 p1, p1, 0x14

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    div-int/lit8 v0, p1, 0xc

    sget v2, Lcom/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v2

    add-int/lit8 v3, v0, 0x1

    add-int/lit16 v3, v3, 0x98

    iput v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    add-int/lit8 v3, v3, 0xc

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int v3, v1, v0

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapEnd:I

    iput p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    const/4 p1, 0x0

    :goto_2a
    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    array-length v3, v2

    if-ge p1, v3, :cond_44

    new-instance v3, Lcom/junrar/unpack/ppm/RarNode;

    iget-object v4, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v3, v4}, Lcom/junrar/unpack/ppm/RarNode;-><init>([B)V

    aput-object v3, v2, p1

    iget-object v2, p0, Lcom/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/junrar/unpack/ppm/RarNode;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/junrar/unpack/ppm/Pointer;->setAddress(I)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_2a

    :cond_44
    new-instance p1, Lcom/junrar/unpack/ppm/RarNode;

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarNode;-><init>([B)V

    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    new-instance p1, Lcom/junrar/unpack/ppm/RarMemBlock;

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/junrar/unpack/ppm/RarMemBlock;

    new-instance p1, Lcom/junrar/unpack/ppm/RarMemBlock;

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/junrar/unpack/ppm/RarMemBlock;

    new-instance p1, Lcom/junrar/unpack/ppm/RarMemBlock;

    iget-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p1, v0}, Lcom/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object p1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/junrar/unpack/ppm/RarMemBlock;

    return v1
.end method

.method public stopSubAllocator()V
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heap:[B

    const/4 v1, 0x1

    iput v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/junrar/unpack/ppm/RarNode;

    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/junrar/unpack/ppm/RarMemBlock;

    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/junrar/unpack/ppm/RarMemBlock;

    iput-object v0, p0, Lcom/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/junrar/unpack/ppm/RarMemBlock;

    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "SubAllocator["

    const-string v1, "\n  subAllocatorSize="

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  glueCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->glueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  heapStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->heapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  loUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->loUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  hiUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  pText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->pText:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  unitsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    const-string v2, "\n]"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
