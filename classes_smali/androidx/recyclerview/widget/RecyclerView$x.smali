.class public abstract Landroidx/recyclerview/widget/RecyclerView$x;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$x$b;,
        Landroidx/recyclerview/widget/RecyclerView$x$a;
    }
.end annotation


# instance fields
.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$x$a;

    .line 9
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;-><init>()V

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    .line 14
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 11
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$x$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    .line 18
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object p1

    .line 22
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v0, "RecyclerView"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    return-object v0
.end method

.method public getTargetPosition()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 3
    return v0
.end method

.method public instantScrollToPosition(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 6
    return-void
.end method

.method public isPendingInitialRun()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    .line 3
    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    .line 3
    return v0
.end method

.method public normalize(Landroid/graphics/PointF;)V
    .registers 4

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 3
    mul-float/2addr v0, v0

    .line 4
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 6
    mul-float/2addr v1, v1

    .line 7
    add-float/2addr v1, v0

    .line 8
    float-to-double v0, v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 12
    move-result-wide v0

    .line 13
    double-to-float v0, v0

    .line 14
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 16
    div-float/2addr v1, v0

    .line 17
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 19
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 21
    div-float/2addr v1, v0

    .line 22
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 24
    return-void
.end method

.method public onAnimation(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_9

    .line 8
    if-nez v0, :cond_c

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 13
    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_3d

    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    .line 20
    if-nez v1, :cond_3d

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 24
    if-eqz v1, :cond_3d

    .line 26
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 28
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3d

    .line 34
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 36
    const/4 v4, 0x0

    .line 37
    cmpl-float v5, v3, v4

    .line 39
    if-nez v5, :cond_2e

    .line 41
    iget v5, v1, Landroid/graphics/PointF;->y:F

    .line 43
    cmpl-float v4, v5, v4

    .line 45
    if-eqz v4, :cond_3d

    .line 47
    :cond_2e
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 50
    move-result v3

    .line 51
    float-to-int v3, v3

    .line 52
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 54
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 62
    :cond_3d
    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    .line 65
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    .line 67
    if-eqz v3, :cond_67

    .line 69
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->getChildPosition(Landroid/view/View;)I

    .line 72
    move-result v3

    .line 73
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 75
    if-ne v3, v4, :cond_5e

    .line 77
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    .line 79
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 81
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    .line 83
    invoke-virtual {p0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V

    .line 86
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    .line 88
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 94
    goto :goto_67

    .line 95
    :cond_5e
    const-string v3, "RecyclerView"

    .line 97
    const-string v4, "Passed over target position while smooth scrolling."

    .line 99
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    .line 104
    :cond_67
    :goto_67
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    .line 106
    if-eqz v2, :cond_8a

    .line 108
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 110
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    .line 112
    invoke-virtual {p0, p1, p2, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V

    .line 115
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    .line 117
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    .line 119
    const/4 v2, 0x1

    .line 120
    if-ltz p2, :cond_7a

    .line 122
    move v1, v2

    .line 123
    :cond_7a
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 126
    if-eqz v1, :cond_8a

    .line 128
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    .line 130
    if-eqz p1, :cond_8a

    .line 132
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    .line 134
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 136
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    .line 139
    :cond_8a
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$x;->getChildPosition(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_c

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    .line 13
    :cond_c
    return-void
.end method

.method public abstract onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
.end method

.method public setTargetPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 3
    return-void
.end method

.method public start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    .line 6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mStarted:Z

    .line 8
    if-eqz v0, :cond_38

    .line 10
    const-string v0, "An instance of "

    .line 12
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " was started more than once. Each instance of"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const-string v1, "RecyclerView"

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_38
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 61
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 63
    const/4 v0, -0x1

    .line 64
    if-eq p2, v0, :cond_61

    .line 66
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 68
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 70
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    .line 73
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    .line 75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    .line 78
    move-result p2

    .line 79
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$x;->findViewByPosition(I)Landroid/view/View;

    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->onStart()V

    .line 88
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 92
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    .line 95
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mStarted:Z

    .line 97
    return-void

    .line 98
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string p2, "Invalid target position"

    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1
.end method

.method public final stop()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->onStop()V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    .line 22
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    .line 24
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 31
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    return-void
.end method
