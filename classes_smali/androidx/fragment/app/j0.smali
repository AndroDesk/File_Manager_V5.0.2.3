.class public final Landroidx/fragment/app/j0;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/g;
.implements Lc1/e;
.implements Landroidx/lifecycle/f0;


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Landroidx/lifecycle/e0;

.field public c:Landroidx/lifecycle/c0$b;

.field public d:Landroidx/lifecycle/n;

.field public e:Lc1/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e0;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/j0;->e:Lc1/d;

    .line 9
    iput-object p1, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/j0;->b:Landroidx/lifecycle/e0;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 3
    if-nez v0, :cond_18

    .line 5
    new-instance v0, Landroidx/lifecycle/n;

    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    .line 10
    iput-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 12
    new-instance v0, Lc1/d;

    .line 14
    invoke-direct {v0, p0}, Lc1/d;-><init>(Lc1/e;)V

    .line 17
    iput-object v0, p0, Landroidx/fragment/app/j0;->e:Lc1/d;

    .line 19
    invoke-virtual {v0}, Lc1/d;->a()V

    .line 22
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->b(Lc1/e;)V

    .line 25
    :cond_18
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lz0/a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 13
    if-eqz v1, :cond_1c

    .line 15
    instance-of v1, v0, Landroid/app/Application;

    .line 17
    if-eqz v1, :cond_15

    .line 19
    check-cast v0, Landroid/app/Application;

    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    check-cast v0, Landroid/content/ContextWrapper;

    .line 24
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    new-instance v1, Lz0/c;

    .line 32
    invoke-direct {v1}, Lz0/c;-><init>()V

    .line 35
    if-eqz v0, :cond_2b

    .line 37
    sget-object v2, Landroidx/lifecycle/b0;->a:Landroidx/lifecycle/b0;

    .line 39
    iget-object v3, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 41
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2b
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    .line 46
    iget-object v2, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 48
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    .line 53
    iget-object v2, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 55
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 60
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4e

    .line 66
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$a;

    .line 68
    iget-object v2, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 70
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 73
    move-result-object v2

    .line 74
    iget-object v3, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 76
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4e
    return-object v1
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 9
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_13

    .line 17
    iput-object v0, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    .line 19
    return-object v0

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    .line 22
    if-nez v0, :cond_42

    .line 24
    const/4 v0, 0x0

    .line 25
    iget-object v1, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    :goto_22
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 37
    if-eqz v2, :cond_35

    .line 39
    instance-of v2, v1, Landroid/app/Application;

    .line 41
    if-eqz v2, :cond_2e

    .line 43
    move-object v0, v1

    .line 44
    check-cast v0, Landroid/app/Application;

    .line 46
    goto :goto_35

    .line 47
    :cond_2e
    check-cast v1, Landroid/content/ContextWrapper;

    .line 49
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 52
    move-result-object v1

    .line 53
    goto :goto_22

    .line 54
    :cond_35
    :goto_35
    new-instance v1, Landroidx/lifecycle/y;

    .line 56
    iget-object v2, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    .line 58
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/y;-><init>(Landroid/app/Application;Lc1/e;Landroid/os/Bundle;)V

    .line 65
    iput-object v1, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    .line 67
    :cond_42
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    .line 69
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->b()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 6
    return-object v0
.end method

.method public final getSavedStateRegistry()Lc1/c;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->b()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/j0;->e:Lc1/d;

    .line 6
    iget-object v0, v0, Lc1/d;->b:Lc1/c;

    .line 8
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/e0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->b()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/j0;->b:Landroidx/lifecycle/e0;

    .line 6
    return-object v0
.end method
