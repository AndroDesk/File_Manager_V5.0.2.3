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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc1/e;)V
    .registers 8

    instance-of v0, p1, Landroidx/lifecycle/f0;

    if-eqz v0, :cond_79

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/f0;

    invoke-interface {v0}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    move-result-object v0

    invoke-interface {p1}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/a0;

    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    const-string v5, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {v3, v5}, Landroidx/lifecycle/a0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v3, :cond_21

    iget-boolean v5, v3, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    if-nez v5, :cond_21

    if-nez v5, :cond_5c

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    invoke-virtual {v4, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    iget-object v5, v3, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    iget-object v3, v3, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/w;

    iget-object v3, v3, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    invoke-virtual {v1, v5, v3}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    invoke-static {v4, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/Lifecycle;Lc1/c;)V

    goto :goto_21

    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached to lifecycleOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_78

    invoke-virtual {v1}, Lc1/c;->d()V

    :cond_78
    return-void

    :cond_79
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
