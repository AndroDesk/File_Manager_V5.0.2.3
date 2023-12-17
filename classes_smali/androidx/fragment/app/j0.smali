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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    iput-object v0, p0, Landroidx/fragment/app/j0;->e:Lc1/d;

    iput-object p1, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/j0;->b:Landroidx/lifecycle/e0;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    if-nez v0, :cond_18

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    iput-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    new-instance v0, Lc1/d;

    invoke-direct {v0, p0}, Lc1/d;-><init>(Lc1/e;)V

    iput-object v0, p0, Landroidx/fragment/app/j0;->e:Lc1/d;

    invoke-virtual {v0}, Lc1/d;->a()V

    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->b(Lc1/e;)V

    :cond_18
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lz0/a;
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1c

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/app/Application;

    goto :goto_1d

    :cond_15
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    new-instance v1, Lz0/c;

    invoke-direct {v1}, Lz0/c;-><init>()V

    if-eqz v0, :cond_2b

    sget-object v2, Landroidx/lifecycle/b0;->a:Landroidx/lifecycle/b0;

    iget-object v3, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    iget-object v2, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    iget-object v2, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4e

    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$a;

    iget-object v2, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-object v1
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iput-object v0, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    return-object v0

    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    if-nez v0, :cond_42

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_22
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_35

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_2e

    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_35

    :cond_2e
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_22

    :cond_35
    :goto_35
    new-instance v1, Landroidx/lifecycle/y;

    iget-object v2, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/y;-><init>(Landroid/app/Application;Lc1/e;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    :cond_42
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:Landroidx/lifecycle/c0$b;

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/j0;->b()V

    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lc1/c;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/j0;->b()V

    iget-object v0, p0, Landroidx/fragment/app/j0;->e:Lc1/d;

    iget-object v0, v0, Lc1/d;->b:Lc1/c;

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/e0;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/j0;->b()V

    iget-object v0, p0, Landroidx/fragment/app/j0;->b:Landroidx/lifecycle/e0;

    return-object v0
.end method
