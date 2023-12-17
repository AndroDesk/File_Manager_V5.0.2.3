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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/f$g;I)V
    .registers 4

    iput-object p1, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    iput-object p2, p0, Landroidx/recyclerview/widget/f$d;->a:Landroidx/recyclerview/widget/f$g;

    iput p3, p0, Landroidx/recyclerview/widget/f$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Landroidx/recyclerview/widget/f$g;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/f$g;->k:Z

    if-nez v1, :cond_49

    iget-object v0, v0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->isRunning(Landroidx/recyclerview/widget/RecyclerView$l$a;)Z

    move-result v0

    if-nez v0, :cond_42

    :cond_2c
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f;->hasRunningRecoverAnim()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    iget-object v1, p0, Landroidx/recyclerview/widget/f$d;->a:Landroidx/recyclerview/widget/f$g;

    iget-object v1, v1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget v2, p0, Landroidx/recyclerview/widget/f$d;->b:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/f$e;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    goto :goto_49

    :cond_42
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->c:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_49
    :goto_49
    return-void
.end method
