.class public final Landroidx/fragment/app/s;
.super Ljava/lang/Object;
.source "FragmentLifecycleCallbacksDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/s$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/s$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    iput-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p3, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/FragmentManager$l;->onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final b(Landroidx/fragment/app/Fragment;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 11
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 13
    if-eqz v1, :cond_18

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/s;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 25
    :cond_18
    iget-object v1, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_38

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroidx/fragment/app/s$a;

    .line 43
    if-eqz p2, :cond_30

    .line 45
    iget-boolean v3, v2, Landroidx/fragment/app/s$a;->b:Z

    .line 47
    if-eqz v3, :cond_1e

    .line 49
    :cond_30
    iget-object v2, v2, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 51
    iget-object v3, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 53
    invoke-virtual {v2, v3, p1, v0}, Landroidx/fragment/app/FragmentManager$l;->onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 56
    goto :goto_1e

    .line 57
    :cond_38
    return-void
.end method

.method public final c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/s;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p3, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/FragmentManager$l;->onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final d(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p2, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$l;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final e(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p2, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$l;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final f(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->f(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p2, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$l;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final g(Landroidx/fragment/app/Fragment;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 11
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 13
    if-eqz v1, :cond_18

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/s;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 25
    :cond_18
    iget-object v1, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_38

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroidx/fragment/app/s$a;

    .line 43
    if-eqz p2, :cond_30

    .line 45
    iget-boolean v3, v2, Landroidx/fragment/app/s$a;->b:Z

    .line 47
    if-eqz v3, :cond_1e

    .line 49
    :cond_30
    iget-object v2, v2, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 51
    iget-object v3, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 53
    invoke-virtual {v2, v3, p1, v0}, Landroidx/fragment/app/FragmentManager$l;->onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 56
    goto :goto_1e

    .line 57
    :cond_38
    return-void
.end method

.method public final h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/s;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p3, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/FragmentManager$l;->onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final i(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->i(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p2, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$l;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/s;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p3, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/FragmentManager$l;->onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final k(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->k(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p2, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$l;->onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final l(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->l(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p2, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$l;->onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/s;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p4, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1, p2, p3}, Landroidx/fragment/app/FragmentManager$l;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method

.method public final n(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->n(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/s$a;

    .line 35
    if-eqz p2, :cond_28

    .line 37
    iget-boolean v2, v1, Landroidx/fragment/app/s$a;->b:Z

    .line 39
    if-eqz v2, :cond_16

    .line 41
    :cond_28
    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroidx/fragment/app/FragmentManager$l;

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$l;->onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-void
.end method
