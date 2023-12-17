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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

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

    :goto_22
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isApplyBlur:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

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

    :goto_22
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isApplyBlur:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->onGroupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->onGroupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    return-object p0
.end method

.method private getOffsetYParent(Landroid/view/View;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    return-object p1
.end method

.method private getStickyView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .registers 11

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$b0;

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_1e

    move-object v2, p1

    :cond_1e
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v2

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v4, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCachedStickyViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3a
    invoke-virtual {v0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->measureView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    if-eqz p2, :cond_57

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_57

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_57
    iget-object p2, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    return-object p1
.end method

.method private measureView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v3

    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, p1, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->measure(II)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v2, v2, v0, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public NotifyStickyChange()V
    .registers 2

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    return-void
.end method

.method public applyBlur(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isApplyBlur:Z

    return-void
.end method

.method public getOffsetY()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    return v0
.end method

.method public getOffsetYTop(Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetYParent(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetYParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 14

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    iget-boolean p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    if-eqz p3, :cond_e

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    :cond_e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1c

    return-void

    :cond_1c
    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_33

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ne v5, p3, :cond_30

    goto :goto_34

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_33
    move-object v3, v4

    :goto_34
    if-nez v3, :cond_37

    return-void

    :cond_37
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {v2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    move-result-object v5

    iget v6, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    const/4 v7, 0x1

    aget v8, v5, v7

    if-ne v8, v0, :cond_4a

    move v8, v7

    goto :goto_4b

    :cond_4a
    move v8, v1

    :goto_4b
    const/4 v9, 0x0

    if-eqz v8, :cond_65

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result p3

    cmpg-float p3, p3, v9

    if-gez p3, :cond_5a

    aget p3, v5, v1

    :cond_58
    :goto_58
    move v6, p3

    goto :goto_6e

    :cond_5a
    aget p3, v5, v1

    sub-int/2addr p3, v7

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    goto :goto_58

    :cond_65
    if-lez p3, :cond_6e

    if-eq v6, v0, :cond_6c

    const/4 p3, -0x2

    if-ne v6, p3, :cond_6e

    :cond_6c
    aget v6, v5, v1

    :cond_6e
    :goto_6e
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    if-eq p3, v6, :cond_80

    iput v6, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mCurrentStickyGroup:I

    invoke-virtual {v2, v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    move-result p3

    if-eq p3, v0, :cond_80

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getStickyView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    :cond_80
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mStickyView:Landroid/view/View;

    if-eqz p3, :cond_ad

    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mItemTouchListener:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    if-nez p3, :cond_9a

    new-instance p3, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    invoke-direct {p3, p0, v4}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;)V

    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mItemTouchListener:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    new-instance p3, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;

    invoke-direct {p3, p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)V

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    :cond_9a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetY()I

    move-result p3

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetYTop(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    invoke-virtual {p1, v9, p2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_ad
    return-void
.end method

.method public registerBlurContainer(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mBlurContainerVGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public setIsFixedSize(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->mIsFixedSize:Z

    return-void
.end method

.method public setNavigationChanging(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->isNavigationChanging:Z

    return-void
.end method

.method public setOffsetX(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    return-void
.end method

.method public setOffsetY(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetY:I

    return-void
.end method

.method public setOffsetYParent(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetYParent:Landroid/view/View;

    return-void
.end method
