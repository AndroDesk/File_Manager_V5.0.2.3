.class public final Landroidx/recyclerview/widget/f$d;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/f;->postDispatchSwipe(Landroidx/recyclerview/widget/f$g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/f$g;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/f;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/f$g;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    .line 3
    iput-object p2, p0, Landroidx/recyclerview/widget/f$d;->a:Landroidx/recyclerview/widget/f$g;

    .line 5
    iput p3, p0, Landroidx/recyclerview/widget/f$d;->b:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    if-eqz v0, :cond_49

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_49

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Landroidx/recyclerview/widget/f$g;

    .line 15
    iget-boolean v1, v0, Landroidx/recyclerview/widget/f$g;->k:Z

    .line 17
    if-nez v1, :cond_49

    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_49

    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->isRunning(Landroidx/recyclerview/widget/RecyclerView$l$a;)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_42

    .line 45
    :cond_2c
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/f;->hasRunningRecoverAnim()Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_42

    .line 53
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    .line 55
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 57
    iget-object v1, p0, Landroidx/recyclerview/widget/f$d;->a:Landroidx/recyclerview/widget/f$g;

    .line 59
    iget-object v1, v1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 61
    iget v2, p0, Landroidx/recyclerview/widget/f$d;->b:I

    .line 63
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/f$e;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 66
    goto :goto_49

    .line 67
    :cond_42
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    .line 69
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_49
    :goto_49
    return-void
.end method
