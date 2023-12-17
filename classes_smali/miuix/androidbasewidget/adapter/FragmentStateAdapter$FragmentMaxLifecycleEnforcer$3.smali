.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/lifecycle/k;


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
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->this$1:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->this$1:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    .line 7
    return-void
.end method
