.class public Lmiuix/springback/view/SpringBackLayout;
.super Landroid/view/ViewGroup;
.source "SpringBackLayout.java"

# interfaces
.implements Lm0/t;
.implements Lm0/p;
.implements Lmiuix/core/view/NestedCurrentFling;
.implements Lmiuix/core/view/ScrollStateDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/view/SpringBackLayout$OnSpringListener;
    }
.end annotation


# static fields
.field public static final ANGLE:I = 0x4

.field public static final HORIZONTAL:I = 0x1

.field private static final INVALID_ID:I = -0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_FLING_CONSUME_COUNTER:I = 0x4

.field public static final SPRING_BACK_BOTTOM:I = 0x2

.field public static final SPRING_BACK_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpringBackLayout"

.field public static final UNCHECK_ORIENTATION:I = 0x0

.field private static final VELOCITY_THRADHOLD:I = 0x7d0

.field public static final VERTICAL:I = 0x2


# instance fields
.field private consumeNestFlingCounter:I

.field private mActivePointerId:I

.field private mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

.field private mInitPaddingTop:I

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mNestedFlingInProgress:Z

.field private mNestedScrollAxes:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Lm0/r;

.field private final mNestedScrollingParentHelper:Lm0/u;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field private mOnScrollChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/core/view/ViewCompatOnScrollChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

.field private mOriginScrollOrientation:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mScrollByFling:Z

.field private mScrollOrientation:I

.field private mScrollState:I

.field private mSpringBackEnable:Z

.field private mSpringBackMode:I

.field private mSpringScroller:Lmiuix/springback/view/SpringScroller;

.field private mTarget:Landroid/view/View;

.field private mTargetId:I

.field private mTotalFlingUnconsumed:F

.field private mTotalScrollBottomUnconsumed:F

.field private mTotalScrollTopUnconsumed:F

