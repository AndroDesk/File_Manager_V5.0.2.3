.class public final Landroidx/lifecycle/h;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h$a;
    }
.end annotation


# direct methods
.method public static a(Landroidx/lifecycle/Lifecycle;Lc1/c;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    if-eq v0, v1, :cond_1a

    .line 9
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    new-instance v0, Landroidx/lifecycle/LegacySavedStateHandleController$1;

    .line 20
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LegacySavedStateHandleController$1;-><init>(Landroidx/lifecycle/Lifecycle;Lc1/c;)V

    .line 23
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Lc1/c;->d()V

    .line 30
    :goto_1d
    return-void
.end method
