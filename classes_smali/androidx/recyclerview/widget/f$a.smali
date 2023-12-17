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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/f;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->a:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method
