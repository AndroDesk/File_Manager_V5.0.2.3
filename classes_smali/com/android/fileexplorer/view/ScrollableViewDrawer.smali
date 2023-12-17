.class public Lcom/android/fileexplorer/view/ScrollableViewDrawer;
.super Landroid/widget/FrameLayout;
.source "ScrollableViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;,
        Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;,
        Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;,
        Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;,
        Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final ANIM_CLOSE_DURATION:I = 0x1f4

.field private static final ANIM_OPEN_DURATION:I = 0x320

.field private static final DEBUGGABLE:Z

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_DRAGGING:I = 0x1

.field private static final STATE_OPENED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollableViewDrawer"


# instance fields
.field private mActionPointerId:I

.field private mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

.field private mContentView:Landroid/view/View;

.field private mContentViewId:I

.field private mDetermineHorizontal:Z

.field private mDetermineVertical:Z

.field private mDetermineVerticalDrag:Z

.field private mDividerHeight:I

.field private mDownX:F

.field private mDownY:F

.field private mDragEnabled:Z

.field private mDrawerListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;

.field private mLastMotionY:F

.field private mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

.field private mPendingOpenDrawerBeforeLaidOut:Z

.field private mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPendingOpenDrawerWithAnimation:Z

.field private mPendingTranslate:Z

.field private mScrollDivider:Landroid/graphics/drawable/Drawable;

.field private mScrollableViewId:I

.field private mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

.field private mScroller:Landroid/widget/Scroller;

.field private mState:I

.field private mTargetView:Landroid/view/View;

.field private mTargetViewId:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalRange:I

.field private mYOffset:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ScrollableViewDrawer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;-><init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    sget-object v1, Lcom/android/fileexplorer/R$styleable;->ScrollableViewDrawer:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentViewId:I

    if-eqz p3, :cond_87

    const/4 p3, 0x4

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetViewId:I

    if-eqz p3, :cond_7f

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewId:I

    if-eqz p3, :cond_77

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_62

    const p3, 0x7f040542

    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    :cond_62
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDividerHeight:I

    :cond_6c
    const/4 p1, 0x1

    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The contentView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Landroid/widget/Scroller;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/ScrollableViewDrawer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    return-void
.end method

.method private clearPendingOpenDrawerInfo()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    iget-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_15

    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_15
    return-void
.end method

.method private computeStateChanged()V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    if-ne v0, v2, :cond_17

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v0, :cond_17

    const/4 v0, 0x2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    if-eq v2, v0, :cond_22

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->notifyStateChanged()V

    goto :goto_27

    :cond_22
    if-ne v2, v1, :cond_27

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->notifyStateChanged()V

    :cond_27
    :goto_27
    return-void
.end method

.method private getVerticalRange()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    :cond_c
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    return v0
.end method

.method private internalOpenDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 9

    iput-object p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result p1

    iget p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    sub-int v4, p1, p2

    const/16 v5, 0x320

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_27

    :cond_18
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    :goto_27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private notifyStateChanged()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDrawerListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;

    if-eqz v0, :cond_45

    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    const/4 v3, 0x1

    if-eq v1, v3, :cond_27

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    goto :goto_45

    :cond_10
    invoke-interface {v0, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;->onDrawerOpened(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    goto :goto_45

    :cond_27
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, p0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;->onDrawerSlide(Lcom/android/fileexplorer/view/ScrollableViewDrawer;F)V

    goto :goto_45

    :cond_34
    invoke-interface {v0, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;->onDrawerClosed(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    :cond_45
    :goto_45
    return-void
.end method

.method private onTranslationYChange()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->computeStateChanged()V

    :cond_11
    return-void
.end method

.method private shouldInterceptDown()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    invoke-interface {v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public closeDrawer()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->closeDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    return-void
.end method

.method public closeDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    const/4 v3, 0x0

    neg-int v4, v2

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_20

    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    :goto_20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public computeScroll()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_2c

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->isDrawerOpen()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;->onDrawerAnimEnd(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    :cond_2c
    :goto_2c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e6

    if-eq v0, v1, :cond_d6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_45

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d6

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1e

    goto/16 :goto_10f

    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    if-ne v3, v4, :cond_10f

    if-nez v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownY:F

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    goto/16 :goto_10f

    :cond_45
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_55

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    move v0, v2

    :cond_55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownX:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownY:F

    sub-float/2addr v4, v5

    iget-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v5, :cond_c6

    iget-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v5, :cond_c6

    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result v6

    const-string v7, "ScrollableViewDrawer"

    if-ne v5, v6, :cond_85

    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_85

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    const-string v5, "determine vertical up dragging"

    invoke-static {v7, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_85
    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_92

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->shouldInterceptDown()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    :cond_92
    :goto_92
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v5, :cond_a4

    const-string v5, "determine vertical drag"

    invoke-static {v7, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_a4

    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b5

    iget-boolean v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v4, :cond_b5

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVertical:Z

    :cond_b5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c6

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVertical:Z

    if-nez v3, :cond_c6

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    :cond_c6
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v3, :cond_10f

    iget-object v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    goto :goto_10f

    :cond_d6
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v0, :cond_df

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_df
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVertical:Z

    goto :goto_10f

    :cond_e6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownY:F

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    :cond_10f
    :goto_10f
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_11b

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz p1, :cond_11a

    goto :goto_11b

    :cond_11a
    move v1, v2

    :cond_11b
    :goto_11b
    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 11

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDividerHeight:I

    if-lez v4, :cond_2b

    iget-object v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    sub-int v4, v3, v4

    invoke-virtual {v5, v0, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDividerHeight:I

    sub-int/2addr v3, v4

    :cond_2b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, p4, :cond_3c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3c
    return p3
.end method

.method public isAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDrawerOpen()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_69

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_61

    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_59

    instance-of v1, v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    if-eqz v1, :cond_35

    check-cast v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    goto :goto_50

    :cond_35
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_43

    new-instance v1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    goto :goto_50

    :cond_43
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_51

    new-instance v1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    :goto_50
    return-void

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must be a direct child of ScrollableViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_68

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    goto/16 :goto_ad

    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result v1

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    neg-int v3, v1

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_29

    :cond_26
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->computeStateChanged()V

    :goto_29
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_ad

    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    move v0, v2

    :cond_45
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    iget v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    add-int/2addr v1, v3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_ad

    :cond_68
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    if-eqz v0, :cond_a5

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result v1

    if-eq v0, v1, :cond_a5

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/high16 v1, 0x40a00000  # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_99

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_a1

    :cond_99
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    neg-int v3, v1

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_a1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_a8

    :cond_a5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->computeStateChanged()V

    :goto_a8
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_ad
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openDrawer()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->openDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    return-void
.end method

.method public openDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->internalOpenDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    goto :goto_1e

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    iput-object p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    new-instance p1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;-><init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1e
    return-void
.end method

.method public resetState()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->closeDrawer()V

    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    return-void
.end method

.method public setDrawerListener(Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDrawerListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;

    return-void
.end method