.field private mTouchSlop:I

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    new-array v3, v2, [I

    .line 6
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    new-array v3, v2, [I

    .line 7
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 10
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 11
    new-instance v4, Lm0/u;

    invoke-direct {v4}, Lm0/u;-><init>()V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Lm0/u;

    .line 12
    invoke-static {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->obtain(Landroid/view/View;)Lm0/r;

    move-result-object v4

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 13
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 14
    sget-object v4, Lmiuix/springback/R$styleable;->SpringBackLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    sget v4, Lmiuix/springback/R$styleable;->SpringBackLayout_scrollableView:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    .line 16
    sget v0, Lmiuix/springback/R$styleable;->SpringBackLayout_scrollOrientation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 17
    sget v0, Lmiuix/springback/R$styleable;->SpringBackLayout_springBackMode:I

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    new-instance p2, Lmiuix/springback/view/SpringScroller;

    invoke-direct {p2}, Lmiuix/springback/view/SpringScroller;-><init>()V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 20
    new-instance p2, Lmiuix/springback/view/SpringBackLayoutHelper;

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    invoke-direct {p2, p0, v0}, Lmiuix/springback/view/SpringBackLayoutHelper;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 21
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->setNestedScrollingEnabled(Z)V

    .line 22
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 23
    iget p2, p1, Landroid/graphics/Point;->x:I

    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 24
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 25
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_80

    .line 26
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    :cond_80
    return-void
.end method

.method private checkHorizontalScrollStart(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    move v0, v1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v2

    .line 12
    :goto_b
    if-eqz v0, :cond_3b

    .line 14
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 41
    move-result v0

    .line 42
    if-gez v0, :cond_31

    .line 44
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 46
    sub-float/2addr v0, p1

    .line 47
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 52
    add-float/2addr v0, p1

    .line 53
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 55
    :goto_36
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 57
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 62
    :goto_3d
    return-void
.end method

.method private checkOrientation(Landroid/view/MotionEvent;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_3a

    .line 15
    if-eq v0, v3, :cond_2a

    .line 17
    if-eq v0, v2, :cond_1d

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v0, v4, :cond_2a

    .line 22
    const/4 v1, 0x6

    .line 23
    if-eq v0, v1, :cond_19

    .line 25
    goto :goto_6e

    .line 26
    :cond_19
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 29
    goto :goto_6e

    .line 30
    :cond_1d
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 32
    if-nez p1, :cond_6e

    .line 34
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 36
    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 38
    if-eqz p1, :cond_6e

    .line 40
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 42
    goto :goto_6e

    .line 43
    :cond_2a
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    .line 46
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 48
    and-int/2addr p1, v2

    .line 49
    if-eqz p1, :cond_36

    .line 51
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 54
    goto :goto_6e

    .line 55
    :cond_36
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 58
    goto :goto_6e

    .line 59
    :cond_3a
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 61
    iget v0, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 63
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 65
    iget v0, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 67
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 69
    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 71
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_54

    .line 79
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 81
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 84
    goto :goto_62

    .line 85
    :cond_54
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_60

    .line 91
    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 93
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 96
    goto :goto_62

    .line 97
    :cond_60
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 99
    :goto_62
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 101
    and-int/2addr p1, v2

    .line 102
    if-eqz p1, :cond_6b

    .line 104
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 107
    goto :goto_6e

    .line 108
    :cond_6b
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 111
    :cond_6e
    :goto_6e
    return-void
.end method

.method private checkScrollStart(I)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_7

    .line 4
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkVerticalScrollStart(I)V

    .line 7
    goto :goto_a

    .line 8
    :cond_7
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkHorizontalScrollStart(I)V

    .line 11
    :goto_a
    return-void
.end method

.method private checkVerticalScrollStart(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    move v0, v1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v2

    .line 12
    :goto_b
    if-eqz v0, :cond_3b

    .line 14
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 41
    move-result v0

    .line 42
    if-gez v0, :cond_31

    .line 44
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 46
    sub-float/2addr v0, p1

    .line 47
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 52
    add-float/2addr v0, p1

    .line 53
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 55
    :goto_36
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 57
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 62
    :goto_3d
    return-void
.end method

.method private consumeDelta(I[II)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p3, v0, :cond_7

    .line 4
    const/4 p3, 0x1

    .line 5
    aput p1, p2, p3

    .line 7
    goto :goto_a

    .line 8
    :cond_7
    const/4 p3, 0x0

    .line 9
    aput p1, p2, p3

    .line 11
    :goto_a
    return-void
.end method

.method private disallowParentInterceptTouchEvent(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    :cond_9
    return-void
.end method

.method private dispatchScrollState(I)V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 3
    if-eq v0, p1, :cond_22

    .line 5
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 7
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_22

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 25
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 27
    invoke-virtual {v3}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    .line 30
    move-result v3

    .line 31
    invoke-interface {v2, v0, p1, v3}, Lmiuix/core/view/ViewCompatOnScrollChangeListener;->onStateChanged(IIZ)V

    .line 34
    goto :goto_c

    .line 35
    :cond_22
    return-void
.end method

.method private ensureTarget()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 3
    if-nez v0, :cond_18

    .line 5
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_10

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v1, "invalid target Id"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0

    .line 25
    :cond_18
    :goto_18
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 27
    if-eqz v0, :cond_43

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_34

    .line 35
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 37
    instance-of v1, v0, Lm0/p;

    .line 39
    if-eqz v1, :cond_34

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_34

    .line 47
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x2

    .line 60
    if-eq v0, v1, :cond_42

    .line 62
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 67
    :cond_42
    return-void

    .line 68
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 70
    const-string v1, "fail to get target"

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0
.end method

.method private isHorizontalTargetScrollToTop()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 10
    return v0
.end method

.method private isTargetScrollOrientation(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method private isTargetScrollToBottom(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_18

    .line 5
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 7
    instance-of v1, p1, Landroid/widget/ListView;

    .line 9
    if-eqz v1, :cond_12

    .line 11
    check-cast p1, Landroid/widget/ListView;

    .line 13
    invoke-static {p1, v0}, Landroidx/core/widget/g;->a(Landroid/widget/ListView;I)Z

    .line 16
    move-result p1

    .line 17
    xor-int/2addr p1, v0

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 22
    move-result p1

    .line 23
    xor-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_18
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 30
    move-result p1

    .line 31
    xor-int/2addr p1, v0

    .line 32
    return p1
.end method

.method private isTargetScrollToTop(I)Z
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_1a

    .line 5
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 7
    instance-of v1, p1, Landroid/widget/ListView;

    .line 9
    if-eqz v1, :cond_13

    .line 11
    check-cast p1, Landroid/widget/ListView;

    .line 13
    invoke-static {p1, v0}, Landroidx/core/widget/g;->a(Landroid/widget/ListView;I)Z

    .line 16
    move-result p1

    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 23
    move-result p1

    .line 24
    xor-int/lit8 p1, p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 32
    move-result p1

    .line 33
    xor-int/lit8 p1, p1, 0x1

    .line 35
    return p1
.end method

.method private isVerticalTargetScrollToTop()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 3
    instance-of v1, v0, Landroid/widget/ListView;

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_10

    .line 8
    check-cast v0, Landroid/widget/ListView;

    .line 10
    invoke-static {v0, v2}, Landroidx/core/widget/g;->a(Landroid/widget/ListView;I)Z

    .line 13
    move-result v0

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_10
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 20
    move-result v0

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 23
    return v0
.end method

.method private moveTarget(FI)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p2, v1, :cond_a

    .line 5
    neg-float p1, p1

    .line 6
    float-to-int p1, p1

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 10
    goto :goto_f

    .line 11
    :cond_a
    neg-float p1, p1

    .line 12
    float-to-int p1, p1

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 16
    :goto_f
    return-void
.end method

.method private onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_f

    .line 9
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return v2

    .line 16
    :cond_f
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1c

    .line 22
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1c

    .line 28
    return v2

    .line 29
    :cond_1c
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_29

    .line 35
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_29

    .line 41
    return v2

    .line 42
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_ad

    .line 48
    const/4 v3, -0x1

    .line 49
    if-eq v1, v0, :cond_a8

    .line 51
    const/4 v4, 0x2

    .line 52
    if-eq v1, v4, :cond_42

    .line 54
    const/4 v0, 0x3

    .line 55
    if-eq v1, v0, :cond_a8

    .line 57
    const/4 v0, 0x6

    .line 58
    if-eq v1, v0, :cond_3d

    .line 60
    goto/16 :goto_cf

    .line 62
    :cond_3d
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 65
    goto/16 :goto_cf

    .line 67
    :cond_42
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 69
    const-string v4, "SpringBackLayout"

    .line 71
    if-ne v1, v3, :cond_4e

    .line 73
    const-string p1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 75
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v2

    .line 79
    :cond_4e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 82
    move-result v1

    .line 83
    if-gez v1, :cond_5a

    .line 85
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 87
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 91
    :cond_5a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 94
    move-result p1

    .line 95
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_6b

    .line 101
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6b

    .line 107
    move v2, v0

    .line 108
    :cond_6b
    if-nez v2, :cond_73

    .line 110
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_7b

    .line 116
    :cond_73
    if-eqz v2, :cond_92

    .line 118
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 120
    cmpl-float v1, p1, v1

    .line 122
    if-lez v1, :cond_92

    .line 124
    :cond_7b
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 126
    sub-float v1, p1, v1

    .line 128
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 130
    int-to-float v2, v2

    .line 131
    cmpl-float v1, v1, v2

    .line 133
    if-lez v1, :cond_cf

    .line 135
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 137
    if-nez v1, :cond_cf

    .line 139
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 141
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 144
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 146
    goto :goto_cf

    .line 147
    :cond_92
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 149
    sub-float/2addr v1, p1

    .line 150
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 152
    int-to-float v2, v2

    .line 153
    cmpl-float v1, v1, v2

    .line 155
    if-lez v1, :cond_cf

    .line 157
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 159
    if-nez v1, :cond_cf

    .line 161
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 163
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 166
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 168
    goto :goto_cf

    .line 169
    :cond_a8
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 171
    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 173
    goto :goto_cf

    .line 174
    :cond_ad
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 177
    move-result v1

    .line 178
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 183
    move-result v1

    .line 184
    if-gez v1, :cond_ba

    .line 186
    return v2

    .line 187
    :cond_ba
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 190
    move-result p1

    .line 191
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_cd

    .line 199
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 201
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 203
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 205
    goto :goto_cf

    .line 206
    :cond_cd
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 208
    :cond_cf
    :goto_cf
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 210
    return p1
.end method

.method private onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_16

    .line 12
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_16

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_16
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_21

    .line 29
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_21
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private onNestedPreScroll(I[II)V
    .registers 11

    .line 9
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_9

    move v0, v3

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    if-eqz v0, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    :goto_f
    if-eqz v0, :cond_16

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 11
    :goto_1a
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x0

    if-nez p3, :cond_74

    if-lez p1, :cond_49

    .line 12
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v0, p3, v5

    if-lez v0, :cond_49

    int-to-float v0, p1

    cmpl-float v1, v0, p3

    if-lez v1, :cond_35

    float-to-int p1, p3

    .line 13
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 14
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_3b

    :cond_35
    sub-float/2addr p3, v0

    .line 15
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 16
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 17
    :goto_3b
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 18
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_181

    :cond_49
    if-gez p1, :cond_181

    .line 19
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v0, p3

    cmpg-float v0, v0, v5

    if-gez v0, :cond_181

    int-to-float v0, p1

    neg-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5f

    float-to-int p1, p3

    .line 20
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 21
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_65

    :cond_5f
    add-float/2addr p3, v0

    .line 22
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 23
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 24
    :goto_65
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 25
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_181

    :cond_74
    if-ne v4, v2, :cond_79

    .line 26
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_7b

    :cond_79
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    :goto_7b
    if-lez p1, :cond_f0

    .line 27
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v6, v2, v5

    if-lez v6, :cond_f0

    const/high16 v6, 0x44fa0000  # 2000.0f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_b9

    .line 28
    invoke-virtual {p0, v2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p1

    cmpl-float v1, v0, p3

    if-lez v1, :cond_99

    float-to-int p1, p3

    .line 29
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 30
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_b1

    .line 31
    :cond_99
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    sub-float v5, p3, v0

    .line 32
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    .line 33
    invoke-virtual {p0, v5, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 34
    :goto_b1
    invoke-direct {p0, v5, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 35
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_181

    .line 36
    :cond_b9
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v2, :cond_c2

    .line 37
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 38
    invoke-direct {p0, p3, v4, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 39
    :cond_c2
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_e9

    .line 40
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result p3

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Landroid/view/View;->scrollTo(II)V

    int-to-float p3, v0

    .line 41
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_eb

    .line 42
    :cond_e9
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 43
    :goto_eb
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    goto/16 :goto_181

    :cond_f0
    if-gez p1, :cond_166

    .line 44
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v6, v2

    cmpg-float v6, v6, v5

    if-gez v6, :cond_166

    const/high16 v6, -0x3b060000  # -2000.0f

    cmpg-float v6, p3, v6

    if-gez v6, :cond_130

    .line 45
    invoke-virtual {p0, v2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p1

    neg-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_110

    float-to-int p1, p3

    .line 46
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 47
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_128

    .line 48
    :cond_110
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    add-float v5, p3, v0

    .line 49
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    .line 50
    invoke-virtual {p0, v5, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 51
    :goto_128
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    neg-float p1, v5

    .line 52
    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_181

    .line 53
    :cond_130
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v2, :cond_139

    .line 54
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 55
    invoke-direct {p0, p3, v4, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 56
    :cond_139
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_160

    .line 57
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result p3

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Landroid/view/View;->scrollTo(II)V

    int-to-float p3, v0

    .line 58
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_162

    .line 59
    :cond_160
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 60
    :goto_162
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    goto :goto_181

    :cond_166
    if-eqz p1, :cond_181

    .line 61
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float p3, p3, v5

    if-eqz p3, :cond_174

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float p3, p3, v5

    if-nez p3, :cond_181

    :cond_174
    iget-boolean p3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz p3, :cond_181

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-nez p3, :cond_181

    .line 62
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    :cond_181
    :goto_181
    return-void
.end method

.method private onScrollDownEvent(Landroid/view/MotionEvent;II)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_d0

    .line 5
    const-string v2, "SpringBackLayout"

    .line 7
    if-eq p2, v0, :cond_b5

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq p2, v3, :cond_69

    .line 12
    const/4 v4, 0x3

    .line 13
    if-eq p2, v4, :cond_b5

    .line 15
    const/4 v4, 0x5

    .line 16
    if-eq p2, v4, :cond_1b

    .line 18
    const/4 p3, 0x6

    .line 19
    if-eq p2, p3, :cond_16

    .line 21
    goto/16 :goto_d9

    .line 23
    :cond_16
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 26
    goto/16 :goto_d9

    .line 28
    :cond_1b
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 33
    move-result p2

    .line 34
    if-gez p2, :cond_29

    .line 36
    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 38
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v1

    .line 42
    :cond_29
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 44
    if-ne p3, v3, :cond_48

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 49
    move-result p2

    .line 50
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 52
    sub-float/2addr p2, p3

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 56
    move-result p3

    .line 57
    if-gez p3, :cond_3e

    .line 59
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1

    .line 63
    :cond_3e
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    move-result v1

    .line 67
    sub-float/2addr v1, p2

    .line 68
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 70
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 72
    goto :goto_62

    .line 73
    :cond_48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 76
    move-result p2

    .line 77
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 79
    sub-float/2addr p2, p3

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 83
    move-result p3

    .line 84
    if-gez p3, :cond_59

    .line 86
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 90
    :cond_59
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 93
    move-result v1

    .line 94
    sub-float/2addr v1, p2

    .line 95
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 97
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 99
    :goto_62
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 105
    goto :goto_d9

    .line 106
    :cond_69
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 111
    move-result p2

    .line 112
    if-gez p2, :cond_77

    .line 114
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 120
    :cond_77
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 122
    if-eqz v2, :cond_d9

    .line 124
    if-ne p3, v3, :cond_91

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 129
    move-result p1

    .line 130
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 132
    sub-float p2, p1, p2

    .line 134
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 137
    move-result p2

    .line 138
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 140
    sub-float/2addr p1, v2

    .line 141
    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 144
    move-result p1

    .line 145
    goto :goto_a4

    .line 146
    :cond_91
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 149
    move-result p1

    .line 150
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 152
    sub-float p2, p1, p2

    .line 154
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 157
    move-result p2

    .line 158
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 160
    sub-float/2addr p1, v2

    .line 161
    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 164
    move-result p1

    .line 165
    :goto_a4
    mul-float/2addr p1, p2

    .line 166
    const/4 p2, 0x0

    .line 167
    cmpl-float v2, p1, p2

    .line 169
    if-lez v2, :cond_b1

    .line 171
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 174
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 177
    goto :goto_d9

    .line 178
    :cond_b1
    invoke-direct {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 181
    return v1

    .line 182
    :cond_b5
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 187
    move-result p1

    .line 188
    if-gez p1, :cond_c3

    .line 190
    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 192
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v1

    .line 196
    :cond_c3
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 198
    if-eqz p1, :cond_cc

    .line 200
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 202
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 205
    :cond_cc
    const/4 p1, -0x1

    .line 206
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 208
    return v1

    .line 209
    :cond_d0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 212
    move-result p1

    .line 213
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 215
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 218
    :cond_d9
    :goto_d9
    return v0
.end method

.method private onScrollEvent(Landroid/view/MotionEvent;II)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_c8

    .line 5
    const-string v2, "SpringBackLayout"

    .line 7
    if-eq p2, v0, :cond_ad

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq p2, v3, :cond_6a

    .line 12
    const/4 v4, 0x3

    .line 13
    if-eq p2, v4, :cond_69

    .line 15
    const/4 v4, 0x5

    .line 16
    if-eq p2, v4, :cond_1b

    .line 18
    const/4 p3, 0x6

    .line 19
    if-eq p2, p3, :cond_16

    .line 21
    goto/16 :goto_d1

    .line 23
    :cond_16
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 26
    goto/16 :goto_d1

    .line 28
    :cond_1b
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 33
    move-result p2

    .line 34
    if-gez p2, :cond_29

    .line 36
    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 38
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v1

    .line 42
    :cond_29
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 44
    if-ne p3, v3, :cond_48

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 49
    move-result p2

    .line 50
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 52
    sub-float/2addr p2, p3

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 56
    move-result p3

    .line 57
    if-gez p3, :cond_3e

    .line 59
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1

    .line 63
    :cond_3e
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    move-result v1

    .line 67
    sub-float/2addr v1, p2

    .line 68
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 70
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 72
    goto :goto_62

    .line 73
    :cond_48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 76
    move-result p2

    .line 77
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 79
    sub-float/2addr p2, p3

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 83
    move-result p3

    .line 84
    if-gez p3, :cond_59

    .line 86
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 90
    :cond_59
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 93
    move-result v1

    .line 94
    sub-float/2addr v1, p2

    .line 95
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 97
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 99
    :goto_62
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 105
    goto :goto_d1

    .line 106
    :cond_69
    return v1

    .line 107
    :cond_6a
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 112
    move-result p2

    .line 113
    if-gez p2, :cond_78

    .line 115
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 117
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v1

    .line 121
    :cond_78
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 123
    if-eqz v1, :cond_d1

    .line 125
    if-ne p3, v3, :cond_92

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 130
    move-result p1

    .line 131
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 133
    sub-float p2, p1, p2

    .line 135
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 138
    move-result p2

    .line 139
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 141
    sub-float/2addr p1, v1

    .line 142
    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 145
    move-result p1

    .line 146
    goto :goto_a5

    .line 147
    :cond_92
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 150
    move-result p1

    .line 151
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 153
    sub-float p2, p1, p2

    .line 155
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 158
    move-result p2

    .line 159
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 161
    sub-float/2addr p1, v1

    .line 162
    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 165
    move-result p1

    .line 166
    :goto_a5
    mul-float/2addr p1, p2

    .line 167
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 170
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 173
    goto :goto_d1

    .line 174
    :cond_ad
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 176
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 179
    move-result p1

    .line 180
    if-gez p1, :cond_bb

    .line 182
    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 184
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v1

    .line 188
    :cond_bb
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 190
    if-eqz p1, :cond_c4

    .line 192
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 194
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 197
    :cond_c4
    const/4 p1, -0x1

    .line 198
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 200
    return v1

    .line 201
    :cond_c8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 204
    move-result p1

    .line 205
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 207
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 210
    :cond_d1
    :goto_d1
    return v0
.end method

.method private onScrollUpEvent(Landroid/view/MotionEvent;II)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_cf

    .line 5
    const-string v2, "SpringBackLayout"

    .line 7
    if-eq p2, v0, :cond_b4

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq p2, v3, :cond_69

    .line 12
    const/4 v4, 0x3

    .line 13
    if-eq p2, v4, :cond_b4

    .line 15
    const/4 v4, 0x5

    .line 16
    if-eq p2, v4, :cond_1b

    .line 18
    const/4 p3, 0x6

    .line 19
    if-eq p2, p3, :cond_16

    .line 21
    goto/16 :goto_d8

    .line 23
    :cond_16
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 26
    goto/16 :goto_d8

    .line 28
    :cond_1b
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 33
    move-result p2

    .line 34
    if-gez p2, :cond_29

    .line 36
    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 38
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v1

    .line 42
    :cond_29
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 44
    if-ne p3, v3, :cond_48

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 49
    move-result p2

    .line 50
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 52
    sub-float/2addr p2, p3

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 56
    move-result p3

    .line 57
    if-gez p3, :cond_3e

    .line 59
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1

    .line 63
    :cond_3e
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    move-result v1

    .line 67
    sub-float/2addr v1, p2

    .line 68
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 70
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 72
    goto :goto_62

    .line 73
    :cond_48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 76
    move-result p2

    .line 77
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 79
    sub-float/2addr p2, p3

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 83
    move-result p3

    .line 84
    if-gez p3, :cond_59

    .line 86
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 90
    :cond_59
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 93
    move-result v1

    .line 94
    sub-float/2addr v1, p2

    .line 95
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 97
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 99
    :goto_62
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 105
    goto :goto_d8

    .line 106
    :cond_69
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 111
    move-result p2

    .line 112
    if-gez p2, :cond_77

    .line 114
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 120
    :cond_77
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 122
    if-eqz v2, :cond_d8

    .line 124
    if-ne p3, v3, :cond_90

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 129
    move-result p1

    .line 130
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 132
    sub-float/2addr p2, p1

    .line 133
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 136
    move-result p2

    .line 137
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 139
    sub-float/2addr v2, p1

    .line 140
    invoke-virtual {p0, v2, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 143
    move-result p1

    .line 144
    goto :goto_a2

    .line 145
    :cond_90
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 148
    move-result p1

    .line 149
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 151
    sub-float/2addr p2, p1

    .line 152
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 155
    move-result p2

    .line 156
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 158
    sub-float/2addr v2, p1

    .line 159
    invoke-virtual {p0, v2, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 162
    move-result p1

    .line 163
    :goto_a2
    mul-float/2addr p1, p2

    .line 164
    const/4 p2, 0x0

    .line 165
    cmpl-float v2, p1, p2

    .line 167
    if-lez v2, :cond_b0

    .line 169
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 172
    neg-float p1, p1

    .line 173
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 176
    goto :goto_d8

    .line 177
    :cond_b0
    invoke-direct {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 180
    return v1

    .line 181
    :cond_b4
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 183
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 186
    move-result p1

    .line 187
    if-gez p1, :cond_c2

    .line 189
    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 191
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v1

    .line 195
    :cond_c2
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 197
    if-eqz p1, :cond_cb

    .line 199
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 201
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 204
    :cond_cb
    const/4 p1, -0x1

    .line 205
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 207
    return v1

    .line 208
    :cond_cf
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 211
    move-result p1

    .line 212
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 214
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 217
    :cond_d8
    :goto_d8
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 11
    if-ne v1, v2, :cond_17

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 24
    :cond_17
    return-void
.end method

.method private onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_f

    .line 9
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return v2

    .line 16
    :cond_f
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1c

    .line 22
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1c

    .line 28
    return v2

    .line 29
    :cond_1c
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_29

    .line 35
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_29

    .line 41
    return v2

    .line 42
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 45
    move-result v1

    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v1, :cond_ad

    .line 49
    const/4 v4, -0x1

    .line 50
    if-eq v1, v3, :cond_a8

    .line 52
    if-eq v1, v0, :cond_42

    .line 54
    const/4 v0, 0x3

    .line 55
    if-eq v1, v0, :cond_a8

    .line 57
    const/4 v0, 0x6

    .line 58
    if-eq v1, v0, :cond_3d

    .line 60
    goto/16 :goto_cf

    .line 62
    :cond_3d
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 65
    goto/16 :goto_cf

    .line 67
    :cond_42
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 69
    const-string v5, "SpringBackLayout"

    .line 71
    if-ne v1, v4, :cond_4e

    .line 73
    const-string p1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 75
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v2

    .line 79
    :cond_4e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 82
    move-result v1

    .line 83
    if-gez v1, :cond_5a

    .line 85
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 87
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 91
    :cond_5a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 94
    move-result p1

    .line 95
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_6b

    .line 101
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6b

    .line 107
    move v2, v3

    .line 108
    :cond_6b
    if-nez v2, :cond_73

    .line 110
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_7b

    .line 116
    :cond_73
    if-eqz v2, :cond_92

    .line 118
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 120
    cmpl-float v0, p1, v0

    .line 122
    if-lez v0, :cond_92

    .line 124
    :cond_7b
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 126
    sub-float v0, p1, v0

    .line 128
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 130
    int-to-float v1, v1

    .line 131
    cmpl-float v0, v0, v1

    .line 133
    if-lez v0, :cond_cf

    .line 135
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 137
    if-nez v0, :cond_cf

    .line 139
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 141
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 144
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 146
    goto :goto_cf

    .line 147
    :cond_92
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 149
    sub-float/2addr v0, p1

    .line 150
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 152
    int-to-float v1, v1

    .line 153
    cmpl-float v0, v0, v1

    .line 155
    if-lez v0, :cond_cf

    .line 157
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 159
    if-nez v0, :cond_cf

    .line 161
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 163
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 166
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 168
    goto :goto_cf

    .line 169
    :cond_a8
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 171
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 173
    goto :goto_cf

    .line 174
    :cond_ad
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 177
    move-result v0

    .line 178
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 183
    move-result v0

    .line 184
    if-gez v0, :cond_ba

    .line 186
    return v2

    .line 187
    :cond_ba
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 190
    move-result p1

    .line 191
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_cd

    .line 199
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 201
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 203
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 205
    goto :goto_cf

    .line 206
    :cond_cd
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 208
    :cond_cf
    :goto_cf
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 210
    return p1
.end method

.method private onVerticalTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_16

    .line 12
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_16

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_16
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_21

    .line 29
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_21
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private springBack(FIZ)V
    .registers 14

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lmiuix/springback/view/SpringBackLayout$OnSpringListener;->onSpringBack()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 3
    :cond_b
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 6
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lmiuix/springback/view/SpringScroller;->scrollByFling(FFFFFIZ)V

    if-nez v0, :cond_32

    if-nez v1, :cond_32

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_32

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_36

    :cond_32
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :goto_36
    if-eqz p3, :cond_3b

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_3b
    return-void
.end method

.method private springBack(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    return-void
.end method

.method private stopNestedFlingScroll(I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 4
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 6
    if-eqz v1, :cond_1e

    .line 8
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 10
    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1a

    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne p1, v1, :cond_15

    .line 19
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 24
    :goto_17
    invoke-direct {p0, v1, p1, v0}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 34
    :goto_21
    return-void
.end method

.method private supportBottomSpringBackMode()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private supportTopSpringBackMode()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method


# virtual methods
.method public addOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public computeScroll()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 4
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 6
    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_50

    .line 12
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 14
    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 20
    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 27
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 29
    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_26

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 38
    goto :goto_50

    .line 39
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    if-nez v0, :cond_33

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4d

    .line 52
    :cond_33
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 54
    const/4 v2, 0x2

    .line 55
    if-eq v0, v2, :cond_4d

    .line 57
    const-string v0, "SpringBackLayout"

    .line 59
    const-string v3, "Scroll stop but state is not correct."

    .line 61
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    .line 66
    const/4 v3, 0x1

    .line 67
    if-ne v0, v2, :cond_45

    .line 69
    move v1, v3

    .line 70
    :cond_45
    if-eqz v1, :cond_48

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v2, v3

    .line 74
    :goto_49
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 77
    goto :goto_50

    .line 78
    :cond_4d
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 81
    :cond_50
    :goto_50
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm0/r;->dispatchNestedFling(FFZ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1, p2}, Lm0/r;->dispatchNestedPreFling(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lm0/r;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 16

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lm0/r;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lm0/r;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_17

    .line 9
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 11
    if-ne v0, v1, :cond_17

    .line 13
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->isTouchInTarget(Landroid/view/MotionEvent;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 24
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 31
    move-result p1

    .line 32
    if-ne p1, v2, :cond_29

    .line 34
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 36
    if-eq p1, v1, :cond_29

    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 42
    :cond_29
    return v0
.end method

.method public getSpringBackMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 3
    return v0
.end method

.method public getSpringBackRange(I)I
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_6

    .line 4
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 9
    :goto_8
    return p1
.end method

.method public getTarget()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r;->hasNestedScrollingParent(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasSpringListener()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    .line 3
    if-eqz v0, :cond_6

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

.method public internalRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0}, Lm0/r;->isNestedScrollingEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public obtainDampingDistance(FI)F
    .registers 9

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 6
    move-result p1

    .line 7
    float-to-double v0, p1

    .line 8
    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 13
    move-result-wide v4

    .line 14
    div-double/2addr v4, v2

    .line 15
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 20
    move-result-wide v2

    .line 21
    sub-double/2addr v4, v2

    .line 22
    add-double/2addr v4, v0

    .line 23
    double-to-float p1, v4

    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr p1, p2

    .line 26
    return p1
.end method

.method public obtainMaxSpringBackDistance(I)F
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->getSpringBackRange(I)I

    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    invoke-virtual {p0, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainDampingDistance(FI)F

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public obtainSpringBackDistance(FI)F
    .registers 4

    .line 1
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->getSpringBackRange(I)I

    .line 4
    move-result p2

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result p1

    .line 9
    int-to-float v0, p2

    .line 10
    div-float/2addr p1, v0

    .line 11
    const/high16 v0, 0x3f800000  # 1.0f

    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainDampingDistance(FI)F

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public obtainTouchDistance(FFI)F
    .registers 10

    .line 1
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->getSpringBackRange(I)I

    .line 4
    move-result p3

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result v0

    .line 9
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 12
    move-result v1

    .line 13
    cmpg-float v0, v0, v1

    .line 15
    if-gez v0, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move p1, p2

    .line 19
    :goto_12
    int-to-double v0, p3

    .line 20
    const-wide v2, 0x3fe5555555555555L  # 0.6666666666666666

    .line 25
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 28
    move-result-wide v2

    .line 29
    int-to-float p2, p3

    .line 30
    const/high16 p3, 0x40400000  # 3.0f

    .line 32
    mul-float/2addr p1, p3

    .line 33
    sub-float/2addr p2, p1

    .line 34
    float-to-double p1, p2

    .line 35
    const-wide v4, 0x3fd5555555555555L  # 0.3333333333333333

    .line 40
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 43
    move-result-wide p1

    .line 44
    mul-double/2addr p1, v2

    .line 45
    sub-double/2addr v0, p1

    .line 46
    double-to-float p1, v0

    .line 47
    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 11
    move-result-object p1

    .line 12
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 14
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 16
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 18
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 20
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitPaddingTop:I

    .line 10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_9d

    .line 13
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 15
    if-nez v0, :cond_9d

    .line 17
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 19
    if-eqz v0, :cond_16

    .line 21
    goto/16 :goto_9d

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    return v1

    .line 32
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 38
    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_32

    .line 44
    if-nez v0, :cond_32

    .line 46
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 48
    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 51
    :cond_32
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3f

    .line 57
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3f

    .line 63
    return v1

    .line 64
    :cond_3f
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 66
    and-int/lit8 v2, v0, 0x4

    .line 68
    const/4 v3, 0x2

    .line 69
    const/4 v4, 0x1

    .line 70
    if-eqz v2, :cond_85

    .line 72
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 75
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 78
    move-result v0

    .line 79
    const/4 v2, 0x0

    .line 80
    if-eqz v0, :cond_60

    .line 82
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 84
    and-int/2addr v0, v4

    .line 85
    if-eqz v0, :cond_60

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    cmpl-float v0, v0, v2

    .line 94
    if-nez v0, :cond_60

    .line 96
    return v1

    .line 97
    :cond_60
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_75

    .line 103
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 105
    and-int/2addr v0, v3

    .line 106
    if-eqz v0, :cond_75

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 111
    move-result v0

    .line 112
    int-to-float v0, v0

    .line 113
    cmpl-float v0, v0, v2

    .line 115
    if-nez v0, :cond_75

    .line 117
    return v1

    .line 118
    :cond_75
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_81

    .line 124
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_87

    .line 130
    :cond_81
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    .line 133
    goto :goto_87

    .line 134
    :cond_85
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 136
    :cond_87
    :goto_87
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_92

    .line 142
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 145
    move-result p1

    .line 146
    return p1

    .line 147
    :cond_92
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_9d

    .line 153
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 156
    move-result p1

    .line 157
    return p1

    .line 158
    :cond_9d
    :goto_9d
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result p1

    .line 7
    const/16 p2, 0x8

    .line 9
    if-eq p1, p2, :cond_25

    .line 11
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    move-result p1

    .line 17
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result p2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    move-result p3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 30
    move-result p4

    .line 31
    iget-object p5, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 33
    add-int/2addr p1, p3

    .line 34
    add-int/2addr p2, p4

    .line 35
    invoke-virtual {p5, p3, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 38
    :cond_25
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->ensureTarget()V

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 14
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 17
    const/high16 v2, 0x40000000  # 2.0f

    .line 19
    if-nez v0, :cond_25

    .line 21
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    move-result p1

    .line 36
    add-int/2addr p1, v0

    .line 37
    goto :goto_44

    .line 38
    :cond_25
    if-ne v0, v2, :cond_2c

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 43
    move-result p1

    .line 44
    goto :goto_44

    .line 45
    :cond_2c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 48
    move-result p1

    .line 49
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 58
    move-result v3

    .line 59
    add-int/2addr v3, v0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 63
    move-result v0

    .line 64
    add-int/2addr v0, v3

    .line 65
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 68
    move-result p1

    .line 69
    :goto_44
    if-nez v1, :cond_57

    .line 71
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 76
    move-result p2

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 80
    move-result v0

    .line 81
    add-int/2addr v0, p2

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 85
    move-result p2

    .line 86
    add-int/2addr p2, v0

    .line 87
    goto :goto_76

    .line 88
    :cond_57
    if-ne v1, v2, :cond_5e

    .line 90
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 93
    move-result p2

    .line 94
    goto :goto_76

    .line 95
    :cond_5e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 98
    move-result p2

    .line 99
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 104
    move-result v0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 108
    move-result v1

    .line 109
    add-int/2addr v1, v0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 113
    move-result v0

    .line 114
    add-int/2addr v0, v1

    .line 115
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 118
    move-result p2

    .line 119
    :goto_76
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method public onNestedCurrentFling(FF)Z
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 3
    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedFling(FFZ)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedPreFling(FF)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 13

    .line 1
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p1, :cond_10

    .line 2
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 3
    invoke-direct {p0, p3, p4, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(I[II)V

    goto :goto_10

    .line 4
    :cond_d
    invoke-direct {p0, p2, p4, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(I[II)V

    .line 5
    :cond_10
    :goto_10
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    const/4 v0, 0x0

    .line 6
    aget v1, p4, v0

    sub-int v2, p2, v1

    const/4 p2, 0x1

    aget v1, p4, p2

    sub-int v3, p3, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedPreScroll(II[I[II)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 7
    aget p3, p4, v0

    aget p5, p1, v0

    add-int/2addr p3, p5

    aput p3, p4, v0

    .line 8
    aget p3, p4, p2

    aget p1, p1, p2

    add-int/2addr p3, p1

    aput p3, p4, p2

    :cond_34
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 14

    .line 53
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15

    .line 52
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 23

    move-object v8, p0

    .line 1
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v0, v10, :cond_a

    move v12, v11

    goto :goto_b

    :cond_a
    move v12, v9

    :goto_b
    if-eqz v12, :cond_10

    move/from16 v13, p3

    goto :goto_12

    :cond_10
    move/from16 v13, p2

    :goto_12
    if-eqz v12, :cond_17

    .line 2
    aget v0, p7, v11

    goto :goto_19

    :cond_17
    aget v0, p7, v9

    :goto_19
    move v14, v0

    .line 3
    iget-object v5, v8, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 4
    iget-boolean v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_31

    return-void

    :cond_31
    if-eqz v12, :cond_36

    .line 5
    aget v0, p7, v11

    goto :goto_38

    :cond_36
    aget v0, p7, v9

    :goto_38
    sub-int/2addr v0, v14

    if-eqz v12, :cond_3e

    sub-int v0, p5, v0

    goto :goto_40

    :cond_3e
    sub-int v0, p4, v0

    :goto_40
    if-eqz v0, :cond_43

    move v9, v0

    :cond_43
    if-eqz v12, :cond_47

    move v1, v10

    goto :goto_48

    :cond_47
    move v1, v11

    :goto_48
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gez v9, :cond_ea

    .line 6
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 7
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v4

    if-eqz v4, :cond_ea

    if-eqz p6, :cond_c5

    .line 8
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v4

    .line 9
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_b1

    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_6b

    goto :goto_b1

    .line 10
    :cond_6b
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_72

    return-void

    .line 11
    :cond_72
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v4, v3

    .line 12
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v3, v2, :cond_187

    .line 13
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_8f

    .line 14
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v0, v4

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 15
    aget v0, p7, v11

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p7, v11

    goto :goto_9e

    .line 16
    :cond_8f
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 17
    aget v2, p7, v11

    add-int/2addr v2, v0

    aput v2, p7, v11

    .line 18
    :goto_9e
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 19
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 20
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v11

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto/16 :goto_187

    .line 21
    :cond_b1
    :goto_b1
    iput-boolean v11, v8, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_c0

    neg-int v0, v9

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_c0

    .line 22
    iget-object v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0, v9}, Lmiuix/springback/view/SpringScroller;->setFirstStep(I)V

    .line 23
    :cond_c0
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_187

    .line 24
    :cond_c5
    iget-object v2, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 25
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 26
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 27
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 28
    aget v1, p7, v11

    add-int/2addr v1, v0

    aput v1, p7, v11

    goto/16 :goto_187

    :cond_ea
    if-lez v9, :cond_187

    .line 29
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v4

    if-eqz v4, :cond_187

    .line 30
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v4

    if-eqz v4, :cond_187

    if-eqz p6, :cond_163

    .line 31
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v4

    .line 32
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_151

    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_10b

    goto :goto_151

    .line 33
    :cond_10b
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_112

    return-void

    .line 34
    :cond_112
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v4, v3

    .line 35
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v3, v2, :cond_187

    .line 36
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_12f

    .line 37
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v0, v4

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 38
    aget v0, p7, v11

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p7, v11

    goto :goto_13e

    .line 39
    :cond_12f
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 40
    aget v2, p7, v11

    add-int/2addr v2, v0

    aput v2, p7, v11

    .line 41
    :goto_13e
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 42
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 43
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v11

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_187

    .line 44
    :cond_151
    :goto_151
    iput-boolean v11, v8, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_15f

    int-to-float v0, v9

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_15f

    .line 45
    iget-object v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0, v9}, Lmiuix/springback/view/SpringScroller;->setFirstStep(I)V

    .line 46
    :cond_15f
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_187

    .line 47
    :cond_163
    iget-object v2, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 48
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 49
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 50
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    neg-float v2, v2

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 51
    aget v1, p7, v11

    add-int/2addr v1, v0

    aput v1, p7, v11

    :cond_187
    :goto_187
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 20
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Lm0/u;

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p3, p2}, Lm0/u;->a(II)V

    and-int/lit8 p1, p3, 0x2

    .line 22
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_82

    .line 2
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_d

    move v0, v3

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    if-eqz v0, :cond_19

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    :goto_1d
    int-to-float v0, v0

    const/4 v4, 0x0

    if-eqz p4, :cond_3f

    cmpl-float p4, v0, v4

    if-nez p4, :cond_28

    .line 4
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    goto :goto_3a

    .line 5
    :cond_28
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 6
    :goto_3a
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 7
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_77

    :cond_3f
    cmpl-float p4, v0, v4

    if-nez p4, :cond_48

    .line 8
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 9
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_75

    :cond_48
    cmpg-float p4, v0, v4

    if-gez p4, :cond_61

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 11
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_75

    .line 12
    :cond_61
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 14
    :goto_75
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 15
    :goto_77
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 16
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 17
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 18
    iget-object p4, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p4}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 19
    :cond_82
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 13

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 4
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1f

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 23
    move-object v3, p0

    .line 24
    move v4, p1

    .line 25
    move v5, p2

    .line 26
    move v6, p3

    .line 27
    move v7, p4

    .line 28
    invoke-interface/range {v2 .. v7}, Lmiuix/core/view/ViewCompatOnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    .line 31
    goto :goto_9

    .line 32
    :cond_1f
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 9

    .line 1
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    move p2, v0

    .line 2
    :goto_e
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p2, v3

    if-nez p2, :cond_14

    return v1

    .line 3
    :cond_14
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p2, :cond_39

    .line 4
    invoke-virtual {p0, p1, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1f

    return v1

    :cond_1f
    if-eqz v2, :cond_26

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    goto :goto_2a

    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    :goto_2a
    int-to-float p1, p1

    if-eqz p4, :cond_39

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_39

    .line 6
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of p1, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_39

    return v1

    .line 7
    :cond_39
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {p1, p3, p4}, Lm0/r;->startNestedScroll(II)Z

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Lm0/u;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p2, v0, :cond_9

    .line 7
    iput v1, p1, Lm0/u;->b:I

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iput v1, p1, Lm0/u;->a:I

    .line 12
    :goto_b
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->stopNestedScroll(I)V

    .line 15
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 17
    if-nez p1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    .line 22
    const/4 p2, 0x2

    .line 23
    if-ne p1, p2, :cond_1a

    .line 25
    move p1, v0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move p1, v1

    .line 28
    :goto_1b
    if-eqz p1, :cond_1e

    .line 30
    move v0, p2

    .line 31
    :cond_1e
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 33
    if-eqz p2, :cond_45

    .line 35
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 37
    if-eqz p1, :cond_2b

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 42
    move-result p1

    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 47
    move-result p1

    .line 48
    :goto_2f
    int-to-float p1, p1

    .line 49
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez p2, :cond_3d

    .line 54
    cmpl-float p2, p1, v1

    .line 56
    if-eqz p2, :cond_3d

    .line 58
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 61
    goto :goto_4c

    .line 62
    :cond_3d
    cmpl-float p1, p1, v1

    .line 64
    if-eqz p1, :cond_4c

    .line 66
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    .line 69
    goto :goto_4c

    .line 70
    :cond_45
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 72
    if-eqz p1, :cond_4c

    .line 74
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    .line 77
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_44

    .line 12
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 14
    if-nez v1, :cond_44

    .line 16
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 18
    if-eqz v1, :cond_14

    .line 20
    goto :goto_44

    .line 21
    :cond_14
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1d

    .line 29
    return v2

    .line 30
    :cond_1d
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 32
    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2c

    .line 38
    if-nez v0, :cond_2c

    .line 40
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 42
    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 45
    :cond_2c
    const/4 v0, 0x2

    .line 46
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_38

    .line 52
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onVerticalTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_44

    .line 64
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_44
    :goto_44
    return v2
.end method

.method public removeOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 9
    if-nez v0, :cond_d

    .line 11
    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public requestDisallowParentInterceptTouchEvent(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    :goto_7
    if-eqz v0, :cond_18

    .line 10
    instance-of v1, v0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    if-eqz v1, :cond_13

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    .line 17
    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->internalRequestDisallowInterceptTouchEvent(Z)V

    .line 20
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_7

    .line 25
    :cond_18
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 6
    if-eqz v0, :cond_16

    .line 8
    instance-of v1, v0, Lm0/p;

    .line 10
    if-eqz v1, :cond_16

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 15
    move-result v0

    .line 16
    if-eq p1, v0, :cond_16

    .line 18
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 23
    :cond_16
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r;->setNestedScrollingEnabled(Z)V

    .line 6
    return-void
.end method

.method public setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    .line 3
    return-void
.end method

.method public setScrollOrientation(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 3
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 5
    iput p1, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    .line 7
    return-void
.end method

.method public setSpringBackEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 3
    return-void
.end method

.method public setSpringBackMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 3
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 3
    instance-of v0, p1, Lm0/p;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_12

    .line 13
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 19
    :cond_12
    return-void
.end method

.method public smoothScrollTo(II)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 4
    move-result v0

    .line 5
    sub-int v0, p1, v0

    .line 7
    if-nez v0, :cond_10

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 12
    move-result v0

    .line 13
    sub-int v0, p2, v0

    .line 15
    if-eqz v0, :cond_30

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 19
    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 22
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 27
    move-result v0

    .line 28
    int-to-float v2, v0

    .line 29
    int-to-float v3, p1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 33
    move-result p1

    .line 34
    int-to-float v4, p1

    .line 35
    int-to-float v5, p2

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    invoke-virtual/range {v1 .. v8}, Lmiuix/springback/view/SpringScroller;->scrollByFling(FFFFFIZ)V

    .line 42
    const/4 p1, 0x2

    .line 43
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 49
    :cond_30
    return-void
.end method

.method public springBackEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 3
    return v0
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1, p2}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0}, Lm0/r;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method
