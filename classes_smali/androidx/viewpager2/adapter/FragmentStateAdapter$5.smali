.class Landroidx/viewpager2/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/lifecycle/k;


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    if-eq p2, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
