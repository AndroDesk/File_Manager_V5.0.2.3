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
.field public static final OFFSCREEN_PAGE_LIMIT_DEFAULT:I

.field public static final ORIENTATION_HORIZONTAL:I

.field public static final ORIENTATION_VERTICAL:I

.field public static final SCROLL_STATE_DRAGGING:I

.field public static final SCROLL_STATE_IDLE:I

.field public static final SCROLL_STATE_SETTLING:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/viewpager2/widget/OriginalViewPager2;->OFFSCREEN_PAGE_LIMIT_DEFAULT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/viewpager2/widget/OriginalViewPager2;->ORIENTATION_HORIZONTAL:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/viewpager2/widget/OriginalViewPager2;->ORIENTATION_VERTICAL:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/viewpager2/widget/OriginalViewPager2;->SCROLL_STATE_DRAGGING:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/viewpager2/widget/OriginalViewPager2;->SCROLL_STATE_IDLE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/viewpager2/widget/OriginalViewPager2;->SCROLL_STATE_SETTLING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    new-instance v0, Landroidx/viewpager2/widget/c;

    invoke-direct {v0}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    new-instance v1, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    new-instance v0, Landroidx/viewpager2/widget/c;

    invoke-direct {v0}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    new-instance v1, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    new-instance p3, Landroidx/viewpager2/widget/c;

    invoke-direct {p3}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    new-instance p3, Landroidx/viewpager2/widget/c;

    invoke-direct {p3}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    new-instance p4, Landroidx/viewpager2/widget/OriginalViewPager2$a;

    invoke-direct {p4, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$a;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object p4, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 p4, -0x1

    iput p4, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    iput p4, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$p;
    .registers 2

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$d;

    invoke-direct {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$d;-><init>()V

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    sget-boolean v0, Landroidx/viewpager2/widget/OriginalViewPager2;->sFeatureEnhancedA11yEnabled:Z

    if-eqz v0, :cond_a

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$j;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$j;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    goto :goto_f

    :cond_a
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$f;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$f;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    :goto_f
    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$m;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$m;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lm0/g0$e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$h;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$h;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance p1, Landroidx/viewpager2/widget/f;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/f;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    new-instance p2, Landroidx/viewpager2/widget/d;

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p0, p1, v0}, Landroidx/viewpager2/widget/d;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroidx/viewpager2/widget/f;Lmiuix/recyclerview/widget/RecyclerView;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$l;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$l;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/v;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    new-instance p1, Landroidx/viewpager2/widget/c;

    invoke-direct {p1}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    iput-object p1, p2, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    new-instance p1, Landroidx/viewpager2/widget/OriginalViewPager2$b;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$b;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    new-instance p2, Landroidx/viewpager2/widget/OriginalViewPager2$c;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/OriginalViewPager2$c;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    iget-object p1, p1, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->f(Lmiuix/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    iget-object p1, p1, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/viewpager2/widget/e;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    iget-object p2, p2, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

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

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    :cond_7
    return-void
.end method

.method private restorePendingState()V
    .registers 5

    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    if-eqz v2, :cond_1e

    instance-of v3, v0, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    if-eqz v3, :cond_1b

    move-object v3, v0

    check-cast v3, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    invoke-interface {v3, v2}, Lmiuix/androidbasewidget/adapter/StatefulAdapter;->restoreState(Landroid/os/Parcelable;)V

    :cond_1b
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    :cond_1e
    const/4 v2, 0x0

    iget v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    iput v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->k()V

    return-void
.end method

.method private setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    sget-object v2, Lmiuix/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_15

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_15
    :try_start_15
    sget p1, Lmiuix/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->setOrientation(I)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_23
    move-exception p1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

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

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V
    .registers 4

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V

    return-void
.end method

.method public beginFakeDrag()Z
    .registers 13

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    iget v1, v1, Landroidx/viewpager2/widget/f;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    if-eqz v1, :cond_10

    goto :goto_63

    :cond_10
    iput v2, v0, Landroidx/viewpager2/widget/d;->g:I

    int-to-float v1, v2

    iput v1, v0, Landroidx/viewpager2/widget/d;->f:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/viewpager2/widget/d;->h:J

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    if-nez v1, :cond_36

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v0, Landroidx/viewpager2/widget/d;->e:I

    goto :goto_39

    :cond_36
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_39
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    const/4 v4, 0x4

    iput v4, v1, Landroidx/viewpager2/widget/f;->e:I

    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/f;->d(Z)V

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    iget v1, v1, Landroidx/viewpager2/widget/f;->f:I

    if-nez v1, :cond_48

    move v2, v3

    :cond_48
    if-nez v2, :cond_4f

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_4f
    iget-wide v6, v0, Landroidx/viewpager2/widget/d;->h:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v2, v3

    :goto_63
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

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

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    if-eqz v1, :cond_24

    check-cast v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->a:I

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_24
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->restorePendingState()V

    return-void
.end method

.method public endFakeDrag()Z
    .registers 7

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    iget-boolean v2, v1, Landroidx/viewpager2/widget/f;->m:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_c

    move v3, v4

    goto :goto_58

    :cond_c
    iget v5, v1, Landroidx/viewpager2/widget/f;->f:I

    if-ne v5, v3, :cond_12

    move v5, v3

    goto :goto_13

    :cond_12
    move v5, v4

    :goto_13
    if-eqz v5, :cond_18

    if-nez v2, :cond_18

    goto :goto_37

    :cond_18
    iput-boolean v4, v1, Landroidx/viewpager2/widget/f;->m:Z

    invoke-virtual {v1}, Landroidx/viewpager2/widget/f;->e()V

    iget-object v2, v1, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget v5, v2, Landroidx/viewpager2/widget/f$a;->c:I

    if-nez v5, :cond_33

    iget v2, v2, Landroidx/viewpager2/widget/f$a;->a:I

    iget v5, v1, Landroidx/viewpager2/widget/f;->h:I

    if-eq v2, v5, :cond_2c

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/f;->a(I)V

    :cond_2c
    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/f;->b(I)V

    invoke-virtual {v1}, Landroidx/viewpager2/widget/f;->c()V

    goto :goto_37

    :cond_33
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/f;->b(I)V

    :goto_37
    iget-object v1, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v4, v0, Landroidx/viewpager2/widget/d;->e:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-int v1, v1

    iget-object v4, v0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v0, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->snapToPage()V

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

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    iget-boolean v1, v1, Landroidx/viewpager2/widget/f;->m:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    goto :goto_59

    :cond_a
    iget v1, v0, Landroidx/viewpager2/widget/d;->f:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroidx/viewpager2/widget/d;->f:F

    iget p1, v0, Landroidx/viewpager2/widget/d;->g:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v1, v0, Landroidx/viewpager2/widget/d;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/viewpager2/widget/d;->g:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v1, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    move-result v1

    const/4 v11, 0x1

    if-nez v1, :cond_2b

    move v1, v11

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    if-eqz v1, :cond_30

    move v3, p1

    goto :goto_31

    :cond_30
    move v3, v2

    :goto_31
    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    move v2, p1

    :goto_35
    const/4 p1, 0x0

    if-eqz v1, :cond_3c

    iget v4, v0, Landroidx/viewpager2/widget/d;->f:F

    move v8, v4

    goto :goto_3d

    :cond_3c
    move v8, p1

    :goto_3d
    if-eqz v1, :cond_40

    goto :goto_42

    :cond_40
    iget p1, v0, Landroidx/viewpager2/widget/d;->f:F

    :goto_42
    move v9, p1

    iget-object p1, v0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    const/4 v7, 0x2

    iget-wide v3, v0, Landroidx/viewpager2/widget/d;->h:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, v0, Landroidx/viewpager2/widget/d;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    move v2, v11

    :goto_59
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2$j;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    return v0
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    return-object p1
.end method

.method public getItemDecorationCount()I
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getPageSize()I
    .registers 4

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_23

    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    :goto_23
    sub-int/2addr v1, v0

    return v1
.end method

.method public getScrollState()I
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    iget v0, v0, Landroidx/viewpager2/widget/f;->f:I

    return v0
.end method

.method public invalidateItemDecorations()V
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/d;

    iget-object v0, v0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/f;

    iget-boolean v0, v0, Landroidx/viewpager2/widget/f;->m:Z

    return v0
.end method

.method public isRtl()Z
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isUserInputEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 9

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->updateCurrentItem()V

    :cond_50
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->b:I

    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->a:I

    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    :cond_18
    iput v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->b:I

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    if-eqz v0, :cond_21

    iput-object v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->c:Landroid/os/Parcelable;

    goto :goto_33

    :cond_21
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v2, v0, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    if-eqz v2, :cond_33

    check-cast v0, Lmiuix/androidbasewidget/adapter/StatefulAdapter;

    invoke-interface {v0}, Lmiuix/androidbasewidget/adapter/StatefulAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;->c:Landroid/os/Parcelable;

    :cond_33
    :goto_33
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not support direct child views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->j(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public registerOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$i;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    return-void
.end method

.method public requestTransform()V
    .registers 6

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    iget-object v0, v0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/f;->e()V

    iget-object v0, v0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget v1, v0, Landroidx/viewpager2/widget/f$a;->a:I

    int-to-double v1, v1

    iget v0, v0, Landroidx/viewpager2/widget/f$a;->b:F

    float-to-double v3, v0

    add-double/2addr v1, v3

    double-to-int v0, v1

    int-to-double v3, v0

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getPageSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/viewpager2/widget/e;->onPageScrolled(IFI)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->unregisterCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->restorePendingState()V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->registerCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItemInternal(IZ)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentItemInternal(IZ)V
    .registers 12

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_12

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPendingCurrentItem:I

    :cond_12
    return-void

    :cond_13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_1a

    return-void

    :cond_1a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    if-ne p1, v0, :cond_38

    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    iget v3, v3, Landroidx/viewpager2/widget/f;->f:I

    if-nez v3, :cond_34

    move v3, v2

    goto :goto_35

    :cond_34
    move v3, v1

    :goto_35
    if-eqz v3, :cond_38

    return-void

    :cond_38
    if-ne p1, v0, :cond_3d

    if-eqz p2, :cond_3d

    return-void

    :cond_3d
    int-to-double v3, v0

    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->o()V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    iget v5, v0, Landroidx/viewpager2/widget/f;->f:I

    if-nez v5, :cond_4d

    move v5, v2

    goto :goto_4e

    :cond_4d
    move v5, v1

    :goto_4e
    if-nez v5, :cond_5c

    invoke-virtual {v0}, Landroidx/viewpager2/widget/f;->e()V

    iget-object v0, v0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget v3, v0, Landroidx/viewpager2/widget/f$a;->a:I

    int-to-double v3, v3

    iget v0, v0, Landroidx/viewpager2/widget/f$a;->b:F

    float-to-double v5, v0

    add-double/2addr v3, v5

    :cond_5c
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    const/4 v5, 0x2

    if-eqz p2, :cond_63

    move v6, v5

    goto :goto_64

    :cond_63
    const/4 v6, 0x3

    :goto_64
    iput v6, v0, Landroidx/viewpager2/widget/f;->e:I

    iput-boolean v1, v0, Landroidx/viewpager2/widget/f;->m:Z

    iget v6, v0, Landroidx/viewpager2/widget/f;->i:I

    if-eq v6, p1, :cond_6d

    move v1, v2

    :cond_6d
    iput p1, v0, Landroidx/viewpager2/widget/f;->i:I

    invoke-virtual {v0, v5}, Landroidx/viewpager2/widget/f;->b(I)V

    if-eqz v1, :cond_77

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/f;->a(I)V

    :cond_77
    if-nez p2, :cond_7f

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_7f
    int-to-double v0, p1

    sub-double v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L  # 3.0

    cmpl-double p2, v5, v7

    if-lez p2, :cond_a5

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    cmpl-double v0, v0, v3

    if-lez v0, :cond_95

    add-int/lit8 v0, p1, -0x3

    goto :goto_97

    :cond_95
    add-int/lit8 v0, p1, 0x3

    :goto_97
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$n;

    invoke-direct {v0, p2, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$n;-><init>(Lmiuix/recyclerview/widget/RecyclerView;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_aa

    :cond_a5
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_aa
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->n()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_f
    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mOffscreenPageLimit:I

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->p()V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/OriginalViewPager2$k;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    iget-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    :cond_12
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    goto :goto_28

    :cond_18
    iget-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mSavedItemAnimatorPresent:Z

    :cond_28
    :goto_28
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/e;

    iget-object v1, v0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    if-ne p1, v1, :cond_2f

    return-void

    :cond_2f
    iput-object p1, v0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->requestTransform()V

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mUserInputEnabled:Z

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->q()V

    return-void
.end method

.method public snapToPage()V
    .registers 5

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/q;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    aget v3, v0, v2

    if-eqz v3, :cond_24

    :cond_1d
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    aget v0, v0, v2

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_24
    return-void
.end method

.method public unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$i;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/c;

    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCurrentItem()V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/q;

    if-eqz v0, :cond_26

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/c;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/c;->onPageSelected(I)V

    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
