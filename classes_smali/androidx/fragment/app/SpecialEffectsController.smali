.class public abstract Landroidx/fragment/app/SpecialEffectsController;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$d;,
        Landroidx/fragment/app/SpecialEffectsController$Operation;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->c:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->d:Z

    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->e:Z

    .line 23
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 25
    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->K()Landroidx/fragment/app/l0;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/l0;)Landroidx/fragment/app/SpecialEffectsController;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static g(Landroid/view/ViewGroup;Landroidx/fragment/app/l0;)Landroidx/fragment/app/SpecialEffectsController;
    .registers 5

    .line 1
    sget v0, Lw0/b;->special_effects_controller_view_tag:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Landroidx/fragment/app/SpecialEffectsController;

    .line 9
    if-eqz v2, :cond_d

    .line 11
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController;

    .line 13
    return-object v1

    .line 14
    :cond_d
    check-cast p1, Landroidx/fragment/app/FragmentManager$e;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance p1, Landroidx/fragment/app/b;

    .line 21
    invoke-direct {p1, p0}, Landroidx/fragment/app/b;-><init>(Landroid/view/ViewGroup;)V

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    return-object p1
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v1, Li0/d;

    .line 6
    invoke-direct {v1}, Li0/d;-><init>()V

    .line 9
    iget-object v2, p3, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 11
    invoke-virtual {p0, v2}, Landroidx/fragment/app/SpecialEffectsController;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_15

    .line 17
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->c(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$d;

    .line 24
    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/SpecialEffectsController$d;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;Li0/d;)V

    .line 27
    iget-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$a;

    .line 34
    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/SpecialEffectsController$a;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$d;)V

    .line 37
    iget-object p2, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->d:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$b;

    .line 44
    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/SpecialEffectsController$b;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$d;)V

    .line 47
    iget-object p2, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->d:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_35
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    .line 56
    throw p1
.end method

.method public abstract b(Ljava/util/ArrayList;Z)V
.end method

.method public final c()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->e:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 8
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {v0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_16

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->e()V

    .line 20
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->d:Z

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_19
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_b0

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->c:Ljava/util/ArrayList;

    .line 38
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->c:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v2

    .line 50
    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x2

    .line 55
    if-eqz v3, :cond_67

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 63
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_5a

    .line 69
    const-string v4, "FragmentManager"

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v6, "SpecialEffectsController: Cancelling operation "

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_5a
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->a()V

    .line 94
    iget-boolean v4, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->g:Z

    .line 96
    if-nez v4, :cond_31

    .line 98
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->c:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_31

    .line 104
    :cond_67
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->i()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    .line 109
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 111
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->c:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_88

    .line 130
    const-string v3, "FragmentManager"

    .line 132
    const-string v5, "SpecialEffectsController: Executing pending operations"

    .line 134
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object v3

    .line 141
    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_9c

    .line 147
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object v5

    .line 151
    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 153
    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    .line 156
    goto :goto_8c

    .line 157
    :cond_9c
    iget-boolean v3, p0, Landroidx/fragment/app/SpecialEffectsController;->d:Z

    .line 159
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/SpecialEffectsController;->b(Ljava/util/ArrayList;Z)V

    .line 162
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->d:Z

    .line 164
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_b0

    .line 170
    const-string v1, "FragmentManager"

    .line 172
    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_b0
    monitor-exit v0

    .line 178
    return-void

    .line 179
    :catchall_b2
    move-exception v1

    .line 180
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_19 .. :try_end_b4} :catchall_b2

    .line 181
    throw v1
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1f

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 19
    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_6

    .line 27
    iget-boolean v2, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->f:Z

    .line 29
    if-nez v2, :cond_6

    .line 31
    return-object v1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final e()V
    .registers 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_e

    .line 8
    const-string v1, "FragmentManager"

    .line 10
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 17
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 19
    invoke-static {v1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 25
    monitor-enter v2

    .line 26
    :try_start_19
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->i()V

    .line 29
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v3

    .line 35
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_32

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 47
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    .line 50
    goto :goto_22

    .line 51
    :cond_32
    new-instance v3, Ljava/util/ArrayList;

    .line 53
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->c:Ljava/util/ArrayList;

    .line 55
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v3

    .line 62
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_8e

    .line 68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 74
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_8a

    .line 80
    const-string v5, "FragmentManager"

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v7, "SpecialEffectsController: "

    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    if-eqz v1, :cond_60

    .line 94
    const-string v7, ""

    .line 96
    goto :goto_78

    .line 97
    :cond_60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v8, "Container "

    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v8, p0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v8, " is not attached to window. "

    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    :goto_78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v7, "Cancelling running operation "

    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v6

    .line 136
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_8a
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->a()V

    .line 142
    goto :goto_3d

    .line 143
    :cond_8e
    new-instance v3, Ljava/util/ArrayList;

    .line 145
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 147
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object v3

    .line 154
    :goto_99
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_ea

    .line 160
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 166
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_e6

    .line 172
    const-string v5, "FragmentManager"

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string v7, "SpecialEffectsController: "

    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    if-eqz v1, :cond_bc

    .line 186
    const-string v7, ""

    .line 188
    goto :goto_d4

    .line 189
    :cond_bc
    new-instance v7, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v8, "Container "

    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v8, p0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 201
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    const-string v8, " is not attached to window. "

    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v7

    .line 213
    :goto_d4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v7, "Cancelling pending operation "

    .line 218
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v6

    .line 228
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_e6
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->a()V

    .line 234
    goto :goto_99

    .line 235
    :cond_ea
    monitor-exit v2

    .line 236
    return-void

    .line 237
    :catchall_ec
    move-exception v0

    .line 238
    monitor-exit v2
    :try_end_ee
    .catchall {:try_start_19 .. :try_end_ee} :catchall_ec

    .line 239
    throw v0
.end method

.method public final h()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->i()V

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->e:Z

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 18
    :goto_11
    if-ltz v1, :cond_37

    .line 20
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 28
    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 32
    invoke-static {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 35
    move-result-object v3

    .line 36
    iget-object v4, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 38
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 40
    if-ne v4, v5, :cond_34

    .line 42
    if-eq v3, v5, :cond_34

    .line 44
    iget-object v1, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    .line 49
    move-result v1

    .line 50
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->e:Z

    .line 52
    goto :goto_37

    .line 53
    :cond_34
    add-int/lit8 v1, v1, -0x1

    .line 55
    goto :goto_11

    .line 56
    :cond_37
    :goto_37
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_39
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    .line 60
    throw v1
.end method

.method public final i()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2c

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 19
    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 21
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 23
    if-ne v2, v3, :cond_6

    .line 25
    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 27
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 41
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->c(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    .line 44
    goto :goto_6

    .line 45
    :cond_2c
    return-void
.end method
