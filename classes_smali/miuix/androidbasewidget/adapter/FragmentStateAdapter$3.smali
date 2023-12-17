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
.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$container:Landroid/widget/FrameLayout;

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$l;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    .line 1
    iget-object p4, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 3
    if-ne p2, p4, :cond_33

    .line 5
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 7
    iget-object p2, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    monitor-enter p2

    .line 10
    const/4 p4, 0x0

    .line 11
    :try_start_a
    iget-object v0, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    if-ge p4, v0, :cond_27

    .line 19
    iget-object v1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    invoke-virtual {v1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 27
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 29
    if-ne v1, p0, :cond_24

    .line 31
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    invoke-virtual {p1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    goto :goto_27

    .line 37
    :cond_24
    add-int/lit8 p4, p4, 0x1

    .line 39
    goto :goto_10

    .line 40
    :cond_27
    :goto_27
    monitor-exit p2
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_30

    .line 41
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 43
    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;->val$container:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {p1, p3, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 48
    goto :goto_33

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    :try_start_31
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .line 51
    throw p1

    .line 52
    :cond_33
    :goto_33
    return-void
.end method
