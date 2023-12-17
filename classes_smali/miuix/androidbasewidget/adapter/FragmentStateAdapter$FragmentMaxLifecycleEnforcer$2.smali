.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;
.super Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;->this$1:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;)V

    .line 7
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;->this$1:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    .line 7
    return-void
.end method
