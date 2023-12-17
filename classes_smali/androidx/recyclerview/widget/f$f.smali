.class public final Landroidx/recyclerview/widget/f$f;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/recyclerview/widget/f;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/f$f;->a:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/f$f;->a:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_54

    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    .line 16
    iget-object v1, v1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_54

    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    .line 26
    iget-object v2, v1, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 28
    iget-object v1, v1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/f$e;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    .line 44
    iget v2, v2, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 46
    if-ne v1, v2, :cond_54

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    move-result v1

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 55
    move-result v2

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 59
    move-result p1

    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    .line 62
    iput v2, v1, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    .line 64
    iput p1, v1, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    .line 66
    const/4 p1, 0x0

    .line 67
    iput p1, v1, Landroidx/recyclerview/widget/f;->mDy:F

    .line 69
    iput p1, v1, Landroidx/recyclerview/widget/f;->mDx:F

    .line 71
    iget-object p1, v1, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/f$e;->isLongPressDragEnabled()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_54

    .line 79
    iget-object p1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    .line 81
    const/4 v1, 0x2

    .line 82
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 85
    :cond_54
    return-void
.end method
