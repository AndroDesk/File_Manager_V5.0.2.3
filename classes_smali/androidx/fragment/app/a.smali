.class public final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/b0;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$j;
.implements Landroidx/fragment/app/FragmentManager$n;


# instance fields
.field public final s:Landroidx/fragment/app/FragmentManager;

.field public t:Z

.field public u:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 7
    if-eqz v1, :cond_11

    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/p;Ljava/lang/ClassLoader;)V

    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Landroidx/fragment/app/a;->u:I

    .line 25
    iput-object p1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1d

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "Run: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "FragmentManager"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1d
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-boolean p1, p0, Landroidx/fragment/app/b0;->i:Z

    .line 40
    if-eqz p1, :cond_3b

    .line 42
    iget-object p1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 44
    iget-object p2, p1, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 46
    if-nez p2, :cond_36

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    .line 50
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object p2, p1, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 55
    :cond_36
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3b
    const/4 p1, 0x1

    .line 61
    return p1
.end method

.method public final d()I
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->q(Z)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
    .registers 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_25

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    .line 14
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " is already attached to a FragmentManager."

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0

    .line 38
    :cond_25
    :goto_25
    new-instance v0, Landroidx/fragment/app/b0$a;

    .line 40
    const/4 v1, 0x6

    .line 41
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 44
    invoke-virtual {p0, v0}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 47
    return-object p0
.end method

.method public final getId()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/a;->u:I

    .line 3
    return v0
.end method

