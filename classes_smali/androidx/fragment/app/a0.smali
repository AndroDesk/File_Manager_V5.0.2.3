.class public final Landroidx/fragment/app/a0;
.super Ljava/lang/Object;
.source "FragmentStore.java"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/y;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/fragment/app/v;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_18

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_b
    iget-object v1, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .line 24
    throw p1

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v2, "Fragment already added: "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0
.end method

.method public final b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/fragment/app/y;

    .line 9
    if-eqz p1, :cond_d

    .line 11
    iget-object p1, p1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 13
    return-object p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_21

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/y;

    .line 23
    if-eqz v1, :cond_a

    .line 25
    iget-object v1, v1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 27
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_a

    .line 33
    return-object v1

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public final d()Ljava/util/ArrayList;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_21

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/y;

    .line 28
    if-eqz v2, :cond_f

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_f

    .line 34
    :cond_21
    return-object v0
.end method

.method public final e()Ljava/util/ArrayList;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_28

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/y;

    .line 28
    if-eqz v2, :cond_23

    .line 30
    iget-object v2, v2, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_f

    .line 36
    :cond_23
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_f

    .line 41
    :cond_28
    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    iget-object v2, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    .line 28
    throw v1
.end method

.method public final g(Landroidx/fragment/app/y;)V
    .registers 6

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_f

    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v1, v2

    .line 17
    :goto_10
    if-eqz v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v1, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 22
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 29
    if-eqz p1, :cond_2f

    .line 31
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 33
    if-eqz p1, :cond_28

    .line 35
    iget-object p1, p0, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 37
    invoke-virtual {p1, v0}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/Fragment;)V

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    iget-object p1, p0, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 43
    invoke-virtual {p1, v0}, Landroidx/fragment/app/v;->d(Landroidx/fragment/app/Fragment;)V

    .line 46
    :goto_2d
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 48
    :cond_2f
    const/4 p1, 0x2

    .line 49
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4c

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v1, "Added fragment to active set "

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    const-string v0, "FragmentManager"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_4c
    return-void
.end method

.method public final h(Landroidx/fragment/app/y;)V
    .registers 5

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 9
    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->d(Landroidx/fragment/app/Fragment;)V

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 14
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/fragment/app/y;

    .line 23
    if-nez v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_36

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v1, "Removed fragment from active set "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const-string v0, "FragmentManager"

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_36
    return-void
.end method

.method public final i(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;
    .registers 4

    .line 1
    if-eqz p2, :cond_b

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/fragment/app/FragmentState;

    .line 11
    return-object p1

    .line 12
    :cond_b
    iget-object p2, p0, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 14
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroidx/fragment/app/FragmentState;

    .line 20
    return-object p1
.end method
