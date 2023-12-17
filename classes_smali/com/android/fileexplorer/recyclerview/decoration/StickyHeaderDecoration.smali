.class public Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "StickyHeaderDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;
    }
.end annotation


# instance fields
.field public isApplyBlur:Z

.field public isNavigationChanging:Z

.field private mBlurContainerVGroup:Landroid/view/ViewGroup;

.field private final mCachedStickyViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStickyGroup:I

.field private mIsFixedSize:Z

.field private mItemTouchListener:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

.field private mStickyView:Landroid/view/View;

.field public offsetX:I

.field public offsetY:I

.field public offsetYParent:Landroid/view/View;

.field private onGroupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    const/4 v0, -0x2

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 4
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x7f07024e

    goto :goto_22

    :cond_1f
    const v0, 0x7f07023e

    .line 5
    :goto_22
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isApplyBlur:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    const/4 v0, -0x2

    .line 11
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 12
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x7f07024e

    goto :goto_22

    :cond_1f
    const v0, 0x7f07023e

    .line 13
    :goto_22
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    .line 15
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isApplyBlur:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->onGroupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->onGroupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 3
    return-object p0
.end method

.method private getOffsetYParent(Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    .line 3
    if-nez v0, :cond_c

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/view/View;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    .line 15
    return-object p1
.end method

.method private getStickyView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 24
    if-nez v2, :cond_3a

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    .line 28
    if-nez v2, :cond_1e

    .line 30
    move-object v2, p1

    .line 31
    :cond_1e
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 37
    iget v4, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 42
    move-result v5

    .line 43
    iget v6, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    .line 45
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 47
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    move-result v7

    .line 51
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    :cond_3a
    invoke-virtual {v0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 62
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->measureView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 65
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    .line 67
    if-eqz p2, :cond_57

    .line 69
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_57

    .line 75
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    .line 77
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 79
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    iget-object p2, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_57
    iget-object p2, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;

    .line 92
    invoke-direct {v1, p0, v0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 100
    return-object p1
.end method

.method private measureView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000  # 2.0f

    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 27
    move-result v4

    .line 28
    add-int/2addr v4, v3

    .line 29
    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v3

    .line 35
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    invoke-static {v0, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    move-result p1

    .line 49
    add-int/2addr p1, v3

    .line 50
    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    move-result-object v3

    .line 56
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-static {v1, p1, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 61
    move-result p1

    .line 62
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 64
    invoke-virtual {v1, v0, p1}, Landroid/view/View;->measure(II)V

    .line 67
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 72
    move-result v0

    .line 73
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 78
    move-result p2

    .line 79
    invoke-virtual {p1, v2, v2, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 82
    return-void
.end method


# virtual methods
.method public NotifyStickyChange()V
    .registers 2

    .line 1
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    .line 7
    return-void
.end method

.method public applyBlur(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isApplyBlur:Z

    .line 3
    return-void
.end method

.method public getOffsetY()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    .line 3
    return v0
.end method

.method public getOffsetYTop(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetYParent(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetYParent(Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 14

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    iget-boolean p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    .line 6
    if-eqz p3, :cond_e

    .line 8
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    .line 10
    if-eqz p3, :cond_e

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    .line 15
    :cond_e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 24
    move-result p3

    .line 25
    const/4 v0, -0x1

    .line 26
    if-ne p3, v0, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_1e
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-ge v2, v3, :cond_33

    .line 38
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 45
    move-result v5

    .line 46
    if-ne v5, p3, :cond_30

    .line 48
    goto :goto_34

    .line 49
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_1e

    .line 52
    :cond_33
    move-object v3, v4

    .line 53
    :goto_34
    if-nez v3, :cond_37

    .line 55
    return-void

    .line 56
    :cond_37
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 62
    invoke-virtual {v2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    .line 65
    move-result-object v5

    .line 66
    iget v6, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 68
    const/4 v7, 0x1

    .line 69
    aget v8, v5, v7

    .line 71
    if-ne v8, v0, :cond_4a

    .line 73
    move v8, v7

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v8, v1

    .line 76
    :goto_4b
    const/4 v9, 0x0

    .line 77
    if-eqz v8, :cond_65

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 82
    move-result p3

    .line 83
    cmpg-float p3, p3, v9

    .line 85
    if-gez p3, :cond_5a

    .line 87
    aget p3, v5, v1

    .line 89
    :cond_58
    :goto_58
    move v6, p3

    .line 90
    goto :goto_6e

    .line 91
    :cond_5a
    aget p3, v5, v1

    .line 93
    sub-int/2addr p3, v7

    .line 94
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    .line 96
    if-eqz v1, :cond_58

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 101
    goto :goto_58

    .line 102
    :cond_65
    if-lez p3, :cond_6e

    .line 104
    if-eq v6, v0, :cond_6c

    .line 106
    const/4 p3, -0x2

    .line 107
    if-ne v6, p3, :cond_6e

    .line 109
    :cond_6c
    aget v6, v5, v1

    .line 111
    :cond_6e
    :goto_6e
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 113
    if-eq p3, v6, :cond_80

    .line 115
    iput v6, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    .line 117
    invoke-virtual {v2, v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    .line 120
    move-result p3

    .line 121
    if-eq p3, v0, :cond_80

    .line 123
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getStickyView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 126
    move-result-object p3

    .line 127
    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    .line 129
    :cond_80
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    .line 131
    if-eqz p3, :cond_ad

    .line 133
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mItemTouchListener:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 135
    if-nez p3, :cond_9a

    .line 137
    new-instance p3, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 139
    invoke-direct {p3, p0, v4}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;)V

    .line 142
    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mItemTouchListener:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 144
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 147
    new-instance p3, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;

    .line 149
    invoke-direct {p3, p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)V

    .line 152
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 155
    :cond_9a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetY()I

    .line 161
    move-result p3

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetYTop(Landroid/view/View;)I

    .line 165
    move-result p2

    .line 166
    sub-int/2addr p3, p2

    .line 167
    int-to-float p2, p3

    .line 168
    invoke-virtual {p1, v9, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    :cond_ad
    return-void
.end method

.method public registerBlurContainer(Landroid/view/ViewGroup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    .line 3
    return-void
.end method

.method public setIsFixedSize(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mIsFixedSize:Z

    .line 3
    return-void
.end method

.method public setNavigationChanging(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    .line 3
    return-void
.end method

.method public setOffsetX(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    .line 3
    return-void
.end method

.method public setOffsetY(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    .line 3
    return-void
.end method

.method public setOffsetYParent(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    .line 3
    return-void
.end method
