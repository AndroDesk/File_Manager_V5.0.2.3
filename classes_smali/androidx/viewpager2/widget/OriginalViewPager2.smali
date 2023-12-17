.class public Landroidx/viewpager2/widget/OriginalViewPager2;
.super Landroid/view/ViewGroup;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/OriginalViewPager2$g;,
        Landroidx/viewpager2/widget/OriginalViewPager2$j;,
        Landroidx/viewpager2/widget/OriginalViewPager2$f;,
        Landroidx/viewpager2/widget/OriginalViewPager2$e;,
        Landroidx/viewpager2/widget/OriginalViewPager2$k;,
        Landroidx/viewpager2/widget/OriginalViewPager2$i;,
        Landroidx/viewpager2/widget/OriginalViewPager2$n;,
        Landroidx/viewpager2/widget/OriginalViewPager2$l;,
        Landroidx/viewpager2/widget/OriginalViewPager2$h;,
        Landroidx/viewpager2/widget/OriginalViewPager2$m;,
        Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;
    }
.end annotation


# static fields
.field public static final OFFSCREEN_PAGE_LIMIT_DEFAULT:I = -0x1

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OriginalViewPager2"

.field public static sFeatureEnhancedA11yEnabled:Z = true


# instance fields
.field public mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

.field public mCurrentItem:I

.field private mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

.field public mCurrentItemDirty:Z

.field private mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

.field private mFakeDragger:Landroidx/viewpager2/widget/d;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mOffscreenPageLimit:I

.field private mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

.field private mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

.field private mPagerSnapHelper:Landroidx/recyclerview/widget/q;

.field private mPendingAdapterState:Landroid/os/Parcelable;

.field private mPendingCurrentItem:I

.field public mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

.field private mSavedItemAnimatorPresent:Z

.field public mScrollEventAdapter:Landroidx/viewpager2/widget/f;

.field private final mTmpChildRect:Landroid/graphics/Rect;

.field private final mTmpContainerRect:Landroid/graphics/Rect;

.field private mUserInputEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroidx/viewpager2/widget/c;

    invoke-direct {v0}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 6
    new-instance v1, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 9
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    .line 11
    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    .line 12
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Landroidx/viewpager2/widget/c;

    invoke-direct {v0}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 18
    new-instance v1, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 21
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    .line 23
    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 27
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 28
    new-instance p3, Landroidx/viewpager2/widget/c;

    invoke-direct {p3}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 p3, 0x0

    .line 29
    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 30
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 33
    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    .line 34
    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    .line 35
    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 39
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 40
    new-instance p3, Landroidx/viewpager2/widget/c;

    invoke-direct {p3}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 p3, 0x0

    .line 41
    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 42
    new-instance p4, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {p4, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object p4, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 p4, -0x1

    .line 43
    iput p4, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 45
    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    .line 46
    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    .line 47
    iput p4, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$p;
    .registers 2

    .line 1
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$d;

    .line 3
    invoke-direct {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$d;-><init>()V

    .line 6
    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    sget-boolean v0, Landroidx/viewpager2/widget/OriginalViewPager2;->sFeatureEnhancedA11yEnabled:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$j;

    .line 7
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    .line 10
    goto :goto_f

    .line 11
    :cond_a
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$f;

    .line 13
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$f;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    .line 16
    :goto_f
    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 18
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$m;

    .line 20
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$m;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroid/content/Context;)V

    .line 23
    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 25
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 27
    invoke-static {}, Lm0/g0$e;->a()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 34
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 36
    const/high16 v1, 0x20000

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 41
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$h;

    .line 43
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$h;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 50
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 64
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 66
    const/4 v0, -0x1

    .line 67
    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 75
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$p;

    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 82
    new-instance p1, Landroidx/viewpager2/widget/f;

    .line 84
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/f;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    .line 87
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 89
    new-instance p2, Landroidx/viewpager2/widget/d;

    .line 91
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 93
    invoke-direct {p2, p0, p1, v0}, Landroidx/viewpager2/widget/d;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroidx/viewpager2/widget/f;Lmiuix/recyclerview/widget/RecyclerView;)V

    .line 96
    iput-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    .line 98
    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$l;

    .line 100
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$l;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    .line 103
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    .line 105
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 107
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/v;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 110
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 112
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 114
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 117
    new-instance p1, Landroidx/viewpager2/widget/c;

    .line 119
    invoke-direct {p1}, Landroidx/viewpager2/widget/c;-><init>()V

    .line 122
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    .line 124
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 126
    iput-object p1, p2, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 128
    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$b;

    .line 130
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$b;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    .line 133
    new-instance p2, Landroidx/viewpager2/widget/OriginalViewPager2$c;

    .line 135
    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$c;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    .line 138
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    .line 140
    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    .line 147
    iget-object p1, p1, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 154
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 156
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->f(Lmiuix/recyclerview/widget/RecyclerView;)V

    .line 159
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    .line 161
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    .line 163
    iget-object p1, p1, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance p1, Landroidx/viewpager2/widget/e;

    .line 170
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 172
    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 175
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    .line 177
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    .line 179
    iget-object p2, p2, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 186
    const/4 p2, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method

