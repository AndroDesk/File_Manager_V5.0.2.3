.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/lifecycle/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

.field public final synthetic val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    invoke-virtual {p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 17
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    .line 19
    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 25
    invoke-static {p1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_25

    .line 31
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 33
    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    .line 35
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    .line 38
    :cond_25
    return-void
.end method
