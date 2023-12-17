.class public final Landroidx/fragment/app/y;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"


# instance fields
.field public final a:Landroidx/fragment/app/s;

.field public final b:Landroidx/fragment/app/a0;

.field public final c:Landroidx/fragment/app/Fragment;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/s;Landroidx/fragment/app/a0;Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/y;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/y;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/s;Landroidx/fragment/app/a0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroidx/fragment/app/y;->d:Z

    const/4 v1, -0x1

    .line 36
    iput v1, p0, Landroidx/fragment/app/y;->e:I

    .line 37
    iput-object p1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 38
    iput-object p2, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 39
    iput-object p3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 41
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 42
    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 43
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 44
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 45
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_21

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_22

    :cond_21
    move-object p2, p1

    :goto_22
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 46
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 47
    iget-object p1, p4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_2d

    .line 48
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_34

    .line 49
    :cond_2d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :goto_34
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/s;Landroidx/fragment/app/a0;Ljava/lang/ClassLoader;Landroidx/fragment/app/p;Landroidx/fragment/app/FragmentState;)V
    .registers 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/y;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/y;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 12
    iget-object p1, p5, Landroidx/fragment/app/FragmentState;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p4, p3, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 14
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_1a

    .line 15
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 16
    :cond_1a
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 18
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 20
    iget p2, p5, Landroidx/fragment/app/FragmentState;->d:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 21
    iget p2, p5, Landroidx/fragment/app/FragmentState;->e:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 22
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 23
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 24
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 26
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 27
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/FragmentState;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_57

    .line 29
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_5e

    .line 30
    :cond_57
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 31
    :goto_5e
    iput-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x2

    .line 32
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "moveto ACTIVITY_CREATED: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 37
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 39
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 45
    return-void
.end method

.method public final b()V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_d

    .line 13
    goto :goto_4f

    .line 14
    :cond_d
    iget-object v4, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 19
    move-result v1

    .line 20
    add-int/lit8 v4, v1, -0x1

    .line 22
    :goto_15
    if-ltz v4, :cond_31

    .line 24
    iget-object v5, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 32
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 34
    if-ne v6, v2, :cond_2e

    .line 36
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 38
    if-eqz v5, :cond_2e

    .line 40
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 43
    move-result v0

    .line 44
    add-int/lit8 v3, v0, 0x1

    .line 46
    goto :goto_4f

    .line 47
    :cond_2e
    add-int/lit8 v4, v4, -0x1

    .line 49
    goto :goto_15

    .line 50
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 52
    iget-object v4, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v4

    .line 58
    if-ge v1, v4, :cond_4f

    .line 60
    iget-object v4, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 68
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 70
    if-ne v5, v2, :cond_31

    .line 72
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 74
    if-eqz v4, :cond_31

    .line 76
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 79
    move-result v3

    .line 80
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 82
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 84
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 86
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 89
    return-void
.end method

