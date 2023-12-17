.class abstract Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;
.super Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private activePointerId:I

.field private flingRunnable:Ljava/lang/Runnable;

.field private isBeingDragged:Z

.field private lastMotionY:I

.field public scroller:Landroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_a
    return-void
.end method


# virtual methods
.method public canDragView(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    iget-object v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 5
    if-eqz v2, :cond_c

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 13
    :cond_c
    iget-object v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 15
    if-nez v2, :cond_1b

    .line 17
    new-instance v2, Landroid/widget/OverScroller;

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 28
    :cond_1b
    iget-object v4, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    .line 39
    move-result v8

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    move/from16 v11, p3

    .line 44
    move/from16 v12, p4

    .line 46
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 49
    iget-object v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 51
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_47

    .line 57
    new-instance v2, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;

    .line 59
    move-object v3, p1

    .line 60
    invoke-direct {v2, p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;-><init>(Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 63
    iput-object v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 65
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 67
    invoke-static {p2, v2}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 70
    const/4 v1, 0x1

    .line 71
    return v1

    .line 72
    :cond_47
    move-object v3, p1

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 76
    const/4 v1, 0x0

    .line 77
    return v1
.end method

.method public getMaxDragOffset(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 4
    move-result p1

    .line 5
    neg-int p1, p1

    .line 6
    return p1
.end method

.method public getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->touchSlop:I

    .line 3
    if-gez v0, :cond_12

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->touchSlop:I

    .line 19
    :cond_12
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, -0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-ne v0, v1, :cond_40

    .line 29
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 31
    if-eqz v0, :cond_40

    .line 33
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 35
    if-ne v0, v3, :cond_25

    .line 37
    return v4

    .line 38
    :cond_25
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 41
    move-result v0

    .line 42
    if-ne v0, v3, :cond_2c

    .line 44
    return v4

    .line 45
    :cond_2c
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 48
    move-result v0

    .line 49
    float-to-int v0, v0

    .line 50
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->lastMotionY:I

    .line 52
    sub-int v1, v0, v1

    .line 54
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 57
    move-result v1

    .line 58
    iget v5, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->touchSlop:I

    .line 60
    if-le v1, v5, :cond_40

    .line 62
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->lastMotionY:I

    .line 64
    return v2

    .line 65
    :cond_40
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_80

    .line 71
    iput v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 73
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 76
    move-result v0

    .line 77
    float-to-int v0, v0

    .line 78
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 81
    move-result v1

    .line 82
    float-to-int v1, v1

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_60

    .line 89
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_60

    .line 95
    move p1, v2

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move p1, v4

    .line 98
    :goto_61
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 100
    if-eqz p1, :cond_80

    .line 102
    iput v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->lastMotionY:I

    .line 104
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 110
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->ensureVelocityTracker()V

    .line 113
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 115
    if-eqz p1, :cond_80

    .line 117
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_80

    .line 123
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 125
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 128
    return v2

    .line 129
    :cond_80
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 131
    if-eqz p1, :cond_87

    .line 133
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 136
    :cond_87
    return v4
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v0, v2, :cond_4e

    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v0, v4, :cond_2d

    .line 13
    const/4 p1, 0x3

    .line 14
    if-eq v0, p1, :cond_72

    .line 16
    const/4 p1, 0x6

    .line 17
    if-eq v0, p1, :cond_13

    .line 19
    goto :goto_4c

    .line 20
    :cond_13
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1b

    .line 26
    move p1, v2

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move p1, v3

    .line 29
    :goto_1c
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 32
    move-result p2

    .line 33
    iput p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 35
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 38
    move-result p1

    .line 39
    const/high16 p2, 0x3f000000  # 0.5f

    .line 41
    add-float/2addr p1, p2

    .line 42
    float-to-int p1, p1

    .line 43
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->lastMotionY:I

    .line 45
    goto :goto_4c

    .line 46
    :cond_2d
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 48
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    move-result v0

    .line 52
    if-ne v0, v1, :cond_36

    .line 54
    return v3

    .line 55
    :cond_36
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 58
    move-result v0

    .line 59
    float-to-int v0, v0

    .line 60
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->lastMotionY:I

    .line 62
    sub-int v7, v1, v0

    .line 64
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->lastMotionY:I

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    .line 69
    move-result v8

    .line 70
    const/4 v9, 0x0

    .line 71
    move-object v4, p0

    .line 72
    move-object v5, p1

    .line 73
    move-object v6, p2

    .line 74
    invoke-virtual/range {v4 .. v9}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 77
    :goto_4c
    move p1, v3

    .line 78
    goto :goto_81

    .line 79
    :cond_4e
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 81
    if-eqz v0, :cond_72

    .line 83
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 86
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 88
    const/16 v4, 0x3e8

    .line 90
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 93
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 95
    iget v4, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 97
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 100
    move-result v10

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    .line 104
    move-result v0

    .line 105
    neg-int v8, v0

    .line 106
    const/4 v9, 0x0

    .line 107
    move-object v5, p0

    .line 108
    move-object v6, p1

    .line 109
    move-object v7, p2

    .line 110
    invoke-virtual/range {v5 .. v10}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 113
    move p1, v2

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move p1, v3

    .line 116
    :goto_73
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 118
    iput v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->activePointerId:I

    .line 120
    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 122
    if-eqz p2, :cond_81

    .line 124
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 127
    const/4 p2, 0x0

    .line 128
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 130
    :cond_81
    :goto_81
    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 132
    if-eqz p2, :cond_88

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 137
    :cond_88
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 139
    if-nez p2, :cond_90

    .line 141
    if-eqz p1, :cond_8f

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    move v2, v3

    .line 145
    :cond_90
    :goto_90
    return v2
.end method

.method public final scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    sub-int v4, v0, p3

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_15

    if-lt p1, p4, :cond_15

    if-gt p1, p5, :cond_15

    .line 3
    invoke-static {p3, p4, p5}, La/b;->q(III)I

    move-result p2

    if-eq p1, p2, :cond_15

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
