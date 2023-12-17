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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f$f;->a:Z

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

    iget-boolean v0, p0, Landroidx/recyclerview/widget/f$f;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    iget-object v1, v1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    iget-object v2, v1, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    iget-object v1, v1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/f$e;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result v1

    if-nez v1, :cond_24

    return-void

    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    iget v2, v2, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    if-ne v1, v2, :cond_54

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    iput v2, v1, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    iput p1, v1, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    const/4 p1, 0x0

    iput p1, v1, Landroidx/recyclerview/widget/f;->mDy:F

    iput p1, v1, Landroidx/recyclerview/widget/f;->mDx:F

    iget-object p1, v1, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/f$e;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Landroidx/recyclerview/widget/f$f;->b:Landroidx/recyclerview/widget/f;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :cond_54
    return-void
.end method
