.class public final Lc1/d;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.kt"


# instance fields
.field public final a:Lc1/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lc1/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lc1/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lc1/d;->a:Lc1/e;

    .line 6
    new-instance p1, Lc1/c;

    .line 8
    invoke-direct {p1}, Lc1/c;-><init>()V

    .line 11
    iput-object p1, p0, Lc1/d;->b:Lc1/c;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lc1/d;->a:Lc1/e;

    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "owner.lifecycle"

    .line 9
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v1, v2, :cond_16

    .line 21
    move v1, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v1, 0x0

    .line 24
    :goto_17
    if-eqz v1, :cond_46

    .line 26
    new-instance v1, Landroidx/savedstate/Recreator;

    .line 28
    iget-object v2, p0, Lc1/d;->a:Lc1/e;

    .line 30
    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Lc1/e;)V

    .line 33
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 36
    iget-object v1, p0, Lc1/d;->b:Lc1/c;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    iget-boolean v2, v1, Lc1/c;->b:Z

    .line 43
    xor-int/2addr v2, v3

    .line 44
    if-eqz v2, :cond_3a

    .line 46
    new-instance v2, Lc1/b;

    .line 48
    invoke-direct {v2, v1}, Lc1/b;-><init>(Lc1/c;)V

    .line 51
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 54
    iput-boolean v3, v1, Lc1/c;->b:Z

    .line 56
    iput-boolean v3, p0, Lc1/d;->c:Z

    .line 58
    return-void

    .line 59
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    const-string v1, "SavedStateRegistry was already attached."

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0

    .line 71
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lc1/d;->c:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-virtual {p0}, Lc1/d;->a()V

    .line 8
    :cond_7
    iget-object v0, p0, Lc1/d;->a:Lc1/e;

    .line 10
    invoke-interface {v0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "owner.lifecycle"

    .line 16
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 25
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    xor-int/2addr v1, v2

    .line 31
    if-eqz v1, :cond_52

    .line 33
    iget-object v0, p0, Lc1/d;->b:Lc1/c;

    .line 35
    iget-boolean v1, v0, Lc1/c;->b:Z

    .line 37
    if-eqz v1, :cond_46

    .line 39
    iget-boolean v1, v0, Lc1/c;->d:Z

    .line 41
    xor-int/2addr v1, v2

    .line 42
    if-eqz v1, :cond_3a

    .line 44
    if-eqz p1, :cond_34

    .line 46
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 51
    move-result-object p1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 p1, 0x0

    .line 54
    :goto_35
    iput-object p1, v0, Lc1/c;->c:Landroid/os/Bundle;

    .line 56
    iput-boolean v2, v0, Lc1/c;->d:Z

    .line 58
    return-void

    .line 59
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    const-string v0, "SavedStateRegistry was already restored."

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    :cond_52
    const-string p1, "performRestore cannot be called when owner is "

    .line 85
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .registers 6
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outBundle"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc1/d;->b:Lc1/c;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    iget-object v2, v0, Lc1/c;->c:Landroid/os/Bundle;

    .line 18
    if-eqz v2, :cond_16

    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 23
    :cond_16
    iget-object v0, v0, Lc1/c;->a:Lo/b;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v2, Lo/b$d;

    .line 30
    invoke-direct {v2, v0}, Lo/b$d;-><init>(Lo/b;)V

    .line 33
    iget-object v0, v0, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 35
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_27
    invoke-virtual {v2}, Lo/b$d;->hasNext()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_47

    .line 46
    invoke-virtual {v2}, Lo/b$d;->next()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lc1/c$b;

    .line 64
    invoke-interface {v0}, Lc1/c$b;->saveState()Landroid/os/Bundle;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    goto :goto_27

    .line 72
    :cond_47
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_52

    .line 78
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    :cond_52
    return-void
.end method
