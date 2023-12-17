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
.method public constructor <init>(Landroidx/recyclerview/widget/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mGestureDetector:Lm0/f;

    .line 5
    iget-object p1, p1, Lm0/f;->a:Lm0/f$b;

    .line 7
    iget-object p1, p1, Lm0/f$b;->a:Landroid/view/GestureDetector;

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_7b

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 22
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 25
    move-result v2

    .line 26
    iput v2, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 33
    move-result v2

    .line 34
    iput v2, p1, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 41
    move-result v2

    .line 42
    iput v2, p1, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/f;->obtainVelocityTracker()V

    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 51
    iget-object v2, p1, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 53
    if-nez v2, :cond_9c

    .line 55
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/f;->findAnimation(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/f$g;

    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_9c

    .line 61
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 63
    iget v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    .line 65
    iget v4, p1, Landroidx/recyclerview/widget/f$g;->i:F

    .line 67
    sub-float/2addr v3, v4

    .line 68
    iput v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    .line 70
    iget v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    .line 72
    iget v4, p1, Landroidx/recyclerview/widget/f$g;->j:F

    .line 74
    sub-float/2addr v3, v4

    .line 75
    iput v3, v2, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    .line 77
    iget-object v3, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 79
    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/f;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 82
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 84
    iget-object v2, v2, Landroidx/recyclerview/widget/f;->mPendingCleanup:Ljava/util/List;

    .line 86
    iget-object v3, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 88
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 90
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_6a

    .line 96
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 98
    iget-object v3, v2, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 100
    iget-object v2, v2, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    iget-object v4, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 104
    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 107
    :cond_6a
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 109
    iget-object v3, p1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 111
    iget p1, p1, Landroidx/recyclerview/widget/f$g;->f:I

    .line 113
    invoke-virtual {v2, v3, p1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 116
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 118
    iget v2, p1, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    .line 120
    invoke-virtual {p1, p2, v2, v1}, Landroidx/recyclerview/widget/f;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 123
    goto :goto_9c

    .line 124
    :cond_7b
    const/4 v2, 0x3

    .line 125
    const/4 v3, -0x1

    .line 126
    if-eq p1, v2, :cond_94

    .line 128
    if-ne p1, v0, :cond_82

    .line 130
    goto :goto_94

    .line 131
    :cond_82
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 133
    iget v2, v2, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 135
    if-eq v2, v3, :cond_9c

    .line 137
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 140
    move-result v2

    .line 141
    if-ltz v2, :cond_9c

    .line 143
    iget-object v3, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 145
    invoke-virtual {v3, p1, p2, v2}, Landroidx/recyclerview/widget/f;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    .line 148
    goto :goto_9c

    .line 149
    :cond_94
    :goto_94
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 151
    iput v3, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 157
    :cond_9c
    :goto_9c
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 159
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 161
    if-eqz p1, :cond_a5

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 166
    :cond_a5
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 168
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 170
    if-eqz p1, :cond_ac

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move v0, v1

    .line 174
    :goto_ad
    return v0
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 11
    return-void
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 10

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mGestureDetector:Lm0/f;

    .line 5
    iget-object p1, p1, Lm0/f;->a:Lm0/f$b;

    .line 7
    iget-object p1, p1, Lm0/f$b;->a:Landroid/view/GestureDetector;

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 21
    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 23
    iget p1, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 25
    const/4 v0, -0x1

    .line 26
    if-ne p1, v0, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 32
    move-result p1

    .line 33
    iget-object v1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 35
    iget v1, v1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 40
    move-result v1

    .line 41
    if-ltz v1, :cond_2f

    .line 43
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 45
    invoke-virtual {v2, p1, p2, v1}, Landroidx/recyclerview/widget/f;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    .line 48
    :cond_2f
    iget-object v2, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 50
    iget-object v3, v2, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 52
    if-nez v3, :cond_36

    .line 54
    return-void

    .line 55
    :cond_36
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x1

    .line 57
    if-eq p1, v5, :cond_8f

    .line 59
    const/4 v6, 0x2

    .line 60
    if-eq p1, v6, :cond_6b

    .line 62
    const/4 v1, 0x3

    .line 63
    if-eq p1, v1, :cond_63

    .line 65
    const/4 v0, 0x6

    .line 66
    if-eq p1, v0, :cond_44

    .line 68
    goto :goto_99

    .line 69
    :cond_44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 72
    move-result p1

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 76
    move-result v0

    .line 77
    iget-object v1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 79
    iget v2, v1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 81
    if-ne v0, v2, :cond_99

    .line 83
    if-nez p1, :cond_55

    .line 85
    move v4, v5

    .line 86
    :cond_55
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 89
    move-result v0

    .line 90
    iput v0, v1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 92
    iget-object v0, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 94
    iget v1, v0, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    .line 96
    invoke-virtual {v0, p2, v1, p1}, Landroidx/recyclerview/widget/f;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 99
    goto :goto_99

    .line 100
    :cond_63
    iget-object p1, v2, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 102
    if-eqz p1, :cond_8f

    .line 104
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 107
    goto :goto_8f

    .line 108
    :cond_6b
    if-ltz v1, :cond_99

    .line 110
    iget p1, v2, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    .line 112
    invoke-virtual {v2, p2, p1, v1}, Landroidx/recyclerview/widget/f;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 115
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 117
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/f;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 120
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 122
    iget-object p2, p1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mScrollRunnable:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 129
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 131
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mScrollRunnable:Ljava/lang/Runnable;

    .line 133
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 136
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 138
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 143
    goto :goto_99

    .line 144
    :cond_8f
    :goto_8f
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 146
    const/4 p2, 0x0

    .line 147
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 150
    iget-object p1, p0, Landroidx/recyclerview/widget/f$b;->a:Landroidx/recyclerview/widget/f;

    .line 152
    iput v0, p1, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 154
    :cond_99
    :goto_99
    return-void
.end method
