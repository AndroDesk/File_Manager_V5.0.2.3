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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$x$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    if-eqz v1, :cond_f

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$x$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_f
    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .registers 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isPendingInitialRun()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    return v0
.end method

.method public normalize(Landroid/graphics/PointF;)V
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public onAnimation(II)V
    .registers 9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    if-nez v0, :cond_c

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3d

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3d

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2e

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_3d

    :cond_2e
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_3d
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_67

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->getChildPosition(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    if-ne v3, v4, :cond_5e

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    invoke-virtual {p0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    goto :goto_67

    :cond_5e
    const-string v3, "RecyclerView"

    const-string v4, "Passed over target position while smooth scrolling."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    :cond_67
    :goto_67
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    if-eqz v2, :cond_8a

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    invoke-virtual {p0, p1, p2, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$x$a;

    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    const/4 v2, 0x1

    if-ltz p2, :cond_7a

    move v1, v2

    :cond_7a
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_8a

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    if-eqz p1, :cond_8a

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    :cond_8a
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$x;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_c

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

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

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    return-void
.end method

.method public start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mStarted:Z

    if-eqz v0, :cond_38

    const-string v0, "An instance of "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_61

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$x;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->onStart()V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mStarted:Z

    return-void

    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final stop()V
    .registers 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRunning:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->onStop()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetView:Landroid/view/View;

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mTargetPosition:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mPendingInitialRun:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$x;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
