.class public final Landroidx/recyclerview/widget/x$a;
.super Landroidx/recyclerview/widget/f$g;
.source "SpringItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/x;->super_select_overwrite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic o:Landroidx/recyclerview/widget/x;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/x;Landroidx/recyclerview/widget/RecyclerView$b0;FFLandroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 13

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/x$a;->o:Landroidx/recyclerview/widget/x;

    .line 3
    iput-object p5, p0, Landroidx/recyclerview/widget/x$a;->n:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/f$g;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;IFFFF)V

    .line 15
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/f$g;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/f$g;->k:Z

    .line 6
    if-eqz p1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/x$a;->o:Landroidx/recyclerview/widget/x;

    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 13
    iget-object p1, p1, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/x$a;->n:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 17
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/x$a;->o:Landroidx/recyclerview/widget/x;

    .line 22
    iget-object v0, p1, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/x$a;->n:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 26
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 28
    if-ne v0, v1, :cond_20

    .line 30
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/f;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 33
    :cond_20
    return-void
.end method
