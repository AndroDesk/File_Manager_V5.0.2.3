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

    .line 1
    const-string v0, "ScrollableViewDrawer"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->DEBUGGABLE:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 8
    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 9
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    .line 10
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 11
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    new-instance v1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;-><init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 13
    sget-object v1, Lcom/android/fileexplorer/R$styleable;->ScrollableViewDrawer:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentViewId:I

    if-eqz p3, :cond_87

    const/4 p3, 0x4

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetViewId:I

    if-eqz p3, :cond_7f

    const/4 p3, 0x3

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewId:I

    if-eqz p3, :cond_77

    const/4 p3, 0x2

    .line 17
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_62

    const p3, 0x7f040542

    .line 18
    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    .line 19
    :cond_62
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6c

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDividerHeight:I

    :cond_6c
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 23
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_7f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The contentView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Landroid/widget/Scroller;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/ScrollableViewDrawer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    .line 3
    return p1
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    .line 4
    return-void
.end method

.method private clearPendingOpenDrawerInfo()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 15
    if-eqz v1, :cond_15

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 22
    :cond_15
    return-void
.end method

.method private computeStateChanged()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_b

    .line 6
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 8
    if-nez v0, :cond_17

    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_18

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 15
    move-result v2

    .line 16
    if-ne v0, v2, :cond_17

    .line 18
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 20
    if-nez v0, :cond_17

    .line 22
    const/4 v0, 0x2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v1

    .line 25
    :goto_18
    iget v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    .line 27
    if-eq v2, v0, :cond_22

    .line 29
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->notifyStateChanged()V

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    if-ne v2, v1, :cond_27

    .line 37
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->notifyStateChanged()V

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method private getVerticalRange()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    .line 13
    :cond_c
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    .line 15
    return v0
.end method

.method private internalOpenDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 9

    .line 1
    iput-object p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 3
    if-eqz p1, :cond_18

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 7
    const/4 v1, 0x0

    .line 8
    iget v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 14
    move-result p1

    .line 15
    iget p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 17
    sub-int v4, p1, p2

    .line 19
    const/16 v5, 0x320

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 24
    goto :goto_27

    .line 25
    :cond_18
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 37
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    .line 40
    :goto_27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 43
    return-void
.end method

