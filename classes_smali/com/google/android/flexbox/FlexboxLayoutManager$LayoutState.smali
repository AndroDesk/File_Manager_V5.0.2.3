.class Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "FlexboxLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutState"
.end annotation


# static fields
.field private static final ITEM_DIRECTION_TAIL:I = 0x1

.field private static final LAYOUT_END:I = 0x1

.field private static final LAYOUT_START:I = -0x1

.field private static final SCROLLING_OFFSET_NaN:I = -0x80000000


# instance fields
.field private mAvailable:I

.field private mFlexLinePosition:I

.field private mInfinite:Z

.field private mItemDirection:I

.field private mLastScrollDelta:I

.field private mLayoutDirection:I

.field private mOffset:I

.field private mPosition:I

.field private mScrollingOffset:I

.field private mShouldRecycle:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    .line 3
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 3
    return p0
.end method

.method public static synthetic access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 3
    return p1
.end method

.method public static synthetic access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    .line 3
    return p0
.end method

.method public static synthetic access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    .line 3
    return p1
.end method

.method public static synthetic access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 3
    return p1
.end method

.method public static synthetic access$1508(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 7
    return v0
.end method

.method public static synthetic access$1510(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 5
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 7
    return v0
.end method

.method public static synthetic access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 3
    return p0
.end method

.method public static synthetic access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 3
    return p1
.end method

.method public static synthetic access$2100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$y;Ljava/util/List;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$y;Ljava/util/List;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 3
    return p1
.end method

.method public static synthetic access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    .line 3
    return p0
.end method

.method public static synthetic access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    .line 3
    return p1
.end method

.method public static synthetic access$2500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    .line 3
    return p0
.end method

.method public static synthetic access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    .line 3
    return p1
.end method

.method public static synthetic access$2702(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    .line 3
    return p0
.end method

.method public static synthetic access$502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    .line 3
    return p1
.end method

.method private hasMore(Landroidx/recyclerview/widget/RecyclerView$y;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$y;",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 3
    if-ltz v0, :cond_16

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 8
    move-result p1

    .line 9
    if-ge v0, p1, :cond_16

    .line 11
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 13
    if-ltz p1, :cond_16

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    move-result p2

    .line 19
    if-ge p1, p2, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "LayoutState{mAvailable="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mFlexLinePosition="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mPosition="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", mOffset="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", mScrollingOffset="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", mLastScrollDelta="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", mItemDirection="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", mLayoutDirection="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    .line 79
    const/16 v2, 0x7d

    .line 81
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
