.class public final Landroidx/recyclerview/widget/f$b;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mGestureDetector:Lm0/f;

    iget-object p1, p1, Lm0/f;->a:Lm0/f$b;

    iget-object p1, p1, Lm0/f$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7b

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p1, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p1, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/f;->obtainVelocityTracker()V

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object v2, p1, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-nez v2, :cond_9c

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/f;->findAnimation(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/f$g;

    move-result-object p1

    if-eqz p1, :cond_9c

    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    iget v4, p1, Landroidx/recyclerview/widget/f$g;->i:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    iget v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    iget v4, p1, Landroidx/recyclerview/widget/f$g;->j:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    iget-object v3, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/f;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object v2, v2, Landroidx/recyclerview/widget/f;->mPendingCleanup:Ljava/util/List;

    iget-object v3, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object v3, v2, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    iget-object v2, v2, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_6a
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object v3, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget p1, p1, Landroidx/recyclerview/widget/f$g;->f:I

    invoke-virtual {v2, v3, p1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget v2, p1, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    invoke-virtual {p1, p2, v2, v1}, Landroidx/recyclerview/widget/f;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_9c

    :cond_7b
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq p1, v2, :cond_94

    if-ne p1, v0, :cond_82

    goto :goto_94

    :cond_82
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget v2, v2, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    if-eq v2, v3, :cond_9c

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_9c

    iget-object v3, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-virtual {v3, p1, p2, v2}, Landroidx/recyclerview/widget/f;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    goto :goto_9c

    :cond_94
    :goto_94
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iput v3, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :cond_9c
    :goto_9c
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_a5

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_a5
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz p1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v0, v1

    :goto_ad
    return v0
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 10

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mGestureDetector:Lm0/f;

    iget-object p1, p1, Lm0/f;->a:Lm0/f$b;

    iget-object p1, p1, Lm0/f$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_14

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget p1, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget v1, v1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_2f

    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-virtual {v2, p1, p2, v1}, Landroidx/recyclerview/widget/f;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    :cond_2f
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object v3, v2, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-nez v3, :cond_36

    return-void

    :cond_36
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_8f

    const/4 v6, 0x2

    if-eq p1, v6, :cond_6b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_63

    const/4 v0, 0x6

    if-eq p1, v0, :cond_44

    goto :goto_99

    :cond_44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget v2, v1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    if-ne v0, v2, :cond_99

    if-nez p1, :cond_55

    move v4, v5

    :cond_55
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    iget-object v0, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget v1, v0, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    invoke-virtual {v0, p2, v1, p1}, Landroidx/recyclerview/widget/f;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_99

    :cond_63
    iget-object p1, v2, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_8f

    :cond_6b
    if-ltz v1, :cond_99

    iget p1, v2, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    invoke-virtual {v2, p2, p1, v1}, Landroidx/recyclerview/widget/f;->updateDxDy(Landroid/view/MotionEvent;II)V

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/f;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p2, p1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_99

    :cond_8f
    :goto_8f
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    iput v0, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    :cond_99
    :goto_99
    return-void
.end method
