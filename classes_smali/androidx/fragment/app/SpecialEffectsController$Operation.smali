.class public Landroidx/fragment/app/SpecialEffectsController$Operation;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;,
        Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    }
.end annotation


# instance fields
.field public a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Li0/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Li0/d;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->d:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->f:Z

    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->g:Z

    .line 23
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 25
    iput-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 27
    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 29
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$Operation$a;

    .line 31
    invoke-direct {p1, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$a;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 34
    invoke-virtual {p4, p1}, Li0/d;->setOnCancelListener(Li0/d$b;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->f:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->f:Z

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_14

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->b()V

    .line 20
    goto :goto_63

    .line 21
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    .line 25
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_63

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Li0/d;

    .line 44
    monitor-enter v2

    .line 45
    :try_start_2c
    iget-boolean v3, v2, Li0/d;->a:Z

    .line 47
    if-eqz v3, :cond_32

    .line 49
    monitor-exit v2

    .line 50
    goto :goto_1f

    .line 51
    :cond_32
    iput-boolean v0, v2, Li0/d;->a:Z

    .line 53
    iput-boolean v0, v2, Li0/d;->d:Z

    .line 55
    iget-object v3, v2, Li0/d;->b:Li0/d$b;

    .line 57
    iget-object v4, v2, Li0/d;->c:Landroid/os/CancellationSignal;

    .line 59
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_60

    .line 60
    const/4 v5, 0x0

    .line 61
    if-eqz v3, :cond_44

    .line 63
    :try_start_3e
    invoke-interface {v3}, Li0/d$b;->onCancel()V

    .line 66
    goto :goto_44

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    goto :goto_4a

    .line 69
    :cond_44
    :goto_44
    if-eqz v4, :cond_55

    .line 71
    invoke-static {v4}, Li0/d$a;->a(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_42

    .line 74
    goto :goto_55

    .line 75
    :goto_4a
    monitor-enter v2

    .line 76
    :try_start_4b
    iput-boolean v5, v2, Li0/d;->d:Z

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 81
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_52

    .line 82
    throw v0

    .line 83
    :catchall_52
    move-exception v0

    .line 84
    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    .line 85
    throw v0

    .line 86
    :cond_55
    :goto_55
    monitor-enter v2

    .line 87
    :try_start_56
    iput-boolean v5, v2, Li0/d;->d:Z

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit v2

    .line 93
    goto :goto_1f

    .line 94
    :catchall_5d
    move-exception v0

    .line 95
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_5d

    .line 96
    throw v0

    .line 97
    :catchall_60
    move-exception v0

    .line 98
    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    .line 99
    throw v0

    .line 100
    :cond_63
    :goto_63
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->g:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_27

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "SpecialEffectsController: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " has called complete."

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "FragmentManager"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_27
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->g:Z

    .line 43
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->d:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v0

    .line 49
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_40

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Runnable;

    .line 61
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 64
    goto :goto_30

    .line 65
    :cond_40
    return-void
.end method

.method public final c(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    .registers 8

    .line 1
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$c;->b:[I

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 9
    const/4 v0, 0x1

    .line 10
    const-string v1, "SpecialEffectsController: For fragment "

    .line 12
    const-string v2, "FragmentManager"

    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq p2, v0, :cond_83

    .line 17
    const-string v0, " mFinalState = "

    .line 19
    if-eq p2, v3, :cond_4d

    .line 21
    const/4 v4, 0x3

    .line 22
    if-eq p2, v4, :cond_19

    .line 24
    goto/16 :goto_b6

    .line 26
    :cond_19
    iget-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 28
    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 30
    if-eq p2, v4, :cond_b6

    .line 32
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_4a

    .line 38
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p2

    .line 42
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, " -> "

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, ". "

    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_4a
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 77
    goto :goto_b6

    .line 78
    :cond_4d
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_7a

    .line 84
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object p1

    .line 88
    iget-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string p2, " -> REMOVED. mLifecycleImpact  = "

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    const-string p2, " to REMOVING."

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_7a
    sget-object p1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 125
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 127
    sget-object p1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 129
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 131
    goto :goto_b6

    .line 132
    :cond_83
    iget-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 134
    sget-object p2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 136
    if-ne p1, p2, :cond_b6

    .line 138
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_ae

    .line 144
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object p1

    .line 148
    iget-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    const-string p2, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string p2, " to ADDING."

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_ae
    sget-object p1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 177
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 179
    sget-object p1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 181
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 183
    :cond_b6
    :goto_b6
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "Operation "

    .line 3
    const-string v1, "{"

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "} "

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "mFinalState = "

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "mLifecycleImpact = "

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "mFragment = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "}"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method