.method public final c()V
    .registers 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "moveto ATTACHED: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 32
    const-string v2, " that does not belong to this FragmentManager!"

    .line 34
    const-string v3, " declared target fragment "

    .line 36
    const-string v4, "Fragment "

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v1, :cond_62

    .line 41
    iget-object v0, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 43
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 45
    iget-object v0, v0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/fragment/app/y;

    .line 53
    if-eqz v0, :cond_42

    .line 55
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 57
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 59
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 61
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 63
    iput-object v5, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 65
    move-object v5, v0

    .line 66
    goto :goto_8e

    .line 67
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v1

    .line 73
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 83
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v0

    .line 99
    :cond_62
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 101
    if-eqz v0, :cond_8e

    .line 103
    iget-object v1, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 105
    iget-object v1, v1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    move-object v5, v0

    .line 112
    check-cast v5, Landroidx/fragment/app/y;

    .line 114
    if-eqz v5, :cond_74

    .line 116
    goto :goto_8e

    .line 117
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 119
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    move-result-object v1

    .line 123
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 133
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 135
    invoke-static {v1, v3, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0

    .line 143
    :cond_8e
    :goto_8e
    if-eqz v5, :cond_93

    .line 145
    invoke-virtual {v5}, Landroidx/fragment/app/y;->k()V

    .line 148
    :cond_93
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 150
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 152
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 154
    iput-object v2, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 156
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 158
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 160
    iget-object v1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/s;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 166
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 168
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 171
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 173
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 175
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 178
    return-void
.end method

.method public final d()I
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    if-nez v1, :cond_9

    .line 7
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 9
    return v0

    .line 10
    :cond_9
    iget v1, p0, Landroidx/fragment/app/y;->e:I

    .line 12
    sget-object v2, Landroidx/fragment/app/y$b;->a:[I

    .line 14
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v0

    .line 20
    aget v0, v2, v0

    .line 22
    const/4 v2, -0x1

    .line 23
    const/4 v3, 0x5

    .line 24
    const/4 v4, 0x3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x1

    .line 28
    if-eq v0, v7, :cond_37

    .line 30
    if-eq v0, v6, :cond_33

    .line 32
    if-eq v0, v4, :cond_2e

    .line 34
    if-eq v0, v5, :cond_28

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result v1

    .line 40
    goto :goto_37

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result v1

    .line 46
    goto :goto_37

    .line 47
    :cond_2e
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 50
    move-result v1

    .line 51
    goto :goto_37

    .line 52
    :cond_33
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 55
    move-result v1

    .line 56
    :cond_37
    :goto_37
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 58
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 60
    if-eqz v8, :cond_67

    .line 62
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 64
    if-eqz v8, :cond_58

    .line 66
    iget v0, p0, Landroidx/fragment/app/y;->e:I

    .line 68
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 71
    move-result v1

    .line 72
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 74
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 76
    if-eqz v0, :cond_67

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_67

    .line 84
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 87
    move-result v1

    .line 88
    goto :goto_67

    .line 89
    :cond_58
    iget v8, p0, Landroidx/fragment/app/y;->e:I

    .line 91
    if-ge v8, v5, :cond_63

    .line 93
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 95
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 98
    move-result v1

    .line 99
    goto :goto_67

    .line 100
    :cond_63
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 103
    move-result v1

    .line 104
    :cond_67
    :goto_67
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 106
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 108
    if-nez v0, :cond_71

    .line 110
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 113
    move-result v1

    .line 114
    :cond_71
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 116
    iget-object v8, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 118
    const/4 v9, 0x0

    .line 119
    if-eqz v8, :cond_bc

    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v8, v0}, Landroidx/fragment/app/SpecialEffectsController;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    iget-object v8, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 134
    invoke-virtual {v0, v8}, Landroidx/fragment/app/SpecialEffectsController;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 137
    move-result-object v8

    .line 138
    if-eqz v8, :cond_8e

    .line 140
    iget-object v8, v8, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 142
    goto :goto_8f

    .line 143
    :cond_8e
    move-object v8, v9

    .line 144
    :goto_8f
    iget-object v10, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 146
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController;->c:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    move-result-object v0

    .line 152
    :cond_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_b0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    move-result-object v11

    .line 162
    check-cast v11, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 164
    iget-object v12, v11, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 166
    invoke-virtual {v12, v10}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v12

    .line 170
    if-eqz v12, :cond_97

    .line 172
    iget-boolean v12, v11, Landroidx/fragment/app/SpecialEffectsController$Operation;->f:Z

    .line 174
    if-nez v12, :cond_97

    .line 176
    move-object v9, v11

    .line 177
    :cond_b0
    if-eqz v9, :cond_bb

    .line 179
    if-eqz v8, :cond_b8

    .line 181
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 183
    if-ne v8, v0, :cond_bb

    .line 185
    :cond_b8
    iget-object v9, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move-object v9, v8

    .line 189
    :cond_bc
    :goto_bc
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 191
    if-ne v9, v0, :cond_c6

    .line 193
    const/4 v0, 0x6

    .line 194
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 197
    move-result v1

    .line 198
    goto :goto_e4

    .line 199
    :cond_c6
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 201
    if-ne v9, v0, :cond_cf

    .line 203
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 206
    move-result v1

    .line 207
    goto :goto_e4

    .line 208
    :cond_cf
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 210
    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 212
    if-eqz v4, :cond_e4

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_e0

    .line 220
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 223
    move-result v1

    .line 224
    goto :goto_e4

    .line 225
    :cond_e0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 228
    move-result v1

    .line 229
    :cond_e4
    :goto_e4
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 231
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 233
    if-eqz v2, :cond_f2

    .line 235
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 237
    if-ge v0, v3, :cond_f2

    .line 239
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 242
    move-result v1

    .line 243
    :cond_f2
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_10e

    .line 249
    const-string v0, "computeExpectedState() of "

    .line 251
    const-string v2, " for "

    .line 253
    invoke-static {v0, v1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    move-result-object v0

    .line 257
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 266
    const-string v2, "FragmentManager"

    .line 268
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_10e
    return v1
.end method

.method public final e()V
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "moveto CREATED: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 32
    if-nez v1, :cond_3a

    .line 34
    iget-object v1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 36
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/s;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 42
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 44
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 46
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 51
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 53
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/s;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 58
    goto :goto_44

    .line 59
    :cond_3a
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 61
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 66
    const/4 v1, 0x1

    .line 67
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 69
    :goto_44
    return-void
.end method

.method public final f()V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "FragmentManager"

    .line 15
    if-eqz v0, :cond_22

    .line 17
    const-string v0, "moveto CREATE_VIEW: "

    .line 19
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 37
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 39
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x0

    .line 44
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 46
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 48
    if-eqz v4, :cond_34

    .line 50
    move-object v2, v4

    .line 51
    goto/16 :goto_d8

    .line 53
    :cond_34
    iget v4, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 55
    if-eqz v4, :cond_d8

    .line 57
    const/4 v2, -0x1

    .line 58
    if-eq v4, v2, :cond_be

    .line 60
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 62
    iget-object v2, v2, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/n;

    .line 64
    invoke-virtual {v2, v4}, Landroidx/fragment/app/n;->onFindViewById(I)Landroid/view/View;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/view/ViewGroup;

    .line 70
    if-nez v2, :cond_8b

    .line 72
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 74
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 76
    if-eqz v4, :cond_4f

    .line 78
    goto/16 :goto_d8

    .line 80
    :cond_4f
    :try_start_4f
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 86
    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 91
    move-result-object v0
    :try_end_5b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4f .. :try_end_5b} :catch_5c

    .line 92
    goto :goto_5e

    .line 93
    :catch_5c
    const-string v0, "unknown"

    .line 95
    :goto_5e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 97
    const-string v2, "No view found for id 0x"

    .line 99
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object v2

    .line 103
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 105
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v3, " ("

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, ") for fragment "

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v1

    .line 140
    :cond_8b
    instance-of v3, v2, Landroidx/fragment/app/FragmentContainerView;

    .line 142
    if-nez v3, :cond_d8

    .line 144
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 146
    sget-object v4, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 148
    const-string v4, "fragment"

    .line 150
    invoke-static {v3, v4}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v4, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;

    .line 155
    invoke-direct {v4, v3, v2}, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    .line 158
    invoke-static {v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 161
    invoke-static {v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 164
    move-result-object v5

    .line 165
    iget-object v6, v5, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 167
    sget-object v7, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 169
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_d8

    .line 175
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    move-result-object v3

    .line 179
    const-class v6, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;

    .line 181
    invoke-static {v5, v3, v6}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_d8

    .line 187
    invoke-static {v5, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 190
    goto :goto_d8

    .line 191
    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 193
    const-string v1, "Cannot create fragment "

    .line 195
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    move-result-object v1

    .line 199
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, " for a container view with no id"

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    throw v0

    .line 217
    :cond_d8
    :goto_d8
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 219
    iput-object v2, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 221
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 223
    invoke-virtual {v3, v0, v2, v4}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 226
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 228
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 230
    const/4 v3, 0x2

    .line 231
    if-eqz v0, :cond_18d

    .line 233
    const/4 v4, 0x0

    .line 234
    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 237
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 239
    iget-object v5, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 241
    sget v6, Lw0/b;->fragment_container_view_tag:I

    .line 243
    invoke-virtual {v5, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 246
    if-eqz v2, :cond_fa

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/y;->b()V

    .line 251
    :cond_fa
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 253
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 255
    if-eqz v2, :cond_107

    .line 257
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 259
    const/16 v2, 0x8

    .line 261
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_107
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 266
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 268
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 270
    invoke-static {v0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_11b

    .line 276
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 278
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 280
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 283
    goto :goto_127

    .line 284
    :cond_11b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 286
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 288
    new-instance v2, Landroidx/fragment/app/y$a;

    .line 290
    invoke-direct {v2, v0}, Landroidx/fragment/app/y$a;-><init>(Landroid/view/View;)V

    .line 293
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 296
    :goto_127
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 298
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 301
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 303
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 305
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 307
    iget-object v6, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 309
    invoke-virtual {v0, v2, v5, v6, v4}, Landroidx/fragment/app/s;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 312
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 314
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 319
    move-result v0

    .line 320
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 322
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 327
    move-result v2

    .line 328
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 330
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    .line 333
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 335
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 337
    if-eqz v4, :cond_18d

    .line 339
    if-nez v0, :cond_18d

    .line 341
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 346
    move-result-object v0

    .line 347
    if-eqz v0, :cond_185

    .line 349
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 351
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 354
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_185

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    const-string v4, "requestFocus: Saved focused view "

    .line 367
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    const-string v0, " for Fragment "

    .line 375
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 380
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object v0

    .line 387
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_185
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 392
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 394
    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    :cond_18d
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 400
    iput v3, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 402
    return-void
.end method

.method public final g()V
    .registers 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "movefrom CREATED: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_2b

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2b

    .line 42
    move v0, v3

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v0, v2

    .line 45
    :goto_2c
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_3c

    .line 48
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 50
    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 52
    if-nez v5, :cond_3c

    .line 54
    iget-object v5, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 56
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 58
    invoke-virtual {v5, v4, v1}, Landroidx/fragment/app/a0;->i(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 61
    :cond_3c
    if-nez v0, :cond_5c

    .line 63
    iget-object v4, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 65
    iget-object v4, v4, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 67
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 69
    iget-object v6, v4, Landroidx/fragment/app/v;->a:Ljava/util/HashMap;

    .line 71
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 73
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_4f

    .line 79
    goto :goto_56

    .line 80
    :cond_4f
    iget-boolean v5, v4, Landroidx/fragment/app/v;->d:Z

    .line 82
    if-eqz v5, :cond_56

    .line 84
    iget-boolean v4, v4, Landroidx/fragment/app/v;->e:Z

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    :goto_56
    move v4, v3

    .line 88
    :goto_57
    if-eqz v4, :cond_5a

    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    move v4, v2

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    :goto_5c
    move v4, v3

    .line 94
    :goto_5d
    if-eqz v4, :cond_e1

    .line 96
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 98
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 100
    instance-of v5, v4, Landroidx/lifecycle/f0;

    .line 102
    if-eqz v5, :cond_6e

    .line 104
    iget-object v3, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 106
    iget-object v3, v3, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 108
    iget-boolean v3, v3, Landroidx/fragment/app/v;->e:Z

    .line 110
    goto :goto_81

    .line 111
    :cond_6e
    invoke-virtual {v4}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v5

    .line 115
    instance-of v5, v5, Landroid/app/Activity;

    .line 117
    if-eqz v5, :cond_81

    .line 119
    invoke-virtual {v4}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Landroid/app/Activity;

    .line 125
    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 128
    move-result v4

    .line 129
    xor-int/2addr v3, v4

    .line 130
    :cond_81
    :goto_81
    if-eqz v0, :cond_89

    .line 132
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 134
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 136
    if-eqz v0, :cond_8b

    .line 138
    :cond_89
    if-eqz v3, :cond_94

    .line 140
    :cond_8b
    iget-object v0, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 142
    iget-object v0, v0, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 144
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 146
    invoke-virtual {v0, v3}, Landroidx/fragment/app/v;->b(Landroidx/fragment/app/Fragment;)V

    .line 149
    :cond_94
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 151
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 154
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 156
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 158
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/s;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 161
    iget-object v0, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 163
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->d()Ljava/util/ArrayList;

    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v0

    .line 171
    :cond_aa
    :goto_aa
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_cd

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Landroidx/fragment/app/y;

    .line 183
    if-eqz v2, :cond_aa

    .line 185
    iget-object v2, v2, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 187
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 189
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 191
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_aa

    .line 199
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 201
    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 203
    iput-object v1, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 205
    goto :goto_aa

    .line 206
    :cond_cd
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 208
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 210
    if-eqz v1, :cond_db

    .line 212
    iget-object v2, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 214
    invoke-virtual {v2, v1}, Landroidx/fragment/app/a0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 217
    move-result-object v1

    .line 218
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 220
    :cond_db
    iget-object v0, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 222
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a0;->h(Landroidx/fragment/app/y;)V

    .line 225
    goto :goto_fb

    .line 226
    :cond_e1
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 228
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 230
    if-eqz v0, :cond_f7

    .line 232
    iget-object v1, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 234
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_f7

    .line 240
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 242
    if-eqz v1, :cond_f7

    .line 244
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 246
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 248
    :cond_f7
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 250
    iput v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 252
    :goto_fb
    return-void
.end method

.method public final h()V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "movefrom CREATE_VIEW: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 32
    if-eqz v1, :cond_28

    .line 34
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 36
    if-eqz v0, :cond_28

    .line 38
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    :cond_28
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 46
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 48
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->n(Landroidx/fragment/app/Fragment;Z)V

    .line 54
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 56
    const/4 v1, 0x0

    .line 57
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 59
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 61
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 63
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/q;

    .line 65
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 70
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 72
    return-void
.end method

.method public final i()V
    .registers 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 8
    if-eqz v1, :cond_1b

    .line 10
    const-string v1, "movefrom ATTACHED: "

    .line 12
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v1

    .line 16
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 35
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/s;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 41
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 43
    const/4 v3, -0x1

    .line 44
    iput v3, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 46
    const/4 v3, 0x0

    .line 47
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 49
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 51
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 53
    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 55
    const/4 v5, 0x1

    .line 56
    if-eqz v3, :cond_40

    .line 58
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_40

    .line 64
    move v4, v5

    .line 65
    :cond_40
    if-nez v4, :cond_5b

    .line 67
    iget-object v1, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 69
    iget-object v1, v1, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 71
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 73
    iget-object v4, v1, Landroidx/fragment/app/v;->a:Ljava/util/HashMap;

    .line 75
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 77
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_53

    .line 83
    goto :goto_59

    .line 84
    :cond_53
    iget-boolean v3, v1, Landroidx/fragment/app/v;->d:Z

    .line 86
    if-eqz v3, :cond_59

    .line 88
    iget-boolean v5, v1, Landroidx/fragment/app/v;->e:Z

    .line 90
    :cond_59
    :goto_59
    if-eqz v5, :cond_78

    .line 92
    :cond_5b
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_73

    .line 98
    const-string v0, "initState called for fragment: "

    .line 100
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_73
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 118
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->initState()V

    .line 121
    :cond_78
    return-void
.end method

.method public final j()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 5
    if-eqz v1, :cond_6e

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 9
    if-eqz v1, :cond_6e

    .line 11
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 13
    if-nez v0, :cond_6e

    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_29

    .line 22
    const-string v0, "moveto CREATE_VIEW: "

    .line 24
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "FragmentManager"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_29
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 44
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 46
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x0

    .line 51
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 53
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 60
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 62
    if-eqz v0, :cond_6e

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 68
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 70
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 72
    sget v3, Lw0/b;->fragment_container_view_tag:I

    .line 74
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 79
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 81
    if-eqz v2, :cond_59

    .line 83
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 85
    const/16 v2, 0x8

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_59
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 97
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 99
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 101
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 103
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/s;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 106
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 108
    const/4 v1, 0x2

    .line 109
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 111
    :cond_6e
    return-void
.end method

.method public final k()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/y;->d:Z

    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "FragmentManager"

    .line 6
    if-eqz v0, :cond_20

    .line 8
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1f

    .line 14
    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 16
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1f
    return-void

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    :try_start_22
    iput-boolean v3, p0, Landroidx/fragment/app/y;->d:Z

    .line 37
    move v4, v0

    .line 38
    :goto_25
    invoke-virtual {p0}, Landroidx/fragment/app/y;->d()I

    .line 41
    move-result v5

    .line 42
    iget-object v6, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 44
    iget v7, v6, Landroidx/fragment/app/Fragment;->mState:I

    .line 46
    const/4 v8, 0x3

    .line 47
    if-eq v5, v7, :cond_156

    .line 49
    if-le v5, v7, :cond_a6

    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 53
    packed-switch v7, :pswitch_data_248

    .line 56
    goto/16 :goto_153

    .line 58
    :pswitch_39  #0x7
    invoke-virtual {p0}, Landroidx/fragment/app/y;->n()V

    .line 61
    goto/16 :goto_153

    .line 63
    :pswitch_3e  #0x6
    const/4 v4, 0x6

    .line 64
    iput v4, v6, Landroidx/fragment/app/Fragment;->mState:I

    .line 66
    goto/16 :goto_153

    .line 68
    :pswitch_43  #0x5
    invoke-virtual {p0}, Landroidx/fragment/app/y;->r()V

    .line 71
    goto/16 :goto_153

    .line 73
    :pswitch_48  #0x4
    iget-object v4, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 75
    if-eqz v4, :cond_88

    .line 77
    iget-object v4, v6, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 79
    if-eqz v4, :cond_88

    .line 81
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 84
    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Landroidx/fragment/app/SpecialEffectsController;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 88
    move-result-object v4

    .line 89
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 91
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 96
    move-result v5

    .line 97
    invoke-static {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_83

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v7, "SpecialEffectsController: Enqueuing add operation for fragment "

    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v7, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v6

    .line 129
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_83
    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 134
    invoke-virtual {v4, v5, v6, p0}, Landroidx/fragment/app/SpecialEffectsController;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;)V

    .line 137
    :cond_88
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 139
    const/4 v5, 0x4

    .line 140
    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    .line 142
    goto/16 :goto_153

    .line 144
    :pswitch_8f  #0x3
    invoke-virtual {p0}, Landroidx/fragment/app/y;->a()V

    .line 147
    goto/16 :goto_153

    .line 149
    :pswitch_94  #0x2
    invoke-virtual {p0}, Landroidx/fragment/app/y;->j()V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/y;->f()V

    .line 155
    goto/16 :goto_153

    .line 157
    :pswitch_9c  #0x1
    invoke-virtual {p0}, Landroidx/fragment/app/y;->e()V

    .line 160
    goto/16 :goto_153

    .line 162
    :pswitch_a1  #0x0
    invoke-virtual {p0}, Landroidx/fragment/app/y;->c()V

    .line 165
    goto/16 :goto_153

    .line 167
    :cond_a6
    add-int/lit8 v7, v7, -0x1

    .line 169
    packed-switch v7, :pswitch_data_25c

    .line 172
    goto/16 :goto_153

    .line 174
    :pswitch_ad  #0x6
    invoke-virtual {p0}, Landroidx/fragment/app/y;->l()V

    .line 177
    goto/16 :goto_153

    .line 179
    :pswitch_b2  #0x5
    const/4 v4, 0x5

    .line 180
    iput v4, v6, Landroidx/fragment/app/Fragment;->mState:I

    .line 182
    goto/16 :goto_153

    .line 184
    :pswitch_b7  #0x4
    invoke-virtual {p0}, Landroidx/fragment/app/y;->s()V

    .line 187
    goto/16 :goto_153

    .line 189
    :pswitch_bc  #0x3
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_d8

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string v5, "movefrom ACTIVITY_CREATED: "

    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v4

    .line 214
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_d8
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 219
    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 221
    if-eqz v5, :cond_e2

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/y;->p()V

    .line 226
    goto :goto_ed

    .line 227
    :cond_e2
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 229
    if-eqz v5, :cond_ed

    .line 231
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 233
    if-nez v4, :cond_ed

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/y;->q()V

    .line 238
    :cond_ed
    :goto_ed
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 240
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 242
    if-eqz v5, :cond_125

    .line 244
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 246
    if-eqz v5, :cond_125

    .line 248
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 251
    move-result-object v4

    .line 252
    invoke-static {v5, v4}, Landroidx/fragment/app/SpecialEffectsController;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_11e

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    const-string v6, "SpecialEffectsController: Enqueuing remove operation for fragment "

    .line 272
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v6, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v5

    .line 284
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_11e
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 289
    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 291
    invoke-virtual {v4, v5, v6, p0}, Landroidx/fragment/app/SpecialEffectsController;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;)V

    .line 294
    :cond_125
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 296
    iput v8, v4, Landroidx/fragment/app/Fragment;->mState:I

    .line 298
    goto :goto_153

    .line 299
    :pswitch_12a  #0x2
    iput-boolean v0, v6, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 301
    iput v1, v6, Landroidx/fragment/app/Fragment;->mState:I

    .line 303
    goto :goto_153

    .line 304
    :pswitch_12f  #0x1
    invoke-virtual {p0}, Landroidx/fragment/app/y;->h()V

    .line 307
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 309
    iput v3, v4, Landroidx/fragment/app/Fragment;->mState:I

    .line 311
    goto :goto_153

    .line 312
    :pswitch_137  #0x0
    iget-boolean v4, v6, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 314
    if-eqz v4, :cond_14c

    .line 316
    iget-object v4, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 318
    iget-object v5, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 320
    iget-object v4, v4, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 322
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-result-object v4

    .line 326
    check-cast v4, Landroidx/fragment/app/FragmentState;

    .line 328
    if-nez v4, :cond_14c

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/y;->p()V

    .line 333
    :cond_14c
    invoke-virtual {p0}, Landroidx/fragment/app/y;->g()V

    .line 336
    goto :goto_153

    .line 337
    :pswitch_150  #0xffffffff
    invoke-virtual {p0}, Landroidx/fragment/app/y;->i()V

    .line 340
    :goto_153
    move v4, v3

    .line 341
    goto/16 :goto_25

    .line 343
    :cond_156
    if-nez v4, :cond_1b6

    .line 345
    const/4 v4, -0x1

    .line 346
    if-ne v7, v4, :cond_1b6

    .line 348
    iget-boolean v4, v6, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 350
    if-eqz v4, :cond_1b6

    .line 352
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 355
    move-result v4

    .line 356
    if-nez v4, :cond_1b6

    .line 358
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 360
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 362
    if-nez v4, :cond_1b6

    .line 364
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_187

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    .line 372
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    const-string v5, "Cleaning up state of never attached fragment: "

    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 382
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object v4

    .line 389
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_187
    iget-object v4, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 394
    iget-object v4, v4, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 396
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 398
    invoke-virtual {v4, v5}, Landroidx/fragment/app/v;->b(Landroidx/fragment/app/Fragment;)V

    .line 401
    iget-object v4, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 403
    invoke-virtual {v4, p0}, Landroidx/fragment/app/a0;->h(Landroidx/fragment/app/y;)V

    .line 406
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 409
    move-result v4

    .line 410
    if-eqz v4, :cond_1b1

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    const-string v5, "initState called for fragment: "

    .line 419
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v4

    .line 431
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1b1
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 436
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->initState()V

    .line 439
    :cond_1b6
    iget-object v4, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 441
    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 443
    if-eqz v5, :cond_241

    .line 445
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 447
    if-eqz v5, :cond_21f

    .line 449
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 451
    if-eqz v5, :cond_21f

    .line 453
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 456
    move-result-object v4

    .line 457
    invoke-static {v5, v4}, Landroidx/fragment/app/SpecialEffectsController;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 460
    move-result-object v4

    .line 461
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 463
    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 465
    if-eqz v5, :cond_1f9

    .line 467
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_1f1

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    .line 478
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    const-string v5, "SpecialEffectsController: Enqueuing hide operation for fragment "

    .line 483
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 488
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    move-result-object v1

    .line 495
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1f1
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 500
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 502
    invoke-virtual {v4, v1, v2, p0}, Landroidx/fragment/app/SpecialEffectsController;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;)V

    .line 505
    goto :goto_21f

    .line 506
    :cond_1f9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 512
    move-result v1

    .line 513
    if-eqz v1, :cond_218

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    .line 517
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    const-string v5, "SpecialEffectsController: Enqueuing show operation for fragment "

    .line 522
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 527
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    move-result-object v1

    .line 534
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_218
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 539
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 541
    invoke-virtual {v4, v1, v2, p0}, Landroidx/fragment/app/SpecialEffectsController;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;)V

    .line 544
    :cond_21f
    :goto_21f
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 546
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 548
    if-eqz v2, :cond_231

    .line 550
    iget-boolean v4, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 552
    if-eqz v4, :cond_231

    .line 554
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)Z

    .line 557
    move-result v1

    .line 558
    if-eqz v1, :cond_231

    .line 560
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 562
    :cond_231
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 564
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 566
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 568
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 571
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 573
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 575
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->n()V
    :try_end_241
    .catchall {:try_start_22 .. :try_end_241} :catchall_244

    .line 578
    :cond_241
    iput-boolean v0, p0, Landroidx/fragment/app/y;->d:Z

    .line 580
    return-void

    .line 581
    :catchall_244
    move-exception v1

    .line 582
    iput-boolean v0, p0, Landroidx/fragment/app/y;->d:Z

    .line 584
    throw v1

    .line 585
    :pswitch_data_248
    .packed-switch 0x0
        :pswitch_a1  #00000000
        :pswitch_9c  #00000001
        :pswitch_94  #00000002
        :pswitch_8f  #00000003
        :pswitch_48  #00000004
        :pswitch_43  #00000005
        :pswitch_3e  #00000006
        :pswitch_39  #00000007
    .end packed-switch

    .line 605
    :pswitch_data_25c
    .packed-switch -0x1
        :pswitch_150  #ffffffff
        :pswitch_137  #00000000
        :pswitch_12f  #00000001
        :pswitch_12a  #00000002
        :pswitch_bc  #00000003
        :pswitch_b7  #00000004
        :pswitch_b2  #00000005
        :pswitch_ad  #00000006
    .end packed-switch
.end method

.method public final l()V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "movefrom RESUMED: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 33
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 35
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->f(Landroidx/fragment/app/Fragment;Z)V

    .line 41
    return-void
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 11
    iget-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 13
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 15
    const-string v1, "android:view_state"

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 23
    iget-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 25
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 27
    const-string v1, "android:view_registry_state"

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 35
    iget-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 37
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 39
    const-string v1, "android:target_state"

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 49
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 51
    if-eqz v0, :cond_3f

    .line 53
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 55
    const/4 v1, 0x0

    .line 56
    const-string v2, "android:target_req_state"

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 61
    move-result v0

    .line 62
    iput v0, p1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 64
    :cond_3f
    iget-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 66
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 68
    const/4 v1, 0x1

    .line 69
    if-eqz v0, :cond_52

    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 77
    iget-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 79
    const/4 v0, 0x0

    .line 80
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 82
    goto :goto_5c

    .line 83
    :cond_52
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 85
    const-string v2, "android:user_visible_hint"

    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 90
    move-result v0

    .line 91
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 93
    :goto_5c
    iget-object p1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 95
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 97
    if-nez v0, :cond_64

    .line 99
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 101
    :cond_64
    return-void
.end method

.method public final n()V
    .registers 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    const-string v1, "FragmentManager"

    .line 8
    if-eqz v0, :cond_1b

    .line 10
    const-string v0, "moveto RESUMED: "

    .line 12
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_89

    .line 37
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 39
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 41
    const/4 v4, 0x1

    .line 42
    if-ne v0, v3, :cond_2c

    .line 44
    goto :goto_3f

    .line 45
    :cond_2c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    move-result-object v3

    .line 49
    :goto_30
    if-eqz v3, :cond_3e

    .line 51
    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 53
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 55
    if-ne v3, v5, :cond_39

    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 61
    move-result-object v3

    .line 62
    goto :goto_30

    .line 63
    :cond_3e
    move v4, v2

    .line 64
    :goto_3f
    if-eqz v4, :cond_89

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 69
    move-result v3

    .line 70
    const/4 v4, 0x2

    .line 71
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_89

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v5, "requestFocus: Restoring focused view "

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, " "

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-eqz v3, :cond_63

    .line 97
    const-string v0, "succeeded"

    .line 99
    goto :goto_65

    .line 100
    :cond_63
    const-string v0, "failed"

    .line 102
    :goto_65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, " on Fragment "

    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    const-string v0, " resulting in focused view "

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 122
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_89
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 146
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 149
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 151
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 153
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/s;->i(Landroidx/fragment/app/Fragment;Z)V

    .line 156
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 158
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 160
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 162
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 164
    return-void
.end method

.method public final o()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 13
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/s;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 19
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 25
    const/4 v0, 0x0

    .line 26
    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 28
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 30
    if-eqz v1, :cond_22

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/y;->q()V

    .line 35
    :cond_22
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 37
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 39
    if-eqz v1, :cond_38

    .line 41
    if-nez v0, :cond_2f

    .line 43
    new-instance v0, Landroid/os/Bundle;

    .line 45
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    :cond_2f
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 50
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 52
    const-string v2, "android:view_state"

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 57
    :cond_38
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 59
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 61
    if-eqz v1, :cond_4e

    .line 63
    if-nez v0, :cond_45

    .line 65
    new-instance v0, Landroid/os/Bundle;

    .line 67
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    :cond_45
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 72
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 74
    const-string v2, "android:view_registry_state"

    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    :cond_4e
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 81
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 83
    if-nez v1, :cond_64

    .line 85
    if-nez v0, :cond_5b

    .line 87
    new-instance v0, Landroid/os/Bundle;

    .line 89
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    :cond_5b
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 94
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 96
    const-string v2, "android:user_visible_hint"

    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    :cond_64
    return-object v0
.end method

.method public final p()V
    .registers 5

    .line 1
    new-instance v0, Landroidx/fragment/app/FragmentState;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 10
    iget v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 12
    const/4 v3, -0x1

    .line 13
    if-le v2, v3, :cond_40

    .line 15
    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 17
    if-nez v2, :cond_40

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Landroid/os/Bundle;

    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 25
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 27
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 29
    if-eqz v2, :cond_44

    .line 31
    if-nez v1, :cond_27

    .line 33
    new-instance v1, Landroid/os/Bundle;

    .line 35
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 40
    :cond_27
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 42
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 44
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 46
    const-string v3, "android:target_state"

    .line 48
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 53
    iget v1, v1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 55
    if-eqz v1, :cond_44

    .line 57
    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 59
    const-string v3, "android:target_req_state"

    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    goto :goto_44

    .line 65
    :cond_40
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 67
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 69
    :cond_44
    :goto_44
    iget-object v1, p0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/a0;

    .line 71
    iget-object v2, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 73
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 75
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/a0;->i(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 78
    return-void
.end method

.method public final q()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2e

    .line 15
    const-string v0, "Saving view state for fragment "

    .line 17
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " with view "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 33
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "FragmentManager"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2e
    new-instance v0, Landroid/util/SparseArray;

    .line 49
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 52
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 54
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 59
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 62
    move-result v1

    .line 63
    if-lez v1, :cond_44

    .line 65
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 67
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 69
    :cond_44
    new-instance v0, Landroid/os/Bundle;

    .line 71
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 76
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 78
    iget-object v1, v1, Landroidx/fragment/app/j0;->e:Lc1/d;

    .line 80
    invoke-virtual {v1, v0}, Lc1/d;->c(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_5c

    .line 89
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 91
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 93
    :cond_5c
    return-void
.end method

.method public final r()V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "moveto STARTED: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 33
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 35
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->k(Landroidx/fragment/app/Fragment;Z)V

    .line 41
    return-void
.end method

.method public final s()V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    const-string v0, "movefrom STARTED: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FragmentManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 33
    iget-object v0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/s;

    .line 35
    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->l(Landroidx/fragment/app/Fragment;Z)V

    .line 41
    return-void
.end method
