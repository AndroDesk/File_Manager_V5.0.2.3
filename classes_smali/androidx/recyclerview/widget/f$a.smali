.class public final Landroidx/recyclerview/widget/f$a;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    if-eqz v1, :cond_27

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/f;->scrollIfNecessary()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_27

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    .line 15
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 17
    if-eqz v1, :cond_15

    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/f;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    .line 24
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mScrollRunnable:Ljava/lang/Runnable;

    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    .line 33
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 37
    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 40
    :cond_27
    return-void
.end method