.method private registerCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 8
    :cond_7
    return-void
.end method

.method private restorePendingState()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 16
    if-eqz v2, :cond_1e

    .line 18
    instance-of v3, v0, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    .line 20
    if-eqz v3, :cond_1b

    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    .line 25
    invoke-interface {v3, v2}, Lmiuix/androidbasewidget/adapter/StatefulAdapter;->restoreState(Landroid/os/Parcelable;)V

    .line 28
    :cond_1b
    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 31
    :cond_1e
    const/4 v2, 0x0

    .line 32
    iget v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    .line 34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 40
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result v0

    .line 44
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 50
    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    .line 52
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 54
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 57
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 59
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->k()V

    .line 62
    return-void
.end method

.method private setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 1
    sget-object v2, Lmiuix/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_15

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    .line 3
    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 4
    :cond_15
    :try_start_15
    sget p1, Lmiuix/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->setOrientation(I)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 7
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_23
    move-exception p1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p1
.end method

.method private unregisterCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 8
    :cond_7
    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V

    return-void
.end method

.method public beginFakeDrag()Z
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    .line 3
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    .line 5
    iget v1, v1, Landroidx/viewpager2/widget/f;->f:I

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v1, v3, :cond_c

    .line 11
    move v1, v3

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v1, v2

    .line 14
    :goto_d
    if-eqz v1, :cond_10

    .line 16
    goto :goto_63

    .line 17
    :cond_10
    iput v2, v0, Landroidx/viewpager2/widget/d;->g:I

    .line 19
    int-to-float v1, v2

    .line 20
    iput v1, v0, Landroidx/viewpager2/widget/d;->f:F

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v4

    .line 26
    iput-wide v4, v0, Landroidx/viewpager2/widget/d;->h:J

    .line 28
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    .line 30
    if-nez v1, :cond_36

    .line 32
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    .line 38
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 51
    move-result v1

    .line 52
    iput v1, v0, Landroidx/viewpager2/widget/d;->e:I

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 58
    :goto_39
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    .line 60
    const/4 v4, 0x4

    .line 61
    iput v4, v1, Landroidx/viewpager2/widget/f;->e:I

    .line 63
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/f;->d(Z)V

    .line 66
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    .line 68
    iget v1, v1, Landroidx/viewpager2/widget/f;->f:I

    .line 70
    if-nez v1, :cond_48

    .line 72
    move v2, v3

    .line 73
    :cond_48
    if-nez v2, :cond_4f

    .line 75
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 80
    :cond_4f
    iget-wide v6, v0, Landroidx/viewpager2/widget/d;->h:J

    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    move-wide v4, v6

    .line 87
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 90
    move-result-object v1

    .line 91
    iget-object v0, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 96
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 99
    move v2, v3

    .line 100
    :goto_63
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public canScrollVertically(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/Parcelable;

    .line 11
    instance-of v1, v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    .line 13
    if-eqz v1, :cond_24

    .line 15
    check-cast v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    .line 17
    iget v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->a:I

    .line 19
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/os/Parcelable;

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    :cond_24
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 40
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->restorePendingState()V

    .line 43
    return-void
.end method

.method public endFakeDrag()Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    .line 3
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    .line 5
    iget-boolean v2, v1, Landroidx/viewpager2/widget/f;->m:Z

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v2, :cond_c

    .line 11
    move v3, v4

    .line 12
    goto :goto_58

    .line 13
    :cond_c
    iget v5, v1, Landroidx/viewpager2/widget/f;->f:I

    .line 15
    if-ne v5, v3, :cond_12

    .line 17
    move v5, v3

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v5, v4

    .line 20
    :goto_13
    if-eqz v5, :cond_18

    .line 22
    if-nez v2, :cond_18

    .line 24
    goto :goto_37

    .line 25
    :cond_18
    iput-boolean v4, v1, Landroidx/viewpager2/widget/f;->m:Z

    .line 27
    invoke-virtual {v1}, Landroidx/viewpager2/widget/f;->e()V

    .line 30
    iget-object v2, v1, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 32
    iget v5, v2, Landroidx/viewpager2/widget/f$a;->c:I

    .line 34
    if-nez v5, :cond_33

    .line 36
    iget v2, v2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 38
    iget v5, v1, Landroidx/viewpager2/widget/f;->h:I

    .line 40
    if-eq v2, v5, :cond_2c

    .line 42
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 45
    :cond_2c
    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 48
    invoke-virtual {v1}, Landroidx/viewpager2/widget/f;->c()V

    .line 51
    goto :goto_37

    .line 52
    :cond_33
    const/4 v2, 0x2

    .line 53
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 56
    :goto_37
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    .line 58
    const/16 v2, 0x3e8

    .line 60
    iget v4, v0, Landroidx/viewpager2/widget/d;->e:I

    .line 62
    int-to-float v4, v4

    .line 63
    invoke-virtual {v1, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 66
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 69
    move-result v2

    .line 70
    float-to-int v2, v2

    .line 71
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 74
    move-result v1

    .line 75
    float-to-int v1, v1

    .line 76
    iget-object v4, v0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    invoke-virtual {v4, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_58

    .line 84
    iget-object v0, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 86
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->snapToPage()V

    .line 89
    :cond_58
    :goto_58
    return v3
.end method

.method public fakeDragBy(F)Z
    .registers 14
    .param p1  # F
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "SupportAnnotationUsage"
            }
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    .line 3
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    .line 5
    iget-boolean v1, v1, Landroidx/viewpager2/widget/f;->m:Z

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_59

    .line 11
    :cond_a
    iget v1, v0, Landroidx/viewpager2/widget/d;->f:F

    .line 13
    sub-float/2addr v1, p1

    .line 14
    iput v1, v0, Landroidx/viewpager2/widget/d;->f:F

    .line 16
    iget p1, v0, Landroidx/viewpager2/widget/d;->g:I

    .line 18
    int-to-float p1, p1

    .line 19
    sub-float/2addr v1, p1

    .line 20
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 23
    move-result p1

    .line 24
    iget v1, v0, Landroidx/viewpager2/widget/d;->g:I

    .line 26
    add-int/2addr v1, p1

    .line 27
    iput v1, v0, Landroidx/viewpager2/widget/d;->g:I

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    move-result-wide v5

    .line 33
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 35
    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    .line 38
    move-result v1

    .line 39
    const/4 v11, 0x1

    .line 40
    if-nez v1, :cond_2b

    .line 42
    move v1, v11

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v1, v2

    .line 45
    :goto_2c
    if-eqz v1, :cond_30

    .line 47
    move v3, p1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v3, v2

    .line 50
    :goto_31
    if-eqz v1, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v2, p1

    .line 54
    :goto_35
    const/4 p1, 0x0

    .line 55
    if-eqz v1, :cond_3c

    .line 57
    iget v4, v0, Landroidx/viewpager2/widget/d;->f:F

    .line 59
    move v8, v4

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v8, p1

    .line 62
    :goto_3d
    if-eqz v1, :cond_40

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    iget p1, v0, Landroidx/viewpager2/widget/d;->f:F

    .line 67
    :goto_42
    move v9, p1

    .line 68
    iget-object p1, v0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 73
    const/4 v7, 0x2

    .line 74
    iget-wide v3, v0, Landroidx/viewpager2/widget/d;->h:J

    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 80
    move-result-object p1

    .line 81
    iget-object v0, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 89
    move v2, v11

    .line 90
    :goto_59
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2$j;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 12
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->e()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_10
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 3
    return v0
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemDecorationCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    .line 3
    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPageSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_16

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 21
    move-result v0

    .line 22
    goto :goto_23

    .line 23
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 35
    move-result v0

    .line 36
    :goto_23
    sub-int/2addr v1, v0

    .line 37
    return v1
.end method

.method public getScrollState()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 3
    iget v0, v0, Landroidx/viewpager2/widget/f;->f:I

    .line 5
    return v0
.end method

.method public invalidateItemDecorations()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 6
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    .line 3
    iget-object v0, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    .line 5
    iget-boolean v0, v0, Landroidx/viewpager2/widget/f;->m:Z

    .line 7
    return v0
.end method

.method public isRtl()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method public isUserInputEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    .line 3
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 9

    .line 1
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    move-result v2

    .line 19
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 21
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 23
    sub-int/2addr p4, p2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 27
    move-result p2

    .line 28
    sub-int/2addr p4, p2

    .line 29
    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 31
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 36
    move-result p4

    .line 37
    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 39
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 41
    sub-int/2addr p5, p3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result p3

    .line 46
    sub-int/2addr p5, p3

    .line 47
    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 49
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 51
    iget-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 53
    const p4, 0x800033

    .line 56
    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 59
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 61
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 63
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 65
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 67
    iget p5, p2, Landroid/graphics/Rect;->right:I

    .line 69
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 71
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 74
    iget-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 76
    if-eqz p1, :cond_50

    .line 78
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->updateCurrentItem()V

    .line 81
    :cond_50
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 6
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    move-result v4

    .line 32
    add-int/2addr v4, v3

    .line 33
    add-int/2addr v4, v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    move-result v3

    .line 42
    add-int/2addr v3, v0

    .line 43
    add-int/2addr v3, v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 47
    move-result v0

    .line 48
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 55
    move-result v1

    .line 56
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result v1

    .line 60
    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 63
    move-result p1

    .line 64
    shl-int/lit8 v0, v2, 0x10

    .line 66
    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 73
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget v0, p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->b:I

    .line 20
    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    .line 22
    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->c:Landroid/os/Parcelable;

    .line 24
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 26
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    .line 7
    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 15
    move-result v0

    .line 16
    iput v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->a:I

    .line 18
    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_18

    .line 23
    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 25
    :cond_18
    iput v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->b:I

    .line 27
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    iput-object v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->c:Landroid/os/Parcelable;

    .line 33
    goto :goto_33

    .line 34
    :cond_21
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    move-result-object v0

    .line 40
    instance-of v2, v0, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    .line 42
    if-eqz v2, :cond_33

    .line 44
    check-cast v0, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    .line 46
    invoke-interface {v0}, Lmiuix/androidbasewidget/adapter/StatefulAdapter;->saveState()Landroid/os/Parcelable;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->c:Landroid/os/Parcelable;

    .line 52
    :cond_33
    :goto_33
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " does not support direct child views"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->b(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->j(ILandroid/os/Bundle;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public registerOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    .line 3
    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 6
    return-void
.end method

.method public requestTransform()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    .line 3
    iget-object v0, v0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 10
    invoke-virtual {v0}, Landroidx/viewpager2/widget/f;->e()V

    .line 13
    iget-object v0, v0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 15
    iget v1, v0, Landroidx/viewpager2/widget/f$a;->a:I

    .line 17
    int-to-double v1, v1

    .line 18
    iget v0, v0, Landroidx/viewpager2/widget/f$a;->b:F

    .line 20
    float-to-double v3, v0

    .line 21
    add-double/2addr v1, v3

    .line 22
    double-to-int v0, v1

    .line 23
    int-to-double v3, v0

    .line 24
    sub-double/2addr v1, v3

    .line 25
    double-to-float v1, v1

    .line 26
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getPageSize()I

    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    mul-float/2addr v2, v1

    .line 32
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    .line 38
    invoke-virtual {v3, v0, v1, v2}, Landroidx/viewpager2/widget/e;->onPageScrolled(IFI)V

    .line 41
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 9
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->unregisterCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 23
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->restorePendingState()V

    .line 26
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 28
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->registerCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItemInternal(IZ)V

    return-void

    .line 4
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentItemInternal(IZ)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_13

    .line 8
    iget p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p2, v0, :cond_12

    .line 13
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    .line 19
    :cond_12
    return-void

    .line 20
    :cond_13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 23
    move-result v2

    .line 24
    if-gtz v2, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result p1

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    sub-int/2addr v0, v2

    .line 37
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 40
    move-result p1

    .line 41
    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 43
    if-ne p1, v0, :cond_38

    .line 45
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 47
    iget v3, v3, Landroidx/viewpager2/widget/f;->f:I

    .line 49
    if-nez v3, :cond_34

    .line 51
    move v3, v2

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v3, v1

    .line 54
    :goto_35
    if-eqz v3, :cond_38

    .line 56
    return-void

    .line 57
    :cond_38
    if-ne p1, v0, :cond_3d

    .line 59
    if-eqz p2, :cond_3d

    .line 61
    return-void

    .line 62
    :cond_3d
    int-to-double v3, v0

    .line 63
    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 65
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 67
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->o()V

    .line 70
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 72
    iget v5, v0, Landroidx/viewpager2/widget/f;->f:I

    .line 74
    if-nez v5, :cond_4d

    .line 76
    move v5, v2

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v5, v1

    .line 79
    :goto_4e
    if-nez v5, :cond_5c

    .line 81
    invoke-virtual {v0}, Landroidx/viewpager2/widget/f;->e()V

    .line 84
    iget-object v0, v0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 86
    iget v3, v0, Landroidx/viewpager2/widget/f$a;->a:I

    .line 88
    int-to-double v3, v3

    .line 89
    iget v0, v0, Landroidx/viewpager2/widget/f$a;->b:F

    .line 91
    float-to-double v5, v0

    .line 92
    add-double/2addr v3, v5

    .line 93
    :cond_5c
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 95
    const/4 v5, 0x2

    .line 96
    if-eqz p2, :cond_63

    .line 98
    move v6, v5

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    const/4 v6, 0x3

    .line 101
    :goto_64
    iput v6, v0, Landroidx/viewpager2/widget/f;->e:I

    .line 103
    iput-boolean v1, v0, Landroidx/viewpager2/widget/f;->m:Z

    .line 105
    iget v6, v0, Landroidx/viewpager2/widget/f;->i:I

    .line 107
    if-eq v6, p1, :cond_6d

    .line 109
    move v1, v2

    .line 110
    :cond_6d
    iput p1, v0, Landroidx/viewpager2/widget/f;->i:I

    .line 112
    invoke-virtual {v0, v5}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 115
    if-eqz v1, :cond_77

    .line 117
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 120
    :cond_77
    if-nez p2, :cond_7f

    .line 122
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 124
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 127
    return-void

    .line 128
    :cond_7f
    int-to-double v0, p1

    .line 129
    sub-double v5, v0, v3

    .line 131
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 134
    move-result-wide v5

    .line 135
    const-wide/high16 v7, 0x4008000000000000L  # 3.0

    .line 137
    cmpl-double p2, v5, v7

    .line 139
    if-lez p2, :cond_a5

    .line 141
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 143
    cmpl-double v0, v0, v3

    .line 145
    if-lez v0, :cond_95

    .line 147
    add-int/lit8 v0, p1, -0x3

    .line 149
    goto :goto_97

    .line 150
    :cond_95
    add-int/lit8 v0, p1, 0x3

    .line 152
    :goto_97
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 155
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 157
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$n;

    .line 159
    invoke-direct {v0, p2, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$n;-><init>(Lmiuix/recyclerview/widget/RecyclerView;I)V

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 165
    goto :goto_aa

    .line 166
    :cond_a5
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 168
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 171
    :goto_aa
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 4
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 6
    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->n()V

    .line 9
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_f

    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p1, v0, :cond_7

    .line 7
    goto :goto_f

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    :cond_f
    :goto_f
    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    .line 18
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 9
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->p()V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/OriginalViewPager2$k;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_18

    .line 4
    iget-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    .line 6
    if-nez v1, :cond_12

    .line 8
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    .line 19
    :cond_12
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 24
    goto :goto_28

    .line 25
    :cond_18
    iget-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    .line 27
    if-eqz v1, :cond_28

    .line 29
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 31
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 33
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 36
    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 38
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    .line 41
    :cond_28
    :goto_28
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    .line 43
    iget-object v1, v0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    .line 45
    if-ne p1, v1, :cond_2f

    .line 47
    return-void

    .line 48
    :cond_2f
    iput-object p1, v0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    .line 50
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->requestTransform()V

    .line 53
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    .line 3
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 5
    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->q()V

    .line 8
    return-void
.end method

.method public snapToPage()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    .line 3
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    .line 14
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/q;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    aget v1, v0, v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v1, :cond_1d

    .line 26
    aget v3, v0, v2

    .line 28
    if-eqz v3, :cond_24

    .line 30
    :cond_1d
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 32
    aget v0, v0, v2

    .line 34
    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 37
    :cond_24
    return-void
.end method

.method public unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    .line 3
    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method public updateCurrentItem()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    move-result v0

    .line 20
    iget v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 22
    if-eq v0, v1, :cond_22

    .line 24
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getScrollState()I

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_22

    .line 30
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    .line 32
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/c;->onPageSelected(I)V

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 38
    return-void

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    const-string v1, "Design assumption violated."

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method