.method private notifyStateChanged()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDrawerListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;

    .line 3
    if-eqz v0, :cond_45

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mState:I

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_34

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v1, v3, :cond_27

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v1, v3, :cond_10

    .line 16
    goto :goto_45

    .line 17
    :cond_10
    invoke-interface {v0, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;->onDrawerOpened(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    .line 20
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    .line 22
    if-eqz v0, :cond_45

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    .line 32
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 34
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    .line 37
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    .line 39
    goto :goto_45

    .line 40
    :cond_27
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 42
    int-to-float v1, v1

    .line 43
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 46
    move-result v2

    .line 47
    int-to-float v2, v2

    .line 48
    div-float/2addr v1, v2

    .line 49
    invoke-interface {v0, p0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;->onDrawerSlide(Lcom/android/fileexplorer/view/ScrollableViewDrawer;F)V

    .line 52
    goto :goto_45

    .line 53
    :cond_34
    invoke-interface {v0, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;->onDrawerClosed(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    .line 56
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    .line 58
    if-eqz v0, :cond_45

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVerticalRange:I

    .line 68
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingTranslate:Z

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method private onTranslationYChange()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->computeStateChanged()V

    .line 18
    :cond_11
    return-void
.end method

.method private shouldInterceptDown()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 7
    if-nez v0, :cond_12

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    .line 11
    invoke-interface {v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;->canScroll()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method


# virtual methods
.method public closeDrawer()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->closeDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    return-void
.end method

.method public closeDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 9

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    if-eqz p1, :cond_14

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    const/4 v3, 0x0

    neg-int v4, v2

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_20

    .line 5
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    .line 8
    :goto_20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    .line 6
    if-eqz v0, :cond_2c

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1e

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 24
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 30
    goto :goto_2c

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 33
    if-eqz v0, :cond_2c

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->isDrawerOpen()Z

    .line 38
    move-result v1

    .line 39
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;->onDrawerAnimEnd(Z)V

    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_e6

    .line 18
    if-eq v0, v1, :cond_d6

    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq v0, v3, :cond_45

    .line 23
    const/4 v3, 0x3

    .line 24
    if-eq v0, v3, :cond_d6

    .line 26
    const/4 v3, 0x6

    .line 27
    if-eq v0, v3, :cond_1e

    .line 29
    goto/16 :goto_10f

    .line 31
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 38
    move-result v3

    .line 39
    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    .line 41
    if-ne v3, v4, :cond_10f

    .line 43
    if-nez v0, :cond_2e

    .line 45
    move v0, v1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v0, v2

    .line 48
    :goto_2f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 51
    move-result v3

    .line 52
    iput v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 57
    move-result v3

    .line 58
    iput v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownX:F

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownY:F

    .line 66
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    .line 68
    goto/16 :goto_10f

    .line 70
    :cond_45
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 75
    move-result v0

    .line 76
    const/4 v3, -0x1

    .line 77
    if-ne v0, v3, :cond_55

    .line 79
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    .line 85
    move v0, v2

    .line 86
    :cond_55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 89
    move-result v3

    .line 90
    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownX:F

    .line 92
    sub-float/2addr v3, v4

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 96
    move-result v4

    .line 97
    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownY:F

    .line 99
    sub-float/2addr v4, v5

    .line 100
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 102
    if-nez v5, :cond_c6

    .line 104
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    .line 106
    if-nez v5, :cond_c6

    .line 108
    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 110
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 113
    move-result v6

    .line 114
    const-string v7, "ScrollableViewDrawer"

    .line 116
    if-ne v5, v6, :cond_85

    .line 118
    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    .line 120
    neg-int v5, v5

    .line 121
    int-to-float v5, v5

    .line 122
    cmpg-float v5, v4, v5

    .line 124
    if-gez v5, :cond_85

    .line 126
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 128
    const-string v5, "determine vertical up dragging"

    .line 130
    invoke-static {v7, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    goto :goto_92

    .line 134
    :cond_85
    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    .line 136
    int-to-float v5, v5

    .line 137
    cmpl-float v5, v4, v5

    .line 139
    if-lez v5, :cond_92

    .line 141
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->shouldInterceptDown()Z

    .line 144
    move-result v5

    .line 145
    iput-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 147
    :cond_92
    :goto_92
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 149
    if-eqz v5, :cond_a4

    .line 151
    const-string v5, "determine vertical drag"

    .line 153
    invoke-static {v7, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 159
    move-result-object v5

    .line 160
    if-eqz v5, :cond_a4

    .line 162
    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 165
    :cond_a4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 168
    move-result v4

    .line 169
    iget v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    .line 171
    int-to-float v5, v5

    .line 172
    cmpl-float v4, v4, v5

    .line 174
    if-lez v4, :cond_b5

    .line 176
    iget-boolean v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    .line 178
    if-nez v4, :cond_b5

    .line 180
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVertical:Z

    .line 182
    :cond_b5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 185
    move-result v3

    .line 186
    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTouchSlop:I

    .line 188
    int-to-float v4, v4

    .line 189
    cmpl-float v3, v3, v4

    .line 191
    if-lez v3, :cond_c6

    .line 193
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVertical:Z

    .line 195
    if-nez v3, :cond_c6

    .line 197
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    .line 199
    :cond_c6
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 201
    if-nez v3, :cond_10f

    .line 203
    iget-object v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 205
    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 211
    move-result v0

    .line 212
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    .line 214
    goto :goto_10f

    .line 215
    :cond_d6
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 217
    if-nez v0, :cond_df

    .line 219
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 221
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 224
    :cond_df
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 226
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineHorizontal:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVertical:Z

    .line 230
    goto :goto_10f

    .line 231
    :cond_e6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 234
    move-result v0

    .line 235
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    .line 237
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 239
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 241
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 244
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 246
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 252
    move-result v0

    .line 253
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownX:F

    .line 255
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 258
    move-result v0

    .line 259
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDownY:F

    .line 261
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    .line 263
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 268
    move-result v0

    .line 269
    float-to-int v0, v0

    .line 270
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 272
    :cond_10f
    :goto_10f
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
    move-result p1

    .line 276
    if-nez p1, :cond_11b

    .line 278
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 280
    if-eqz p1, :cond_11a

    .line 282
    goto :goto_11b

    .line 283
    :cond_11a
    move v1, v2

    .line 284
    :cond_11b
    :goto_11b
    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 3
    if-ne p2, v0, :cond_31

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 21
    move-result v2

    .line 22
    iget v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 24
    add-int/2addr v3, v2

    .line 25
    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDividerHeight:I

    .line 27
    if-lez v4, :cond_2b

    .line 29
    iget-object v5, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    .line 31
    sub-int v4, v3, v4

    .line 33
    invoke-virtual {v5, v0, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    iget-object v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDividerHeight:I

    .line 43
    sub-int/2addr v3, v4

    .line 44
    :cond_2b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 50
    :cond_31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 53
    move-result p3

    .line 54
    iget-object p4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 56
    if-ne p2, p4, :cond_3c

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    :cond_3c
    return p3
.end method

.method public isAnimating()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public isDrawerOpen()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 3
    if-lez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentViewId:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 12
    if-eqz v0, :cond_71

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v0

    .line 18
    if-ne v0, p0, :cond_69

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 27
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetViewId:I

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    .line 35
    if-eqz v0, :cond_61

    .line 37
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewId:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_59

    .line 45
    instance-of v1, v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    .line 47
    if-eqz v1, :cond_35

    .line 49
    check-cast v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    .line 53
    goto :goto_50

    .line 54
    :cond_35
    instance-of v1, v0, Landroid/widget/ScrollView;

    .line 56
    if-eqz v1, :cond_43

    .line 58
    new-instance v1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;

    .line 60
    check-cast v0, Landroid/widget/ScrollView;

    .line 62
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    .line 65
    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    .line 67
    goto :goto_50

    .line 68
    :cond_43
    instance-of v1, v0, Landroid/widget/AdapterView;

    .line 70
    if-eqz v1, :cond_51

    .line 72
    new-instance v1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;

    .line 74
    check-cast v0, Landroid/widget/AdapterView;

    .line 76
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    .line 79
    iput-object v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;

    .line 81
    :goto_50
    return-void

    .line 82
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    const-string v1, "The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper."

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw v0

    .line 90
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 92
    const-string v1, "The scrollableView attribute is must refer to an existing child of targetView."

    .line 94
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v0

    .line 98
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string v1, "The targetView attribute is must refer to an existing child."

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0

    .line 106
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    const-string v1, "The contentView attribute is must be a direct child of ScrollableViewDrawer."

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v0

    .line 114
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 116
    const-string v1, "The contentView attribute is must refer to an existing child."

    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    .line 3
    if-eqz p1, :cond_a

    .line 5
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 7
    if-eqz p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_68

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_30

    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_10

    .line 15
    goto/16 :goto_ad

    .line 17
    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 19
    if-eqz v0, :cond_26

    .line 21
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 24
    move-result v1

    .line 25
    if-eq v0, v1, :cond_26

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 29
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 31
    neg-int v3, v1

    .line 32
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 38
    goto :goto_29

    .line 39
    :cond_26
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->computeStateChanged()V

    .line 42
    :goto_29
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 44
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 47
    goto/16 :goto_ad

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 51
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 54
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 59
    move-result v0

    .line 60
    const/4 v1, -0x1

    .line 61
    if-ne v0, v1, :cond_45

    .line 63
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mActionPointerId:I

    .line 69
    move v0, v2

    .line 70
    :cond_45
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 73
    move-result v0

    .line 74
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    .line 76
    sub-float v1, v0, v1

    .line 78
    float-to-int v1, v1

    .line 79
    iget v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 81
    add-int/2addr v1, v3

    .line 82
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 85
    move-result v3

    .line 86
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result v1

    .line 90
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 96
    iput v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mLastMotionY:F

    .line 98
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->onTranslationYChange()V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 104
    goto :goto_ad

    .line 105
    :cond_68
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 110
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 112
    const/16 v1, 0x3e8

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 117
    iget v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 119
    if-eqz v0, :cond_a5

    .line 121
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 124
    move-result v1

    .line 125
    if-eq v0, v1, :cond_a5

    .line 127
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 129
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 132
    move-result v0

    .line 133
    const/high16 v1, 0x40a00000  # 5.0f

    .line 135
    cmpl-float v0, v0, v1

    .line 137
    if-lez v0, :cond_99

    .line 139
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 141
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 143
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->getVerticalRange()I

    .line 146
    move-result v3

    .line 147
    iget v4, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 149
    sub-int/2addr v3, v4

    .line 150
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 153
    goto :goto_a1

    .line 154
    :cond_99
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 156
    iget v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mYOffset:I

    .line 158
    neg-int v3, v1

    .line 159
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 162
    :goto_a1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 165
    goto :goto_a8

    .line 166
    :cond_a5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->computeStateChanged()V

    .line 169
    :goto_a8
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 171
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 174
    :goto_ad
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    move-result p1

    .line 178
    return p1
.end method

.method public openDrawer()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->openDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    return-void
.end method

.method public openDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->internalOpenDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    goto :goto_1e

    :cond_d
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 8
    new-instance p1, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;-><init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1e
    return-void
.end method

.method public resetState()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->closeDrawer()V

    .line 4
    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDragEnabled:Z

    .line 3
    return-void
.end method

.method public setDrawerListener(Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->mDrawerListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerListener;

    .line 3
    return-void
.end method
