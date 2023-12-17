.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$b;,
        Landroidx/recyclerview/widget/GridLayoutManager$a;,
        Landroidx/recyclerview/widget/GridLayoutManager$c;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field public mCachedBorders:[I

.field public final mDecorInsets:Landroid/graphics/Rect;

.field public mPendingSpanCountChange:Z

.field public final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field public final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field public mSet:[Landroid/view/View;

.field public mSpanCount:I

.field public mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

.field private mUsingSpansToEstimateScrollBarDimensions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 13
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 14
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 15
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 5

    .line 18
    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 21
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 22
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 23
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 8
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 9
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;IZ)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eqz p4, :cond_9

    .line 5
    const/4 v1, 0x1

    .line 6
    move p4, v1

    .line 7
    move v1, p3

    .line 8
    move p3, v0

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    add-int/lit8 p3, p3, -0x1

    .line 12
    move p4, v1

    .line 13
    :goto_c
    if-eq p3, v1, :cond_27

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 17
    aget-object v2, v2, p3

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 25
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 28
    move-result v2

    .line 29
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 32
    move-result v2

    .line 33
    iput v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 35
    iput v0, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 37
    add-int/2addr v0, v2

    .line 38
    add-int/2addr p3, p4

    .line 39
    goto :goto_c

    .line 40
    :cond_27
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_26

    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 18
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 21
    move-result v3

    .line 22
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 24
    iget v5, v2, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 26
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 31
    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 33
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_5

    .line 39
    :cond_26
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method public static calculateItemBorders([III)[I
    .registers 8

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    .line 2
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_e

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_12

    :cond_e
    add-int/lit8 p0, p1, 0x1

    .line 3
    new-array p0, p0, [I

    :cond_12
    const/4 v1, 0x0

    .line 4
    aput v1, p0, v1

    .line 5
    div-int v2, p2, p1

    .line 6
    rem-int/2addr p2, p1

    move v3, v1

    :goto_19
    if-gt v0, p1, :cond_2d

    add-int/2addr v1, p2

    if-lez v1, :cond_26

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_26

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_27

    :cond_26
    move v4, v2

    :goto_27
    add-int/2addr v3, v4

    .line 7
    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2d
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    return-void
.end method

.method private computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_ad

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_f

    .line 14
    goto/16 :goto_ad

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isSmoothScrollbarEnabled()Z

    .line 22
    move-result v0

    .line 23
    xor-int/lit8 v2, v0, 0x1

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    xor-int/lit8 v4, v0, 0x1

    .line 32
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 35
    move-result-object v4

    .line 36
    if-eqz v2, :cond_ad

    .line 38
    if-nez v4, :cond_29

    .line 40
    goto/16 :goto_ad

    .line 42
    :cond_29
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 44
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 47
    move-result v6

    .line 48
    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 50
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 53
    move-result v5

    .line 54
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 56
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 59
    move-result v7

    .line 60
    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 62
    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 65
    move-result v6

    .line 66
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v7

    .line 70
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 73
    move-result v5

    .line 74
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 79
    move-result p1

    .line 80
    sub-int/2addr p1, v3

    .line 81
    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 83
    invoke-virtual {v6, p1, v8}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 86
    move-result p1

    .line 87
    add-int/2addr p1, v3

    .line 88
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 90
    if-eqz v6, :cond_62

    .line 92
    sub-int/2addr p1, v5

    .line 93
    sub-int/2addr p1, v3

    .line 94
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result p1

    .line 98
    goto :goto_66

    .line 99
    :cond_62
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 102
    move-result p1

    .line 103
    :goto_66
    if-nez v0, :cond_69

    .line 105
    return p1

    .line 106
    :cond_69
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 108
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 111
    move-result v0

    .line 112
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 114
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 117
    move-result v1

    .line 118
    sub-int/2addr v0, v1

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 122
    move-result v0

    .line 123
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 125
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 128
    move-result v5

    .line 129
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 131
    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 134
    move-result v1

    .line 135
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 137
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 140
    move-result v4

    .line 141
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 143
    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 146
    move-result v4

    .line 147
    sub-int/2addr v4, v1

    .line 148
    add-int/2addr v4, v3

    .line 149
    int-to-float v0, v0

    .line 150
    int-to-float v1, v4

    .line 151
    div-float/2addr v0, v1

    .line 152
    int-to-float p1, p1

    .line 153
    mul-float/2addr p1, v0

    .line 154
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 156
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 159
    move-result v0

    .line 160
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 162
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 165
    move-result v1

    .line 166
    sub-int/2addr v0, v1

    .line 167
    int-to-float v0, v0

    .line 168
    add-float/2addr p1, v0

    .line 169
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 172
    move-result p1

    .line 173
    return p1

    .line 174
    :cond_ad
    :goto_ad
    return v1
.end method

.method private computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7a

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    goto :goto_7a

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isSmoothScrollbarEnabled()Z

    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    xor-int/2addr v0, v2

    .line 24
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isSmoothScrollbarEnabled()Z

    .line 31
    move-result v3

    .line 32
    xor-int/2addr v3, v2

    .line 33
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 36
    move-result-object v3

    .line 37
    if-eqz v0, :cond_7a

    .line 39
    if-nez v3, :cond_29

    .line 41
    goto :goto_7a

    .line 42
    :cond_29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isSmoothScrollbarEnabled()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3e

    .line 48
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 53
    move-result p1

    .line 54
    sub-int/2addr p1, v2

    .line 55
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 57
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 60
    move-result p1

    .line 61
    add-int/2addr p1, v2

    .line 62
    return p1

    .line 63
    :cond_3e
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 65
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 68
    move-result v1

    .line 69
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 71
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 74
    move-result v4

    .line 75
    sub-int/2addr v1, v4

    .line 76
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 78
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 81
    move-result v0

    .line 82
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 84
    invoke-virtual {v4, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 87
    move-result v0

    .line 88
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 90
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 93
    move-result v3

    .line 94
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 96
    invoke-virtual {v4, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 99
    move-result v3

    .line 100
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 105
    move-result p1

    .line 106
    sub-int/2addr p1, v2

    .line 107
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 109
    invoke-virtual {v4, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 112
    move-result p1

    .line 113
    add-int/2addr p1, v2

    .line 114
    sub-int/2addr v3, v0

    .line 115
    add-int/2addr v3, v2

    .line 116
    int-to-float v0, v1

    .line 117
    int-to-float v1, v3

    .line 118
    div-float/2addr v0, v1

    .line 119
    int-to-float p1, p1

    .line 120
    mul-float/2addr v0, p1

    .line 121
    float-to-int p1, v0

    .line 122
    return p1

    .line 123
    :cond_7a
    :goto_7a
    return v1
.end method

.method private ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p4, v0, :cond_5

    .line 4
    move p4, v0

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 p4, 0x0

    .line 7
    :goto_6
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 9
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 12
    move-result v1

    .line 13
    if-eqz p4, :cond_1d

    .line 15
    :goto_e
    if-lez v1, :cond_33

    .line 17
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 19
    if-lez p4, :cond_33

    .line 21
    add-int/lit8 p4, p4, -0x1

    .line 23
    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 25
    invoke-direct {p0, p1, p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 28
    move-result v1

    .line 29
    goto :goto_e

    .line 30
    :cond_1d
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 33
    move-result p4

    .line 34
    sub-int/2addr p4, v0

    .line 35
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 37
    :goto_24
    if-ge v0, p4, :cond_31

    .line 39
    add-int/lit8 v2, v0, 0x1

    .line 41
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 44
    move-result v3

    .line 45
    if-le v3, v1, :cond_31

    .line 47
    move v0, v2

    .line 48
    move v1, v3

    .line 49
    goto :goto_24

    .line 50
    :cond_31
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 52
    :cond_33
    return-void
.end method

.method private ensureViewSet()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    array-length v0, v0

    .line 6
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 8
    if-eq v0, v1, :cond_f

    .line 10
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 12
    new-array v0, v0, [Landroid/view/View;

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 16
    :cond_f
    return-void
.end method

.method private getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I
    .registers 4

    .line 1
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 3
    if-nez p2, :cond_d

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 7
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 9
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->c(I)I

    .line 17
    move-result p1

    .line 18
    const/4 p2, -0x1

    .line 19
    if-ne p1, p2, :cond_2c

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string p2, "Cannot find span size for pre layout position. "

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string p2, "GridLayoutManager"

    .line 40
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_2c
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 47
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 49
    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanGroupIndex(II)I

    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I
    .registers 5

    .line 1
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 3
    if-nez p2, :cond_d

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 7
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 9
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanIndex(II)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 16
    const/4 v0, -0x1

    .line 17
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 20
    move-result p2

    .line 21
    if-eq p2, v0, :cond_17

    .line 23
    return p2

    .line 24
    :cond_17
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->c(I)I

    .line 27
    move-result p1

    .line 28
    if-ne p1, v0, :cond_35

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    const-string p2, "GridLayoutManager"

    .line 49
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    :cond_35
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 56
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 58
    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getCachedSpanIndex(II)I

    .line 61
    move-result p1

    .line 62
    return p1
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I
    .registers 5

    .line 1
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 3
    if-nez p2, :cond_b

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 7
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 14
    const/4 v0, -0x1

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    move-result p2

    .line 19
    if-eq p2, v0, :cond_15

    .line 21
    return p2

    .line 22
    :cond_15
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->c(I)I

    .line 25
    move-result p1

    .line 26
    if-ne p1, v0, :cond_33

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "GridLayoutManager"

    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_33
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 54
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method private guessMeasurement(FI)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 3
    int-to-float v0, v0

    .line 4
    mul-float/2addr p1, v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 8
    move-result p1

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 16
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 13
    add-int/2addr v2, v3

    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 22
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 24
    add-int/2addr v3, v1

    .line 25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 27
    add-int/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    add-int/2addr v3, v1

    .line 31
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 33
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 35
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    .line 38
    move-result v1

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v4, v6, :cond_43

    .line 45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 47
    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 50
    move-result p2

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 53
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->l()I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 60
    move-result v3

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 63
    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 66
    move-result v0

    .line 67
    goto :goto_5c

    .line 68
    :cond_43
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 70
    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 73
    move-result p2

    .line 74
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 76
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->l()I

    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 83
    move-result v2

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 86
    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 89
    move-result v0

    .line 90
    move v7, v0

    .line 91
    move v0, p2

    .line 92
    move p2, v7

    .line 93
    :goto_5c
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 96
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    if-eqz p4, :cond_d

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 12
    move-result p4

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 17
    move-result p4

    .line 18
    :goto_11
    if-eqz p4, :cond_16

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 23
    :cond_16
    return-void
.end method

.method private updateMeasurements()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_15

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 20
    move-result v1

    .line 21
    goto :goto_22

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 29
    move-result v1

    .line 30
    sub-int/2addr v0, v1

    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 34
    move-result v1

    .line 35
    :goto_22
    sub-int/2addr v0, v1

    .line 36
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$o;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 3
    return p1
.end method

.method public collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V
    .registers 10

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 7
    if-ge v2, v3, :cond_38

    .line 9
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 11
    if-ltz v3, :cond_14

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_14

    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v3, v1

    .line 22
    :goto_15
    if-eqz v3, :cond_38

    .line 24
    if-lez v0, :cond_38

    .line 26
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 28
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 30
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v4

    .line 34
    move-object v5, p3

    .line 35
    check-cast v5, Landroidx/recyclerview/widget/e$b;

    .line 37
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/e$b;->a(II)V

    .line 40
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 42
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 45
    move-result v3

    .line 46
    sub-int/2addr v0, v3

    .line 47
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 49
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 51
    add-int/2addr v3, v4

    .line 52
    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_4

    .line 57
    :cond_38
    return-void
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ZZ)Landroid/view/View;
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result p3

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p4, :cond_f

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    move-result p3

    .line 13
    sub-int/2addr p3, v1

    .line 14
    move v1, v0

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    const/4 p4, 0x0

    .line 17
    move v0, p3

    .line 18
    move p3, p4

    .line 19
    :goto_12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 22
    move-result p4

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 26
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 28
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->k()I

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 34
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->g()I

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v5, v4

    .line 40
    :goto_27
    if-eq p3, v0, :cond_63

    .line 42
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 49
    move-result v7

    .line 50
    if-ltz v7, :cond_61

    .line 52
    if-ge v7, p4, :cond_61

    .line 54
    invoke-direct {p0, p1, p2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_3c

    .line 60
    goto :goto_61

    .line 61
    :cond_3c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 67
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_4c

    .line 73
    if-nez v5, :cond_61

    .line 75
    move-object v5, v6

    .line 76
    goto :goto_61

    .line 77
    :cond_4c
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 79
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 82
    move-result v7

    .line 83
    if-ge v7, v3, :cond_5e

    .line 85
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 87
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 90
    move-result v7

    .line 91
    if-ge v7, v2, :cond_5d

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    return-object v6

    .line 95
    :cond_5e
    :goto_5e
    if-nez v4, :cond_61

    .line 97
    move-object v4, v6

    .line 98
    :cond_61
    :goto_61
    add-int/2addr p3, v1

    .line 99
    goto :goto_27

    .line 100
    :cond_63
    if-eqz v4, :cond_66

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move-object v4, v5

    .line 104
    :goto_67
    return-object v4
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    if-nez v0, :cond_c

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 15
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    .line 18
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 3

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 4
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_8

    .line 6
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 12
    move-result v0

    .line 13
    if-ge v0, v1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ge v0, v1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1
.end method

.method public getSpaceForSpanRange(II)I
    .registers 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_19

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_19

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 14
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 16
    sub-int v2, v1, p1

    .line 18
    aget v2, v0, v2

    .line 20
    sub-int/2addr v1, p1

    .line 21
    sub-int/2addr v1, p2

    .line 22
    aget p1, v0, v1

    .line 24
    sub-int/2addr v2, p1

    .line 25
    return v2

    .line 26
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 28
    add-int/2addr p2, p1

    .line 29
    aget p2, v0, p2

    .line 31
    aget p1, v0, p1

    .line 33
    sub-int/2addr p2, p1

    .line 34
    return p2
.end method

.method public getSpanCount()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 3
    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 3
    return-object v0
.end method

.method public isUsingSpansToEstimateScrollbarDimensions()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 3
    return v0
.end method

.method public layoutChunk(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .registers 23

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v1, p2

    .line 7
    move-object/from16 v2, p3

    .line 9
    move-object/from16 v7, p4

    .line 11
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 13
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->j()I

    .line 16
    move-result v3

    .line 17
    const/high16 v4, 0x40000000  # 2.0f

    .line 19
    const/4 v8, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eq v3, v4, :cond_18

    .line 23
    move v4, v8

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v4, v5

    .line 26
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 29
    move-result v9

    .line 30
    if-lez v9, :cond_26

    .line 32
    iget-object v9, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 34
    iget v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 36
    aget v9, v9, v10

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v9, v5

    .line 40
    :goto_27
    if-eqz v4, :cond_2c

    .line 42
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 45
    :cond_2c
    iget v10, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 47
    if-ne v10, v8, :cond_32

    .line 49
    move v10, v8

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v10, v5

    .line 52
    :goto_33
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 54
    if-nez v10, :cond_44

    .line 56
    iget v11, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 58
    invoke-direct {v6, v0, v1, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 61
    move-result v11

    .line 62
    iget v12, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 64
    invoke-direct {v6, v0, v1, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 67
    move-result v12

    .line 68
    add-int/2addr v11, v12

    .line 69
    :cond_44
    move v12, v5

    .line 70
    :goto_45
    iget v13, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 72
    if-ge v12, v13, :cond_8e

    .line 74
    iget v13, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 76
    if-ltz v13, :cond_55

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 81
    move-result v14

    .line 82
    if-ge v13, v14, :cond_55

    .line 84
    move v13, v8

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move v13, v5

    .line 87
    :goto_56
    if-eqz v13, :cond_8e

    .line 89
    if-lez v11, :cond_8e

    .line 91
    iget v13, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 93
    invoke-direct {v6, v0, v1, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 96
    move-result v14

    .line 97
    iget v15, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 99
    if-gt v14, v15, :cond_76

    .line 101
    sub-int/2addr v11, v14

    .line 102
    if-gez v11, :cond_68

    .line 104
    goto :goto_8e

    .line 105
    :cond_68
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    .line 108
    move-result-object v13

    .line 109
    if-nez v13, :cond_6f

    .line 111
    goto :goto_8e

    .line 112
    :cond_6f
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 114
    aput-object v13, v14, v12

    .line 116
    add-int/lit8 v12, v12, 0x1

    .line 118
    goto :goto_45

    .line 119
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    const-string v1, "Item at position "

    .line 123
    const-string v2, " requires "

    .line 125
    const-string v3, " spans but GridLayoutManager has only "

    .line 127
    invoke-static {v1, v13, v2, v14, v3}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    move-result-object v1

    .line 131
    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 133
    const-string v3, " spans."

    .line 135
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0

    .line 143
    :cond_8e
    :goto_8e
    if-nez v12, :cond_93

    .line 145
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    .line 147
    return-void

    .line 148
    :cond_93
    const/4 v11, 0x0

    .line 149
    invoke-direct {v6, v0, v1, v12, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;IZ)V

    .line 152
    move v0, v5

    .line 153
    move v1, v0

    .line 154
    :goto_99
    if-ge v5, v12, :cond_e4

    .line 156
    iget-object v13, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 158
    aget-object v13, v13, v5

    .line 160
    iget-object v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 162
    if-nez v14, :cond_ad

    .line 164
    if-eqz v10, :cond_a9

    .line 166
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 169
    goto :goto_b6

    .line 170
    :cond_a9
    invoke-virtual {v6, v13, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 173
    goto :goto_b6

    .line 174
    :cond_ad
    if-eqz v10, :cond_b3

    .line 176
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    .line 179
    goto :goto_b6

    .line 180
    :cond_b3
    invoke-virtual {v6, v13, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 183
    :goto_b6
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 185
    invoke-virtual {v6, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 188
    invoke-direct {v6, v13, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 191
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 193
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 196
    move-result v0

    .line 197
    if-le v0, v1, :cond_c7

    .line 199
    move v1, v0

    .line 200
    :cond_c7
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 206
    const/high16 v14, 0x3f800000  # 1.0f

    .line 208
    iget-object v15, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 210
    invoke-virtual {v15, v13}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;)I

    .line 213
    move-result v13

    .line 214
    int-to-float v13, v13

    .line 215
    mul-float/2addr v13, v14

    .line 216
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 218
    int-to-float v0, v0

    .line 219
    div-float/2addr v13, v0

    .line 220
    cmpl-float v0, v13, v11

    .line 222
    if-lez v0, :cond_e0

    .line 224
    move v11, v13

    .line 225
    :cond_e0
    add-int/lit8 v5, v5, 0x1

    .line 227
    const/4 v0, 0x0

    .line 228
    goto :goto_99

    .line 229
    :cond_e4
    if-eqz v4, :cond_102

    .line 231
    invoke-direct {v6, v11, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 234
    const/4 v0, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    :goto_eb
    if-ge v0, v12, :cond_102

    .line 238
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 240
    aget-object v3, v3, v0

    .line 242
    const/high16 v4, 0x40000000  # 2.0f

    .line 244
    invoke-direct {v6, v3, v4, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 247
    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 249
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 252
    move-result v3

    .line 253
    if-le v3, v1, :cond_ff

    .line 255
    move v1, v3

    .line 256
    :cond_ff
    add-int/lit8 v0, v0, 0x1

    .line 258
    goto :goto_eb

    .line 259
    :cond_102
    const/4 v0, 0x0

    .line 260
    :goto_103
    if-ge v0, v12, :cond_161

    .line 262
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 264
    aget-object v3, v3, v0

    .line 266
    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 268
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 271
    move-result v4

    .line 272
    if-eq v4, v1, :cond_15e

    .line 274
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 277
    move-result-object v4

    .line 278
    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 280
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 282
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 284
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 286
    add-int/2addr v9, v10

    .line 287
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 289
    add-int/2addr v9, v10

    .line 290
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 292
    add-int/2addr v9, v10

    .line 293
    iget v10, v5, Landroid/graphics/Rect;->left:I

    .line 295
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 297
    add-int/2addr v10, v5

    .line 298
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 300
    add-int/2addr v10, v5

    .line 301
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 303
    add-int/2addr v10, v5

    .line 304
    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 306
    iget v11, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 308
    invoke-virtual {v6, v5, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    .line 311
    move-result v5

    .line 312
    iget v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 314
    if-ne v11, v8, :cond_14b

    .line 316
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 318
    const/high16 v11, 0x40000000  # 2.0f

    .line 320
    const/4 v13, 0x0

    .line 321
    invoke-static {v5, v11, v10, v4, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 324
    move-result v4

    .line 325
    sub-int v5, v1, v9

    .line 327
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 330
    move-result v5

    .line 331
    goto :goto_15b

    .line 332
    :cond_14b
    const/high16 v11, 0x40000000  # 2.0f

    .line 334
    const/4 v13, 0x0

    .line 335
    sub-int v10, v1, v10

    .line 337
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 340
    move-result v10

    .line 341
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 343
    invoke-static {v5, v11, v9, v4, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 346
    move-result v5

    .line 347
    move v4, v10

    .line 348
    :goto_15b
    invoke-direct {v6, v3, v4, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 351
    :cond_15e
    add-int/lit8 v0, v0, 0x1

    .line 353
    goto :goto_103

    .line 354
    :cond_161
    const/4 v0, 0x0

    .line 355
    iput v1, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 357
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 359
    const/4 v4, -0x1

    .line 360
    if-ne v3, v8, :cond_17f

    .line 362
    iget v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 364
    if-ne v3, v4, :cond_172

    .line 366
    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 368
    sub-int v1, v2, v1

    .line 370
    goto :goto_17a

    .line 371
    :cond_172
    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 373
    add-int/2addr v1, v2

    .line 374
    move/from16 v17, v2

    .line 376
    move v2, v1

    .line 377
    move/from16 v1, v17

    .line 379
    :goto_17a
    move v9, v0

    .line 380
    move v3, v1

    .line 381
    move v1, v2

    .line 382
    move v2, v9

    .line 383
    goto :goto_194

    .line 384
    :cond_17f
    iget v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 386
    if-ne v3, v4, :cond_188

    .line 388
    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 390
    sub-int v1, v2, v1

    .line 392
    goto :goto_190

    .line 393
    :cond_188
    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 395
    add-int/2addr v1, v2

    .line 396
    move/from16 v17, v2

    .line 398
    move v2, v1

    .line 399
    move/from16 v1, v17

    .line 401
    :goto_190
    move v3, v0

    .line 402
    move v9, v3

    .line 403
    move v0, v1

    .line 404
    move v1, v9

    .line 405
    :goto_194
    if-ge v9, v12, :cond_21c

    .line 407
    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 409
    aget-object v10, v4, v9

    .line 411
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 414
    move-result-object v4

    .line 415
    move-object v11, v4

    .line 416
    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 418
    iget v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 420
    if-ne v4, v8, :cond_1da

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_1c2

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 431
    move-result v0

    .line 432
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 434
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 436
    iget v5, v11, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 438
    sub-int/2addr v4, v5

    .line 439
    aget v2, v2, v4

    .line 441
    add-int/2addr v0, v2

    .line 442
    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 444
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;)I

    .line 447
    move-result v2

    .line 448
    sub-int v2, v0, v2

    .line 450
    goto :goto_1d4

    .line 451
    :cond_1c2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 454
    move-result v0

    .line 455
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 457
    iget v4, v11, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 459
    aget v2, v2, v4

    .line 461
    add-int/2addr v2, v0

    .line 462
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 464
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;)I

    .line 467
    move-result v0

    .line 468
    add-int/2addr v0, v2

    .line 469
    :goto_1d4
    move v15, v0

    .line 470
    move v14, v1

    .line 471
    move v13, v2

    .line 472
    move/from16 v16, v3

    .line 474
    goto :goto_1f1

    .line 475
    :cond_1da
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 478
    move-result v1

    .line 479
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 481
    iget v4, v11, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 483
    aget v3, v3, v4

    .line 485
    add-int/2addr v1, v3

    .line 486
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 488
    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;)I

    .line 491
    move-result v3

    .line 492
    add-int/2addr v3, v1

    .line 493
    move v13, v0

    .line 494
    move/from16 v16, v1

    .line 496
    move v15, v2

    .line 497
    move v14, v3

    .line 498
    :goto_1f1
    move-object/from16 v0, p0

    .line 500
    move-object v1, v10

    .line 501
    move v2, v13

    .line 502
    move/from16 v3, v16

    .line 504
    move v4, v15

    .line 505
    move v5, v14

    .line 506
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 509
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_208

    .line 515
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_20a

    .line 521
    :cond_208
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 523
    :cond_20a
    iget-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    .line 525
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    .line 528
    move-result v1

    .line 529
    or-int/2addr v0, v1

    .line 530
    iput-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    .line 532
    add-int/lit8 v9, v9, 0x1

    .line 534
    move v0, v13

    .line 535
    move v1, v14

    .line 536
    move v2, v15

    .line 537
    move/from16 v3, v16

    .line 539
    goto/16 :goto_194

    .line 541
    :cond_21c
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 543
    const/4 v1, 0x0

    .line 544
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method public onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_13

    .line 13
    iget-boolean v0, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 15
    if-nez v0, :cond_13

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 20
    :cond_13
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 23
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;
    .registers 28

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p3

    .line 5
    move-object/from16 v2, p4

    .line 7
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_e

    .line 14
    return-object v4

    .line 15
    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 21
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 23
    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 25
    add-int/2addr v5, v6

    .line 26
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;

    .line 29
    move-result-object v7

    .line 30
    if-nez v7, :cond_20

    .line 32
    return-object v4

    .line 33
    :cond_20
    move/from16 v7, p2

    .line 35
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 38
    move-result v7

    .line 39
    const/4 v9, 0x1

    .line 40
    if-ne v7, v9, :cond_2b

    .line 42
    move v7, v9

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v7, 0x0

    .line 45
    :goto_2c
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 47
    if-eq v7, v10, :cond_32

    .line 49
    move v7, v9

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    const/4 v7, 0x0

    .line 52
    :goto_33
    const/4 v10, -0x1

    .line 53
    if-eqz v7, :cond_3e

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 58
    move-result v7

    .line 59
    sub-int/2addr v7, v9

    .line 60
    move v11, v10

    .line 61
    move v12, v11

    .line 62
    goto :goto_45

    .line 63
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 66
    move-result v7

    .line 67
    move v11, v7

    .line 68
    move v12, v9

    .line 69
    const/4 v7, 0x0

    .line 70
    :goto_45
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 72
    if-ne v13, v9, :cond_51

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 77
    move-result v13

    .line 78
    if-eqz v13, :cond_51

    .line 80
    move v13, v9

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    const/4 v13, 0x0

    .line 83
    :goto_52
    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 86
    move-result v14

    .line 87
    move v15, v10

    .line 88
    move/from16 v16, v15

    .line 90
    const/4 v8, 0x0

    .line 91
    const/16 v17, 0x0

    .line 93
    move v10, v7

    .line 94
    move-object v7, v4

    .line 95
    :goto_5e
    if-eq v10, v11, :cond_149

    .line 97
    invoke-direct {v0, v1, v2, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 100
    move-result v9

    .line 101
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 104
    move-result-object v1

    .line 105
    if-ne v1, v3, :cond_6c

    .line 107
    goto/16 :goto_149

    .line 109
    :cond_6c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 112
    move-result v18

    .line 113
    if-eqz v18, :cond_86

    .line 115
    if-eq v9, v14, :cond_86

    .line 117
    if-eqz v4, :cond_78

    .line 119
    goto/16 :goto_149

    .line 121
    :cond_78
    move-object/from16 v18, v3

    .line 123
    move-object/from16 v21, v7

    .line 125
    move/from16 v19, v8

    .line 127
    move/from16 v20, v11

    .line 129
    move/from16 v7, v16

    .line 131
    move/from16 v8, v17

    .line 133
    goto/16 :goto_135

    .line 135
    :cond_86
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 138
    move-result-object v9

    .line 139
    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 141
    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 143
    move-object/from16 v18, v3

    .line 145
    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 147
    add-int/2addr v3, v2

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 151
    move-result v19

    .line 152
    if-eqz v19, :cond_9e

    .line 154
    if-ne v2, v6, :cond_9e

    .line 156
    if-ne v3, v5, :cond_9e

    .line 158
    return-object v1

    .line 159
    :cond_9e
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 162
    move-result v19

    .line 163
    if-eqz v19, :cond_a6

    .line 165
    if-eqz v4, :cond_ae

    .line 167
    :cond_a6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 170
    move-result v19

    .line 171
    if-nez v19, :cond_ba

    .line 173
    if-nez v7, :cond_ba

    .line 175
    :cond_ae
    move-object/from16 v21, v7

    .line 177
    :goto_b0
    move/from16 v19, v8

    .line 179
    move/from16 v20, v11

    .line 181
    move/from16 v7, v16

    .line 183
    move/from16 v8, v17

    .line 185
    :goto_b8
    const/4 v11, 0x1

    .line 186
    goto :goto_105

    .line 187
    :cond_ba
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 190
    move-result v19

    .line 191
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 194
    move-result v20

    .line 195
    move-object/from16 v21, v7

    .line 197
    sub-int v7, v20, v19

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 202
    move-result v19

    .line 203
    if-eqz v19, :cond_d9

    .line 205
    if-le v7, v8, :cond_cf

    .line 207
    :goto_ce
    goto :goto_b0

    .line 208
    :cond_cf
    if-ne v7, v8, :cond_fc

    .line 210
    if-le v2, v15, :cond_d5

    .line 212
    const/4 v7, 0x1

    .line 213
    goto :goto_d6

    .line 214
    :cond_d5
    const/4 v7, 0x0

    .line 215
    :goto_d6
    if-ne v13, v7, :cond_fc

    .line 217
    goto :goto_ce

    .line 218
    :cond_d9
    if-nez v4, :cond_fc

    .line 220
    move/from16 v19, v8

    .line 222
    move/from16 v20, v11

    .line 224
    const/4 v8, 0x0

    .line 225
    const/4 v11, 0x1

    .line 226
    invoke-virtual {v0, v1, v8, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    .line 229
    move-result v22

    .line 230
    if-eqz v22, :cond_100

    .line 232
    move/from16 v8, v17

    .line 234
    if-le v7, v8, :cond_ee

    .line 236
    move/from16 v7, v16

    .line 238
    goto :goto_105

    .line 239
    :cond_ee
    if-ne v7, v8, :cond_f9

    .line 241
    move/from16 v7, v16

    .line 243
    if-le v2, v7, :cond_f5

    .line 245
    goto :goto_f6

    .line 246
    :cond_f5
    const/4 v11, 0x0

    .line 247
    :goto_f6
    if-ne v13, v11, :cond_104

    .line 249
    goto :goto_b8

    .line 250
    :cond_f9
    move/from16 v7, v16

    .line 252
    goto :goto_104

    .line 253
    :cond_fc
    move/from16 v19, v8

    .line 255
    move/from16 v20, v11

    .line 257
    :cond_100
    move/from16 v7, v16

    .line 259
    move/from16 v8, v17

    .line 261
    :cond_104
    :goto_104
    const/4 v11, 0x0

    .line 262
    :goto_105
    if-eqz v11, :cond_135

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 267
    move-result v11

    .line 268
    if-eqz v11, :cond_123

    .line 270
    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 272
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 275
    move-result v3

    .line 276
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 279
    move-result v2

    .line 280
    sub-int v2, v3, v2

    .line 282
    move v15, v4

    .line 283
    move/from16 v16, v7

    .line 285
    move/from16 v17, v8

    .line 287
    move-object/from16 v7, v21

    .line 289
    move-object v4, v1

    .line 290
    move v8, v2

    .line 291
    goto :goto_13d

    .line 292
    :cond_123
    iget v7, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 294
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 297
    move-result v3

    .line 298
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 301
    move-result v2

    .line 302
    sub-int v17, v3, v2

    .line 304
    move/from16 v16, v7

    .line 306
    move/from16 v8, v19

    .line 308
    move-object v7, v1

    .line 309
    goto :goto_13d

    .line 310
    :cond_135
    :goto_135
    move/from16 v16, v7

    .line 312
    move/from16 v17, v8

    .line 314
    move/from16 v8, v19

    .line 316
    move-object/from16 v7, v21

    .line 318
    :goto_13d
    add-int/2addr v10, v12

    .line 319
    move-object/from16 v1, p3

    .line 321
    move-object/from16 v2, p4

    .line 323
    move-object/from16 v3, v18

    .line 325
    move/from16 v11, v20

    .line 327
    const/4 v9, 0x1

    .line 328
    goto/16 :goto_5e

    .line 330
    :cond_149
    :goto_149
    move-object/from16 v21, v7

    .line 332
    if-eqz v4, :cond_14e

    .line 334
    goto :goto_150

    .line 335
    :cond_14e
    move-object/from16 v4, v21

    .line 337
    :goto_150
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;Ln0/c;)V
    .registers 12

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 7
    if-nez v1, :cond_c

    .line 9
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Ln0/c;)V

    .line 12
    return-void

    .line 13
    :cond_c
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 18
    move-result p3

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;I)I

    .line 22
    move-result p1

    .line 23
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 25
    if-nez p2, :cond_2a

    .line 27
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 29
    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    move v3, p1

    .line 35
    invoke-static/range {v1 .. v6}, Ln0/c$d;->a(IIIIZZ)Ln0/c$d;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p4, p1}, Ln0/c;->k(Ln0/c$d;)V

    .line 42
    goto :goto_39

    .line 43
    :cond_2a
    const/4 v2, 0x1

    .line 44
    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 46
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    move v1, p1

    .line 51
    invoke-static/range {v1 .. v6}, Ln0/c$d;->a(IIIIZZ)Ln0/c$d;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p4, p1}, Ln0/c;->k(Ln0/c$d;)V

    .line 58
    :goto_39
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanGroupIndexCache()V

    .line 11
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanGroupIndexCache()V

    .line 11
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanGroupIndexCache()V

    .line 11
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanGroupIndexCache()V

    .line 11
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanGroupIndexCache()V

    .line 11
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 4

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 8
    :cond_7
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 14
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 7
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v0, v3, :cond_3b

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 34
    move-result p1

    .line 35
    add-int/2addr p1, v2

    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    .line 39
    move-result v0

    .line 40
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 43
    move-result p1

    .line 44
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 46
    array-length v0, p3

    .line 47
    sub-int/2addr v0, v3

    .line 48
    aget p3, p3, v0

    .line 50
    add-int/2addr p3, v1

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    .line 54
    move-result v0

    .line 55
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 58
    move-result p2

    .line 59
    goto :goto_57

    .line 60
    :cond_3b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 63
    move-result p1

    .line 64
    add-int/2addr p1, v1

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    .line 68
    move-result v0

    .line 69
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 72
    move-result p2

    .line 73
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 75
    array-length v0, p1

    .line 76
    sub-int/2addr v0, v3

    .line 77
    aget p1, p1, v0

    .line 79
    add-int/2addr p1, v2

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    .line 83
    move-result v0

    .line 84
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 87
    move-result p1

    .line 88
    :goto_57
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method

.method public setSpanCount(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 9
    if-lt p1, v0, :cond_15

    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v1, "Span count should be at least 1. Provided "

    .line 26
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 3
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 3

    .line 1
    if-nez p1, :cond_7

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method public setUsingSpansToEstimateScrollbarDimensions(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 3
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 3
    if-nez v0, :cond_a

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
