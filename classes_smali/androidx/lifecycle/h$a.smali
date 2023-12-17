.class public final Landroidx/lifecycle/h$a;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"

# interfaces
.implements Lc1/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc1/e;)V
    .registers 8

    .line 1
    instance-of v0, p1, Landroidx/lifecycle/f0;

    .line 3
    if-eqz v0, :cond_79

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/lifecycle/f0;

    .line 8
    invoke-interface {v0}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v2, Ljava/util/HashSet;

    .line 21
    iget-object v3, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 34
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_64

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 46
    iget-object v4, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/lifecycle/a0;

    .line 54
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 57
    move-result-object v4

    .line 58
    const-string v5, "androidx.lifecycle.savedstate.vm.tag"

    .line 60
    invoke-virtual {v3, v5}, Landroidx/lifecycle/a0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroidx/lifecycle/SavedStateHandleController;

    .line 66
    if-eqz v3, :cond_21

    .line 68
    iget-boolean v5, v3, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 70
    if-nez v5, :cond_21

    .line 72
    if-nez v5, :cond_5c

    .line 74
    const/4 v5, 0x1

    .line 75
    iput-boolean v5, v3, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 77
    invoke-virtual {v4, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 80
    iget-object v5, v3, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    .line 82
    iget-object v3, v3, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/w;

    .line 84
    iget-object v3, v3, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    .line 86
    invoke-virtual {v1, v5, v3}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 89
    invoke-static {v4, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/Lifecycle;Lc1/c;)V

    .line 92
    goto :goto_21

    .line 93
    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    const-string v0, "Already attached to lifecycleOwner"

    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 101
    :cond_64
    new-instance p1, Ljava/util/HashSet;

    .line 103
    iget-object v0, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    .line 105
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 112
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_78

    .line 118
    invoke-virtual {v1}, Lc1/c;->d()V

    .line 121
    :cond_78
    return-void

    .line 122
    :cond_79
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    const-string v0, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    .line 126
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1
.end method
