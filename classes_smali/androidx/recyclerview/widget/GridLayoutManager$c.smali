.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$c;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field private mCacheSpanGroupIndices:Z

.field private mCacheSpanIndices:Z

.field public final mSpanGroupIndexCache:Landroid/util/SparseIntArray;

.field public final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanIndices:Z

    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanGroupIndices:Z

    .line 23
    return-void
.end method

.method public static findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-gt v1, v0, :cond_1b

    .line 10
    add-int v2, v1, v0

    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 14
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 17
    move-result v3

    .line 18
    if-ge v3, p1, :cond_17

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    move v1, v2

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    add-int/lit8 v2, v2, -0x1

    .line 26
    move v0, v2

    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    .line 30
    if-ltz v1, :cond_2a

    .line 32
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 35
    move-result p1

    .line 36
    if-ge v1, p1, :cond_2a

    .line 38
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_2a
    const/4 p0, -0x1

    .line 44
    return p0
.end method


# virtual methods
.method public getCachedSpanGroupIndex(II)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanGroupIndices:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanGroupIndex(II)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    move-result v0

    .line 17
    if-eq v0, v1, :cond_13

    .line 19
    return v0

    .line 20
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanGroupIndex(II)I

    .line 23
    move-result p2

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    return p2
.end method

.method public getCachedSpanIndex(II)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanIndices:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanIndex(II)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    move-result v0

    .line 17
    if-eq v0, v1, :cond_13

    .line 19
    return v0

    .line 20
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanIndex(II)I

    .line 23
    move-result p2

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    return p2
.end method

.method public getSpanGroupIndex(II)I
    .registers 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanGroupIndices:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_25

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 8
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    .line 11
    move-result v0

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v0, v2, :cond_25

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 17
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 20
    move-result v2

    .line 21
    add-int/lit8 v3, v0, 0x1

    .line 23
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanIndex(II)I

    .line 26
    move-result v4

    .line 27
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, v4

    .line 32
    if-ne v0, p2, :cond_28

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    move v0, v1

    .line 37
    goto :goto_28

    .line 38
    :cond_25
    move v0, v1

    .line 39
    move v2, v0

    .line 40
    move v3, v2

    .line 41
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 44
    move-result v4

    .line 45
    :goto_2c
    if-ge v3, p1, :cond_41

    .line 47
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 50
    move-result v5

    .line 51
    add-int/2addr v0, v5

    .line 52
    if-ne v0, p2, :cond_39

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 56
    move v0, v1

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    if-le v0, p2, :cond_3e

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    move v0, v5

    .line 63
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_2c

    .line 66
    :cond_41
    add-int/2addr v0, v4

    .line 67
    if-le v0, p2, :cond_46

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 71
    :cond_46
    return v2
.end method

.method public getSpanIndex(II)I
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne v0, p2, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-boolean v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanIndices:Z

    .line 11
    if-eqz v2, :cond_20

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 15
    invoke-static {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    .line 18
    move-result v2

    .line 19
    if-ltz v2, :cond_20

    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 23
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 30
    move-result v4

    .line 31
    add-int/2addr v4, v3

    .line 32
    goto :goto_30

    .line 33
    :cond_20
    move v2, v1

    .line 34
    move v4, v2

    .line 35
    :goto_22
    if-ge v2, p1, :cond_33

    .line 37
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 40
    move-result v3

    .line 41
    add-int/2addr v4, v3

    .line 42
    if-ne v4, p2, :cond_2d

    .line 44
    move v4, v1

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    if-le v4, p2, :cond_30

    .line 48
    move v4, v3

    .line 49
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_22

    .line 52
    :cond_33
    add-int/2addr v0, v4

    .line 53
    if-gt v0, p2, :cond_37

    .line 55
    return v4

    .line 56
    :cond_37
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanGroupIndexCache()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    return-void
.end method

.method public invalidateSpanIndexCache()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    return-void
.end method

.method public isSpanGroupIndexCacheEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanGroupIndices:Z

    .line 3
    return v0
.end method

.method public isSpanIndexCacheEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanIndices:Z

    .line 3
    return v0
.end method

.method public setSpanGroupIndexCacheEnabled(Z)V
    .registers 3

    .line 1
    if-nez p1, :cond_7

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanGroupIndices:Z

    .line 10
    return-void
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .registers 3

    .line 1
    if-nez p1, :cond_7

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->mCacheSpanIndices:Z

    .line 10
    return-void
.end method
