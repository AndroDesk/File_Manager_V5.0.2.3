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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 3

    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    invoke-virtual {p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    :cond_9
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    :cond_25
    return-void
.end method
