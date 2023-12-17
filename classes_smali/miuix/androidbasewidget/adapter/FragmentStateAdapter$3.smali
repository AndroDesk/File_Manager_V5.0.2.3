.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;
.super Landroidx/fragment/app/FragmentManager$l;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

.field public final synthetic val$container:Landroid/widget/FrameLayout;

.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .registers 4

    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$container:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$l;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    iget-object p4, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$fragment:Landroidx/fragment/app/Fragment;

    if-ne p2, p4, :cond_33

    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    iget-object p2, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p2

    const/4 p4, 0x0

    :try_start_a
    iget-object v0, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    :goto_10
    if-ge p4, v0, :cond_27

    iget-object v1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s$a;

    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    if-ne v1, p0, :cond_24

    iget-object p1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_27

    :cond_24
    add-int/lit8 p4, p4, 0x1

    goto :goto_10

    :cond_27
    :goto_27
    monitor-exit p2
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_30

    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_33

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1

    :cond_33
    :goto_33
    return-void
.end method