.method public final h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    .line 1
    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {p2, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 8
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_bd

    .line 22
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_bd

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_27

    .line 34
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_bd

    .line 40
    :cond_27
    const-string v0, " now "

    .line 42
    const-string v1, ": was "

    .line 44
    if-eqz p3, :cond_56

    .line 46
    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 48
    if-eqz v2, :cond_54

    .line 50
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_38

    .line 56
    goto :goto_54

    .line 57
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    new-instance p4, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v2, "Can\'t change tag of fragment "

    .line 66
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 77
    invoke-static {p4, p2, v0, p3}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p1

    .line 85
    :cond_54
    :goto_54
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 87
    :cond_56
    if-eqz p1, :cond_b0

    .line 89
    const/4 v2, -0x1

    .line 90
    if-eq p1, v2, :cond_8c

    .line 92
    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 94
    if-eqz p3, :cond_87

    .line 96
    if-ne p3, p1, :cond_62

    .line 98
    goto :goto_87

    .line 99
    :cond_62
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 101
    new-instance p4, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v2, "Can\'t change container ID of fragment "

    .line 108
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget p2, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 119
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p3

    .line 136
    :cond_87
    :goto_87
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 138
    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 140
    goto :goto_b0

    .line 141
    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 143
    new-instance p4, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string v0, "Can\'t add fragment "

    .line 150
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string p2, " with tag "

    .line 158
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string p2, " to container view with no id"

    .line 166
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p1

    .line 177
    :cond_b0
    :goto_b0
    new-instance p1, Landroidx/fragment/app/b0$a;

    .line 179
    invoke-direct {p1, p4, p2}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 182
    invoke-virtual {p0, p1}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 185
    iget-object p1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 187
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 189
    return-void

    .line 190
    :cond_bd
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 192
    const-string p2, "Fragment "

    .line 194
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 201
    move-result-object p3

    .line 202
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string p3, " must be a public static class to be  properly recreated from instance state."

    .line 207
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object p2

    .line 214
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 217
    throw p1
.end method

.method public final i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
    .registers 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_25

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    .line 14
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " is already attached to a FragmentManager."

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0

    .line 38
    :cond_25
    :goto_25
    new-instance v0, Landroidx/fragment/app/b0$a;

    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 44
    invoke-virtual {p0, v0}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 47
    return-object p0
.end method

.method public final j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
    .registers 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_25

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    .line 14
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " is already attached to a FragmentManager."

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0

    .line 38
    :cond_25
    :goto_25
    new-instance v0, Landroidx/fragment/app/b0$a;

    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 44
    invoke-virtual {p0, v0}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 47
    return-object p0
.end method

.method public final m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;
    .registers 6

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 5
    if-ne v0, v1, :cond_53

    .line 7
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    const-string v1, "Cannot set maximum Lifecycle to "

    .line 11
    if-ne p2, v0, :cond_2c

    .line 13
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    .line 15
    const/4 v2, -0x1

    .line 16
    if-gt v0, v2, :cond_12

    .line 18
    goto :goto_2c

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string p2, " after the Fragment has been created"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    :goto_2c
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 47
    if-eq p2, v0, :cond_39

    .line 49
    new-instance v0, Landroidx/fragment/app/b0$a;

    .line 51
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/b0$a;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 57
    return-object p0

    .line 58
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string p2, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction."

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1

    .line 84
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    const-string p2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    .line 88
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    move-result-object p2

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p1
.end method

.method public final n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
    .registers 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_25

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    .line 14
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " is already attached to a FragmentManager."

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0

    .line 38
    :cond_25
    :goto_25
    new-instance v0, Landroidx/fragment/app/b0$a;

    .line 40
    const/4 v1, 0x5

    .line 41
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 44
    invoke-virtual {p0, v0}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 47
    return-object p0
.end method

.method public final o(I)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b0;->i:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 10
    move-result v1

    .line 11
    const-string v2, "FragmentManager"

    .line 13
    if-eqz v1, :cond_2a

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v3, "Bump nesting in "

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " by "

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2a
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x0

    .line 50
    :goto_31
    if-ge v3, v1, :cond_6b

    .line 52
    iget-object v4, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/fragment/app/b0$a;

    .line 60
    iget-object v5, v4, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 62
    if-eqz v5, :cond_68

    .line 64
    iget v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 66
    add-int/2addr v6, p1

    .line 67
    iput v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 69
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_68

    .line 75
    const-string v5, "Bump nesting of "

    .line 77
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v5

    .line 81
    iget-object v6, v4, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v6, " to "

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v4, v4, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 93
    iget v4, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_68
    add-int/lit8 v3, v3, 0x1

    .line 107
    goto :goto_31

    .line 108
    :cond_6b
    return-void
.end method

.method public final p()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->q(Z)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final q(Z)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    .line 3
    if-nez v0, :cond_50

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_34

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v2, "Commit: "

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v2, "FragmentManager"

    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Landroidx/fragment/app/k0;

    .line 37
    invoke-direct {v0}, Landroidx/fragment/app/k0;-><init>()V

    .line 40
    new-instance v2, Ljava/io/PrintWriter;

    .line 42
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 45
    const-string v0, "  "

    .line 47
    invoke-virtual {p0, v0, v2, v1}, Landroidx/fragment/app/a;->s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 50
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 53
    :cond_34
    iput-boolean v1, p0, Landroidx/fragment/app/a;->t:Z

    .line 55
    iget-boolean v0, p0, Landroidx/fragment/app/b0;->i:Z

    .line 57
    if-eqz v0, :cond_45

    .line 59
    iget-object v0, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 61
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 66
    move-result v0

    .line 67
    iput v0, p0, Landroidx/fragment/app/a;->u:I

    .line 69
    goto :goto_48

    .line 70
    :cond_45
    const/4 v0, -0x1

    .line 71
    iput v0, p0, Landroidx/fragment/app/a;->u:I

    .line 73
    :goto_48
    iget-object v0, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 75
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentManager;->v(Landroidx/fragment/app/FragmentManager$n;Z)V

    .line 78
    iget p1, p0, Landroidx/fragment/app/a;->u:I

    .line 80
    return p1

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    const-string v0, "commit already called"

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1
.end method

.method public final r()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->g()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V

    .line 10
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    .line 1
    if-eqz p3, :cond_cc

    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    const-string v0, "mName="

    .line 8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/b0;->k:Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const-string v0, " mIndex="

    .line 18
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Landroidx/fragment/app/a;->u:I

    .line 23
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 26
    const-string v0, " mCommitted="

    .line 28
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    .line 33
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 36
    iget v0, p0, Landroidx/fragment/app/b0;->h:I

    .line 38
    if-eqz v0, :cond_38

    .line 40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    const-string v0, "mTransition=#"

    .line 45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    iget v0, p0, Landroidx/fragment/app/b0;->h:I

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    :cond_38
    iget v0, p0, Landroidx/fragment/app/b0;->d:I

    .line 59
    if-nez v0, :cond_40

    .line 61
    iget v0, p0, Landroidx/fragment/app/b0;->e:I

    .line 63
    if-eqz v0, :cond_5f

    .line 65
    :cond_40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    const-string v0, "mEnterAnim=#"

    .line 70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroidx/fragment/app/b0;->d:I

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    const-string v0, " mExitAnim=#"

    .line 84
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroidx/fragment/app/b0;->e:I

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    :cond_5f
    iget v0, p0, Landroidx/fragment/app/b0;->f:I

    .line 98
    if-nez v0, :cond_67

    .line 100
    iget v0, p0, Landroidx/fragment/app/b0;->g:I

    .line 102
    if-eqz v0, :cond_86

    .line 104
    :cond_67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    const-string v0, "mPopEnterAnim=#"

    .line 109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Landroidx/fragment/app/b0;->f:I

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    const-string v0, " mPopExitAnim=#"

    .line 123
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Landroidx/fragment/app/b0;->g:I

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    :cond_86
    iget v0, p0, Landroidx/fragment/app/b0;->l:I

    .line 137
    if-nez v0, :cond_8e

    .line 139
    iget-object v0, p0, Landroidx/fragment/app/b0;->m:Ljava/lang/CharSequence;

    .line 141
    if-eqz v0, :cond_a9

    .line 143
    :cond_8e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    const-string v0, "mBreadCrumbTitleRes=#"

    .line 148
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Landroidx/fragment/app/b0;->l:I

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    const-string v0, " mBreadCrumbTitleText="

    .line 162
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroidx/fragment/app/b0;->m:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    :cond_a9
    iget v0, p0, Landroidx/fragment/app/b0;->n:I

    .line 172
    if-nez v0, :cond_b1

    .line 174
    iget-object v0, p0, Landroidx/fragment/app/b0;->o:Ljava/lang/CharSequence;

    .line 176
    if-eqz v0, :cond_cc

    .line 178
    :cond_b1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    const-string v0, "mBreadCrumbShortTitleRes=#"

    .line 183
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget v0, p0, Landroidx/fragment/app/b0;->n:I

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    const-string v0, " mBreadCrumbShortTitleText="

    .line 197
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Landroidx/fragment/app/b0;->o:Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 205
    :cond_cc
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_193

    .line 213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string v0, "Operations:"

    .line 218
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 226
    move-result v0

    .line 227
    const/4 v1, 0x0

    .line 228
    :goto_e3
    if-ge v1, v0, :cond_193

    .line 230
    iget-object v2, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Landroidx/fragment/app/b0$a;

    .line 238
    iget v3, v2, Landroidx/fragment/app/b0$a;->a:I

    .line 240
    packed-switch v3, :pswitch_data_194

    .line 243
    const-string v3, "cmd="

    .line 245
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    move-result-object v3

    .line 249
    iget v4, v2, Landroidx/fragment/app/b0$a;->a:I

    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v3

    .line 258
    goto :goto_122

    .line 259
    :pswitch_102  #0xa
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    .line 261
    goto :goto_122

    .line 262
    :pswitch_105  #0x9
    const-string v3, "UNSET_PRIMARY_NAV"

    .line 264
    goto :goto_122

    .line 265
    :pswitch_108  #0x8
    const-string v3, "SET_PRIMARY_NAV"

    .line 267
    goto :goto_122

    .line 268
    :pswitch_10b  #0x7
    const-string v3, "ATTACH"

    .line 270
    goto :goto_122

    .line 271
    :pswitch_10e  #0x6
    const-string v3, "DETACH"

    .line 273
    goto :goto_122

    .line 274
    :pswitch_111  #0x5
    const-string v3, "SHOW"

    .line 276
    goto :goto_122

    .line 277
    :pswitch_114  #0x4
    const-string v3, "HIDE"

    .line 279
    goto :goto_122

    .line 280
    :pswitch_117  #0x3
    const-string v3, "REMOVE"

    .line 282
    goto :goto_122

    .line 283
    :pswitch_11a  #0x2
    const-string v3, "REPLACE"

    .line 285
    goto :goto_122

    .line 286
    :pswitch_11d  #0x1
    const-string v3, "ADD"

    .line 288
    goto :goto_122

    .line 289
    :pswitch_120  #0x0
    const-string v3, "NULL"

    .line 291
    :goto_122
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    const-string v4, "  Op #"

    .line 296
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 302
    const-string v4, ": "

    .line 304
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v3, " "

    .line 312
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-object v3, v2, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 317
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 320
    if-eqz p3, :cond_18f

    .line 322
    iget v3, v2, Landroidx/fragment/app/b0$a;->d:I

    .line 324
    if-nez v3, :cond_149

    .line 326
    iget v3, v2, Landroidx/fragment/app/b0$a;->e:I

    .line 328
    if-eqz v3, :cond_168

    .line 330
    :cond_149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const-string v3, "enterAnim=#"

    .line 335
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget v3, v2, Landroidx/fragment/app/b0$a;->d:I

    .line 340
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    const-string v3, " exitAnim=#"

    .line 349
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget v3, v2, Landroidx/fragment/app/b0$a;->e:I

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    :cond_168
    iget v3, v2, Landroidx/fragment/app/b0$a;->f:I

    .line 363
    if-nez v3, :cond_170

    .line 365
    iget v3, v2, Landroidx/fragment/app/b0$a;->g:I

    .line 367
    if-eqz v3, :cond_18f

    .line 369
    :cond_170
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string v3, "popEnterAnim=#"

    .line 374
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    iget v3, v2, Landroidx/fragment/app/b0$a;->f:I

    .line 379
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    const-string v3, " popExitAnim=#"

    .line 388
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    iget v2, v2, Landroidx/fragment/app/b0$a;->g:I

    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :cond_18f
    add-int/lit8 v1, v1, 0x1

    .line 402
    goto/16 :goto_e3

    .line 404
    :cond_193
    return-void

    .line 405
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_120  #00000000
        :pswitch_11d  #00000001
        :pswitch_11a  #00000002
        :pswitch_117  #00000003
        :pswitch_114  #00000004
        :pswitch_111  #00000005
        :pswitch_10e  #00000006
        :pswitch_10b  #00000007
        :pswitch_108  #00000008
        :pswitch_105  #00000009
        :pswitch_102  #0000000a
    .end packed-switch
.end method

.method public final t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
    .registers 4

    .line 1
    if-eqz p1, :cond_27

    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    if-eqz v0, :cond_27

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_27

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    const-string v1, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    .line 16
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, " is already attached to a FragmentManager."

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0

    .line 40
    :cond_27
    :goto_27
    new-instance v0, Landroidx/fragment/app/b0$a;

    .line 42
    const/16 v1, 0x8

    .line 44
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 47
    invoke-virtual {p0, v0}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 50
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    const-string v1, "BackStackEntry{"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Landroidx/fragment/app/a;->u:I

    .line 26
    if-ltz v1, :cond_25

    .line 28
    const-string v1, " #"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Landroidx/fragment/app/a;->u:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    :cond_25
    iget-object v1, p0, Landroidx/fragment/app/b0;->k:Ljava/lang/String;

    .line 40
    if-eqz v1, :cond_33

    .line 42
    const-string v1, " "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Landroidx/fragment/app/b0;->k:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_33
    const-string v1, "}"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
