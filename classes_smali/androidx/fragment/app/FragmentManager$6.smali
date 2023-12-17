.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/lifecycle/k;


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eq p2, p1, :cond_b

    .line 6
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    if-eq p2, p1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    throw v0

    .line 12
    :cond_b
    throw v0
.end method
