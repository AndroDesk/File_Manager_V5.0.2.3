.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$k;,
        Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;,
        Landroidx/fragment/app/FragmentManager$o;,
        Landroidx/fragment/app/FragmentManager$n;,
        Landroidx/fragment/app/FragmentManager$l;,
        Landroidx/fragment/app/FragmentManager$m;,
        Landroidx/fragment/app/FragmentManager$j;
    }
.end annotation


# instance fields
.field public A:Landroidx/fragment/app/FragmentManager$e;

.field public B:Landroidx/activity/result/d;

.field public C:Landroidx/activity/result/d;

.field public D:Landroidx/activity/result/d;

.field public E:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public N:Landroidx/fragment/app/v;

.field public O:Landroidx/fragment/app/FragmentManager$f;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$n;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Landroidx/fragment/app/a0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroidx/fragment/app/r;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Landroidx/fragment/app/FragmentManager$b;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$m;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Landroidx/fragment/app/s;

.field private mSpecialEffectsControllerFactory:Landroidx/fragment/app/l0;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/w;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Landroidx/fragment/app/t;

.field public final p:Landroidx/fragment/app/t;

.field public final q:Landroidx/fragment/app/t;

.field public final r:Landroidx/fragment/app/t;

.field public final s:Landroidx/fragment/app/FragmentManager$c;

.field public t:I

.field public u:Landroidx/fragment/app/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/q<",
            "*>;"
        }
    .end annotation
.end field

.field public v:Landroidx/fragment/app/n;

.field public w:Landroidx/fragment/app/Fragment;

.field public x:Landroidx/fragment/app/Fragment;

.field public y:Landroidx/fragment/app/p;

.field public z:Landroidx/fragment/app/FragmentManager$d;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Landroidx/fragment/app/a0;

    .line 13
    invoke-direct {v0}, Landroidx/fragment/app/a0;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 18
    new-instance v0, Landroidx/fragment/app/r;

    .line 20
    invoke-direct {v0, p0}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 23
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/fragment/app/r;

    .line 25
    new-instance v0, Landroidx/fragment/app/FragmentManager$b;

    .line 27
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 30
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/fragment/app/FragmentManager$b;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 37
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    .line 63
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 69
    new-instance v0, Landroidx/fragment/app/s;

    .line 71
    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 74
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 81
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    new-instance v0, Landroidx/fragment/app/t;

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 89
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/t;

    .line 91
    new-instance v0, Landroidx/fragment/app/t;

    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 97
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->p:Landroidx/fragment/app/t;

    .line 99
    new-instance v0, Landroidx/fragment/app/t;

    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 105
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->q:Landroidx/fragment/app/t;

    .line 107
    new-instance v0, Landroidx/fragment/app/t;

    .line 109
    const/4 v1, 0x3

    .line 110
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 113
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/t;

    .line 115
    new-instance v0, Landroidx/fragment/app/FragmentManager$c;

    .line 117
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$c;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 120
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentManager$c;

    .line 122
    const/4 v0, -0x1

    .line 123
    iput v0, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 125
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/p;

    .line 128
    new-instance v1, Landroidx/fragment/app/FragmentManager$d;

    .line 130
    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$d;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 133
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->z:Landroidx/fragment/app/FragmentManager$d;

    .line 135
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/l0;

    .line 137
    new-instance v0, Landroidx/fragment/app/FragmentManager$e;

    .line 139
    invoke-direct {v0}, Landroidx/fragment/app/FragmentManager$e;-><init>()V

    .line 142
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->A:Landroidx/fragment/app/FragmentManager$e;

    .line 144
    new-instance v0, Ljava/util/ArrayDeque;

    .line 146
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 149
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    .line 151
    new-instance v0, Landroidx/fragment/app/FragmentManager$f;

    .line 153
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$f;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 156
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->O:Landroidx/fragment/app/FragmentManager$f;

    .line 158
    return-void
.end method

.method public static M(I)Z
    .registers 2

    .line 1
    const-string v0, "FragmentManager"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    :goto_b
    return p0
.end method

.method public static N(Landroidx/fragment/app/Fragment;)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 9
    if-nez v0, :cond_32

    .line 11
    :cond_a
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 13
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->e()Ljava/util/ArrayList;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    move v0, v2

    .line 24
    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2d

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 36
    if-eqz v3, :cond_29

    .line 38
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)Z

    .line 41
    move-result v0

    .line 42
    :cond_29
    if-eqz v0, :cond_17

    .line 44
    move p0, v1

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move p0, v2

    .line 47
    :goto_2e
    if-eqz p0, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v1, v2

    .line 51
    :cond_32
    :goto_32
    return v1
.end method

.method public static P(Landroidx/fragment/app/Fragment;)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_17

    .line 15
    iget-object p0, v1, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 17
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->P(Landroidx/fragment/app/Fragment;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    return v0
.end method

.method public static i0(Landroidx/fragment/app/Fragment;)V
    .registers 3

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
    const-string v1, "show: "

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
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 32
    if-eqz v0, :cond_2a

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 37
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 39
    xor-int/lit8 v0, v0, 0x1

    .line 41
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 43
    :cond_2a
    return-void
.end method


# virtual methods
.method public final A()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->E()V

    .line 8
    return-void
.end method

.method public final B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final C(I)Landroidx/fragment/app/Fragment;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 11
    if-ltz v1, :cond_1b

    .line 13
    iget-object v2, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 21
    if-eqz v2, :cond_8

    .line 23
    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 25
    if-ne v3, p1, :cond_8

    .line 27
    goto :goto_3b

    .line 28
    :cond_1b
    iget-object v0, v0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3a

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/fragment/app/y;

    .line 50
    if-eqz v1, :cond_25

    .line 52
    iget-object v2, v1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 54
    iget v1, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 56
    if-ne v1, p1, :cond_25

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 v2, 0x0

    .line 60
    :goto_3b
    return-object v2
.end method

.method public final D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    if-eqz p1, :cond_21

    .line 5
    iget-object v1, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 13
    if-ltz v1, :cond_21

    .line 15
    iget-object v2, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 23
    if-eqz v2, :cond_a

    .line 25
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_a

    .line 33
    goto :goto_4a

    .line 34
    :cond_21
    if-eqz p1, :cond_46

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 46
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_49

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/fragment/app/y;

    .line 58
    if-eqz v1, :cond_2d

    .line 60
    iget-object v2, v1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 62
    iget-object v1, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2d

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    :cond_49
    const/4 v2, 0x0

    .line 75
    :goto_4a
    return-object v2
.end method

.method public final E()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->e()Ljava/util/HashSet;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2d

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController;

    .line 21
    iget-boolean v2, v1, Landroidx/fragment/app/SpecialEffectsController;->e:Z

    .line 23
    if-eqz v2, :cond_8

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_26

    .line 32
    const-string v2, "FragmentManager"

    .line 34
    const-string v3, "SpecialEffectsController: Forcing postponed operations"

    .line 36
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_26
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v1, Landroidx/fragment/app/SpecialEffectsController;->e:Z

    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController;->c()V

    .line 45
    goto :goto_8

    .line 46
    :cond_2d
    return-void
.end method

.method public final F()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public final G(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 7

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return-object v1

    .line 16
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v3, "Fragment no longer exists for key "

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p2, ": unique id "

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/IllegalStateException;)V

    .line 49
    throw v0
.end method

.method public final H(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .registers 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_b

    .line 11
    return-object v1

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/n;

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/n;->onHasView()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_22

    .line 20
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/n;

    .line 22
    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 24
    invoke-virtual {v0, p1}, Landroidx/fragment/app/n;->onFindViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 30
    if-eqz v0, :cond_22

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 34
    return-object p1

    .line 35
    :cond_22
    return-object v1
.end method

.method public final I()Landroidx/fragment/app/p;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/p;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->z:Landroidx/fragment/app/FragmentManager$d;

    .line 19
    return-object v0
.end method

.method public final J()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final K()Landroidx/fragment/app/l0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/l0;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->K()Landroidx/fragment/app/l0;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->A:Landroidx/fragment/app/FragmentManager$e;

    .line 19
    return-object v0
.end method

.method public final L(Landroidx/fragment/app/Fragment;)V
    .registers 4

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
    const-string v1, "hide: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 32
    if-nez v0, :cond_2c

    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 37
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 39
    xor-int/2addr v0, v1

    .line 40
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 42
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->h0(Landroidx/fragment/app/Fragment;)V

    .line 45
    :cond_2c
    return-void
.end method

.method public final O()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_19

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    :goto_1a
    return v1
.end method

.method public final Q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public final R(IZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 3
    if-nez v0, :cond_10

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_8

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "No activity"

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1

    .line 17
    :cond_10
    :goto_10
    if-nez p2, :cond_17

    .line 19
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 21
    if-ne p1, p2, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 26
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 28
    iget-object p2, p1, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p2

    .line 34
    :cond_21
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3d

    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 46
    iget-object v1, p1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 48
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/fragment/app/y;

    .line 56
    if-eqz v0, :cond_21

    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()V

    .line 61
    goto :goto_21

    .line 62
    :cond_3d
    iget-object p2, p1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 64
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p2

    .line 72
    :cond_47
    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v0

    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_7d

    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroidx/fragment/app/y;

    .line 85
    if-eqz v0, :cond_47

    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()V

    .line 90
    iget-object v2, v0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 92
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 94
    if-eqz v3, :cond_66

    .line 96
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_66

    .line 102
    const/4 v1, 0x1

    .line 103
    :cond_66
    if-eqz v1, :cond_47

    .line 105
    iget-boolean v1, v2, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 107
    if-eqz v1, :cond_79

    .line 109
    iget-object v1, p1, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 111
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_79

    .line 119
    invoke-virtual {v0}, Landroidx/fragment/app/y;->p()V

    .line 122
    :cond_79
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a0;->h(Landroidx/fragment/app/y;)V

    .line 125
    goto :goto_47

    .line 126
    :cond_7d
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->j0()V

    .line 129
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 131
    if-eqz p1, :cond_92

    .line 133
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 135
    if-eqz p1, :cond_92

    .line 137
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 139
    const/4 v0, 0x7

    .line 140
    if-ne p2, v0, :cond_92

    .line 142
    invoke-virtual {p1}, Landroidx/fragment/app/q;->onSupportInvalidateOptionsMenu()V

    .line 145
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 147
    :cond_92
    return-void
.end method

.method public final S()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 13
    iput-boolean v0, v1, Landroidx/fragment/app/v;->f:Z

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2a

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 37
    if-eqz v1, :cond_18

    .line 39
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 42
    goto :goto_18

    .line 43
    :cond_2a
    return-void
.end method

.method public final T(IZ)V
    .registers 5

    .line 1
    if-ltz p1, :cond_c

    .line 3
    new-instance v0, Landroidx/fragment/app/FragmentManager$o;

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, p1, v1}, Landroidx/fragment/app/FragmentManager$o;-><init>(Landroidx/fragment/app/FragmentManager;II)V

    .line 9
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/FragmentManager;->v(Landroidx/fragment/app/FragmentManager$n;Z)V

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "Bad id: "

    .line 17
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p2
.end method

.method public final U()Z
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->V(II)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final V(II)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->w(Z)V

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 11
    if-eqz v2, :cond_19

    .line 13
    if-gez p1, :cond_19

    .line 15
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 28
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/fragment/app/FragmentManager;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_35

    .line 36
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 38
    :try_start_25
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 40
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentManager;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_30

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()V

    .line 48
    goto :goto_35

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()V

    .line 53
    throw p1

    .line 54
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->l0()V

    .line 57
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 59
    if-eqz p2, :cond_41

    .line 61
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->j0()V

    .line 66
    :cond_41
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 68
    iget-object p2, p2, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 70
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 73
    move-result-object p2

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 82
    return p1
.end method

.method public final W(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p4, :cond_7

    .line 6
    move p4, v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move p4, v1

    .line 9
    :goto_8
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_64

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_14

    .line 20
    goto :goto_64

    .line 21
    :cond_14
    if-gez p3, :cond_22

    .line 23
    if-eqz p4, :cond_1a

    .line 25
    move v3, v1

    .line 26
    goto :goto_64

    .line 27
    :cond_1a
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p3

    .line 33
    add-int/2addr v3, p3

    .line 34
    goto :goto_64

    .line 35
    :cond_22
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v2

    .line 41
    add-int/2addr v2, v3

    .line 42
    :goto_29
    if-ltz v2, :cond_3d

    .line 44
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/fragment/app/a;

    .line 52
    if-ltz p3, :cond_3a

    .line 54
    iget v4, v4, Landroidx/fragment/app/a;->u:I

    .line 56
    if-ne p3, v4, :cond_3a

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    add-int/lit8 v2, v2, -0x1

    .line 61
    goto :goto_29

    .line 62
    :cond_3d
    :goto_3d
    if-gez v2, :cond_41

    .line 64
    :cond_3f
    :goto_3f
    move v3, v2

    .line 65
    goto :goto_64

    .line 66
    :cond_41
    if-eqz p4, :cond_57

    .line 68
    :goto_43
    if-lez v2, :cond_3f

    .line 70
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 72
    add-int/lit8 v3, v2, -0x1

    .line 74
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object p4

    .line 78
    check-cast p4, Landroidx/fragment/app/a;

    .line 80
    if-ltz p3, :cond_3f

    .line 82
    iget p4, p4, Landroidx/fragment/app/a;->u:I

    .line 84
    if-ne p3, p4, :cond_3f

    .line 86
    move v2, v3

    .line 87
    goto :goto_43

    .line 88
    :cond_57
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result p3

    .line 94
    add-int/2addr p3, v3

    .line 95
    if-ne v2, p3, :cond_61

    .line 97
    goto :goto_64

    .line 98
    :cond_61
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_3f

    .line 101
    :cond_64
    :goto_64
    if-gez v3, :cond_67

    .line 103
    return v1

    .line 104
    :cond_67
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result p3

    .line 110
    sub-int/2addr p3, v0

    .line 111
    :goto_6e
    if-lt p3, v3, :cond_83

    .line 113
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    move-result-object p4

    .line 119
    check-cast p4, Landroidx/fragment/app/a;

    .line 121
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 p3, p3, -0x1

    .line 131
    goto :goto_6e

    .line 132
    :cond_83
    return v0
.end method

.method public final X(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-ne v0, p0, :cond_a

    .line 5
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string p2, "Fragment "

    .line 15
    const-string v0, " is not currently in the FragmentManager"

    .line 17
    invoke-static {p2, p3, v0}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/IllegalStateException;)V

    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public final Y(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_27

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "remove: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " nesting="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    xor-int/2addr v0, v1

    .line 46
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 48
    if-eqz v2, :cond_33

    .line 50
    if-eqz v0, :cond_4e

    .line 52
    :cond_33
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 54
    iget-object v2, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 56
    monitor-enter v2

    .line 57
    :try_start_38
    iget-object v0, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_4f

    .line 63
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 66
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_49

    .line 72
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 74
    :cond_49
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 76
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->h0(Landroidx/fragment/app/Fragment;)V

    .line 79
    :cond_4e
    return-void

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    .line 82
    throw p1
.end method

.method public final Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_5f

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_17
    if-ge v1, v0, :cond_59

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/a;

    .line 32
    iget-boolean v3, v3, Landroidx/fragment/app/b0;->r:Z

    .line 34
    if-nez v3, :cond_56

    .line 36
    if-eq v2, v1, :cond_28

    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManager;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 41
    :cond_28
    add-int/lit8 v2, v1, 0x1

    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_51

    .line 55
    :goto_36
    if-ge v2, v0, :cond_51

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_51

    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/a;

    .line 75
    iget-boolean v3, v3, Landroidx/fragment/app/b0;->r:Z

    .line 77
    if-nez v3, :cond_51

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_36

    .line 82
    :cond_51
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 87
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_17

    .line 90
    :cond_59
    if-eq v2, v0, :cond_5e

    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 95
    :cond_5e
    return-void

    .line 96
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1
.end method

.method public final a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {p1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 8
    :cond_7
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_24

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v1, "add: "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "FragmentManager"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 40
    move-result-object v0

    .line 41
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 45
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a0;->g(Landroidx/fragment/app/y;)V

    .line 48
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 50
    if-nez v1, :cond_4a

    .line 52
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 54
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a0;->a(Landroidx/fragment/app/Fragment;)V

    .line 57
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 60
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 62
    if-nez v2, :cond_41

    .line 64
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 66
    :cond_41
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4a

    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 75
    :cond_4a
    return-object v0
.end method

.method public final a0(Landroid/os/Parcelable;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    check-cast v1, Landroid/os/Bundle;

    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v2

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_40

    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 27
    const-string v4, "result_"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_e

    .line 35
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_e

    .line 41
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 43
    invoke-virtual {v5}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 54
    const/4 v5, 0x7

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    .line 61
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_e

    .line 65
    :cond_40
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v3

    .line 78
    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v4

    .line 82
    const-string v5, "state"

    .line 84
    if-eqz v4, :cond_80

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/String;

    .line 92
    const-string v6, "fragment_"

    .line 94
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_4d

    .line 100
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_4d

    .line 106
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 108
    invoke-virtual {v6}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 119
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Landroidx/fragment/app/FragmentState;

    .line 125
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_4d

    .line 129
    :cond_80
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 131
    iget-object v4, v3, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    move-result-object v2

    .line 140
    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_9f

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Landroidx/fragment/app/FragmentState;

    .line 152
    iget-object v6, v3, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 154
    iget-object v7, v4, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    goto :goto_8b

    .line 160
    :cond_9f
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Landroidx/fragment/app/FragmentManagerState;

    .line 166
    if-nez v1, :cond_a8

    .line 168
    return-void

    .line 169
    :cond_a8
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 171
    iget-object v2, v2, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 173
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 176
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    move-result-object v2

    .line 182
    :cond_b5
    :goto_b5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    move-result v3

    .line 186
    const/4 v4, 0x0

    .line 187
    const-string v5, "): "

    .line 189
    const/4 v6, 0x2

    .line 190
    const-string v7, "FragmentManager"

    .line 192
    if-eqz v3, :cond_153

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Ljava/lang/String;

    .line 200
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 202
    invoke-virtual {v8, v3, v4}, Landroidx/fragment/app/a0;->i(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 205
    move-result-object v14

    .line 206
    if-eqz v14, :cond_b5

    .line 208
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 210
    iget-object v4, v14, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    .line 212
    iget-object v3, v3, Landroidx/fragment/app/v;->a:Ljava/util/HashMap;

    .line 214
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 220
    if-eqz v3, :cond_101

    .line 222
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_f7

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const-string v8, "restoreSaveState: re-attaching retained "

    .line 235
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v4

    .line 245
    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_f7
    new-instance v4, Landroidx/fragment/app/y;

    .line 250
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 252
    iget-object v9, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 254
    invoke-direct {v4, v8, v9, v3, v14}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/s;Landroidx/fragment/app/a0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    .line 257
    goto :goto_119

    .line 258
    :cond_101
    new-instance v4, Landroidx/fragment/app/y;

    .line 260
    iget-object v10, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 262
    iget-object v11, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 264
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 266
    invoke-virtual {v3}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 273
    move-result-object v12

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 277
    move-result-object v13

    .line 278
    move-object v9, v4

    .line 279
    invoke-direct/range {v9 .. v14}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/s;Landroidx/fragment/app/a0;Ljava/lang/ClassLoader;Landroidx/fragment/app/p;Landroidx/fragment/app/FragmentState;)V

    .line 282
    :goto_119
    iget-object v3, v4, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 284
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 286
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_13b

    .line 292
    const-string v6, "restoreSaveState: active ("

    .line 294
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    move-result-object v6

    .line 298
    iget-object v8, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 300
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v3

    .line 313
    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_13b
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 318
    invoke-virtual {v3}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v4, v3}, Landroidx/fragment/app/y;->m(Ljava/lang/ClassLoader;)V

    .line 329
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 331
    invoke-virtual {v3, v4}, Landroidx/fragment/app/a0;->g(Landroidx/fragment/app/y;)V

    .line 334
    iget v3, v0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 336
    iput v3, v4, Landroidx/fragment/app/y;->e:I

    .line 338
    goto/16 :goto_b5

    .line 340
    :cond_153
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    new-instance v3, Ljava/util/ArrayList;

    .line 347
    iget-object v2, v2, Landroidx/fragment/app/v;->a:Ljava/util/HashMap;

    .line 349
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 352
    move-result-object v2

    .line 353
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    move-result-object v2

    .line 360
    :cond_167
    :goto_167
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    move-result v3

    .line 364
    const/4 v8, 0x0

    .line 365
    const/4 v9, 0x1

    .line 366
    if-eqz v3, :cond_1c3

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    move-result-object v3

    .line 372
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 374
    iget-object v10, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 376
    iget-object v11, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 378
    iget-object v10, v10, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 380
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-result-object v10

    .line 384
    if-eqz v10, :cond_182

    .line 386
    move v8, v9

    .line 387
    :cond_182
    if-nez v8, :cond_167

    .line 389
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 392
    move-result v8

    .line 393
    if-eqz v8, :cond_1a8

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    .line 397
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    const-string v10, "Discarding retained Fragment "

    .line 402
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    const-string v10, " that was not found in the set of active Fragments "

    .line 410
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v10, v1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object v8

    .line 422
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1a8
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 427
    invoke-virtual {v8, v3}, Landroidx/fragment/app/v;->d(Landroidx/fragment/app/Fragment;)V

    .line 430
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 432
    new-instance v8, Landroidx/fragment/app/y;

    .line 434
    iget-object v10, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 436
    iget-object v11, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 438
    invoke-direct {v8, v10, v11, v3}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/s;Landroidx/fragment/app/a0;Landroidx/fragment/app/Fragment;)V

    .line 441
    iput v9, v8, Landroidx/fragment/app/y;->e:I

    .line 443
    invoke-virtual {v8}, Landroidx/fragment/app/y;->k()V

    .line 446
    iput-boolean v9, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 448
    invoke-virtual {v8}, Landroidx/fragment/app/y;->k()V

    .line 451
    goto :goto_167

    .line 452
    :cond_1c3
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 454
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    .line 456
    iget-object v10, v2, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 461
    if-eqz v3, :cond_216

    .line 463
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 466
    move-result-object v3

    .line 467
    :goto_1d2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    move-result v10

    .line 471
    if-eqz v10, :cond_216

    .line 473
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    move-result-object v10

    .line 477
    check-cast v10, Ljava/lang/String;

    .line 479
    invoke-virtual {v2, v10}, Landroidx/fragment/app/a0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 482
    move-result-object v11

    .line 483
    if-eqz v11, :cond_208

    .line 485
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 488
    move-result v12

    .line 489
    if-eqz v12, :cond_204

    .line 491
    new-instance v12, Ljava/lang/StringBuilder;

    .line 493
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    const-string v13, "restoreSaveState: added ("

    .line 498
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    move-result-object v10

    .line 514
    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_204
    invoke-virtual {v2, v11}, Landroidx/fragment/app/a0;->a(Landroidx/fragment/app/Fragment;)V

    .line 520
    goto :goto_1d2

    .line 521
    :cond_208
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 523
    const-string v2, "No instantiated fragment for ("

    .line 525
    const-string v3, ")"

    .line 527
    invoke-static {v2, v10, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    move-result-object v2

    .line 531
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 534
    throw v1

    .line 535
    :cond_216
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    .line 537
    if-eqz v2, :cond_350

    .line 539
    new-instance v2, Ljava/util/ArrayList;

    .line 541
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    .line 543
    array-length v3, v3

    .line 544
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    iput-object v2, v0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 549
    move v2, v8

    .line 550
    :goto_225
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    .line 552
    array-length v4, v3

    .line 553
    if-ge v2, v4, :cond_352

    .line 555
    aget-object v3, v3, v2

    .line 557
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    new-instance v4, Landroidx/fragment/app/a;

    .line 562
    invoke-direct {v4, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 565
    move v10, v8

    .line 566
    move v11, v10

    .line 567
    :goto_236
    iget-object v12, v3, Landroidx/fragment/app/BackStackRecordState;->a:[I

    .line 569
    array-length v12, v12

    .line 570
    if-ge v10, v12, :cond_2c4

    .line 572
    new-instance v12, Landroidx/fragment/app/b0$a;

    .line 574
    invoke-direct {v12}, Landroidx/fragment/app/b0$a;-><init>()V

    .line 577
    iget-object v13, v3, Landroidx/fragment/app/BackStackRecordState;->a:[I

    .line 579
    add-int/lit8 v14, v10, 0x1

    .line 581
    aget v10, v13, v10

    .line 583
    iput v10, v12, Landroidx/fragment/app/b0$a;->a:I

    .line 585
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 588
    move-result v10

    .line 589
    if-eqz v10, :cond_276

    .line 591
    new-instance v10, Ljava/lang/StringBuilder;

    .line 593
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    const-string v13, "Instantiate "

    .line 598
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    const-string v13, " op #"

    .line 606
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    const-string v13, " base fragment #"

    .line 614
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget-object v13, v3, Landroidx/fragment/app/BackStackRecordState;->a:[I

    .line 619
    aget v13, v13, v14

    .line 621
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    move-result-object v10

    .line 628
    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_276
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    .line 634
    move-result-object v10

    .line 635
    iget-object v13, v3, Landroidx/fragment/app/BackStackRecordState;->c:[I

    .line 637
    aget v13, v13, v11

    .line 639
    aget-object v10, v10, v13

    .line 641
    iput-object v10, v12, Landroidx/fragment/app/b0$a;->h:Landroidx/lifecycle/Lifecycle$State;

    .line 643
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    .line 646
    move-result-object v10

    .line 647
    iget-object v13, v3, Landroidx/fragment/app/BackStackRecordState;->d:[I

    .line 649
    aget v13, v13, v11

    .line 651
    aget-object v10, v10, v13

    .line 653
    iput-object v10, v12, Landroidx/fragment/app/b0$a;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 655
    iget-object v10, v3, Landroidx/fragment/app/BackStackRecordState;->a:[I

    .line 657
    add-int/lit8 v13, v14, 0x1

    .line 659
    aget v14, v10, v14

    .line 661
    if-eqz v14, :cond_298

    .line 663
    move v14, v9

    .line 664
    goto :goto_299

    .line 665
    :cond_298
    move v14, v8

    .line 666
    :goto_299
    iput-boolean v14, v12, Landroidx/fragment/app/b0$a;->c:Z

    .line 668
    add-int/lit8 v14, v13, 0x1

    .line 670
    aget v13, v10, v13

    .line 672
    iput v13, v12, Landroidx/fragment/app/b0$a;->d:I

    .line 674
    add-int/lit8 v15, v14, 0x1

    .line 676
    aget v14, v10, v14

    .line 678
    iput v14, v12, Landroidx/fragment/app/b0$a;->e:I

    .line 680
    add-int/lit8 v16, v15, 0x1

    .line 682
    aget v15, v10, v15

    .line 684
    iput v15, v12, Landroidx/fragment/app/b0$a;->f:I

    .line 686
    add-int/lit8 v17, v16, 0x1

    .line 688
    aget v10, v10, v16

    .line 690
    iput v10, v12, Landroidx/fragment/app/b0$a;->g:I

    .line 692
    iput v13, v4, Landroidx/fragment/app/b0;->d:I

    .line 694
    iput v14, v4, Landroidx/fragment/app/b0;->e:I

    .line 696
    iput v15, v4, Landroidx/fragment/app/b0;->f:I

    .line 698
    iput v10, v4, Landroidx/fragment/app/b0;->g:I

    .line 700
    invoke-virtual {v4, v12}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 703
    add-int/lit8 v11, v11, 0x1

    .line 705
    move/from16 v10, v17

    .line 707
    goto/16 :goto_236

    .line 709
    :cond_2c4
    iget v10, v3, Landroidx/fragment/app/BackStackRecordState;->e:I

    .line 711
    iput v10, v4, Landroidx/fragment/app/b0;->h:I

    .line 713
    iget-object v10, v3, Landroidx/fragment/app/BackStackRecordState;->f:Ljava/lang/String;

    .line 715
    iput-object v10, v4, Landroidx/fragment/app/b0;->k:Ljava/lang/String;

    .line 717
    iput-boolean v9, v4, Landroidx/fragment/app/b0;->i:Z

    .line 719
    iget v10, v3, Landroidx/fragment/app/BackStackRecordState;->h:I

    .line 721
    iput v10, v4, Landroidx/fragment/app/b0;->l:I

    .line 723
    iget-object v10, v3, Landroidx/fragment/app/BackStackRecordState;->i:Ljava/lang/CharSequence;

    .line 725
    iput-object v10, v4, Landroidx/fragment/app/b0;->m:Ljava/lang/CharSequence;

    .line 727
    iget v10, v3, Landroidx/fragment/app/BackStackRecordState;->j:I

    .line 729
    iput v10, v4, Landroidx/fragment/app/b0;->n:I

    .line 731
    iget-object v10, v3, Landroidx/fragment/app/BackStackRecordState;->k:Ljava/lang/CharSequence;

    .line 733
    iput-object v10, v4, Landroidx/fragment/app/b0;->o:Ljava/lang/CharSequence;

    .line 735
    iget-object v10, v3, Landroidx/fragment/app/BackStackRecordState;->l:Ljava/util/ArrayList;

    .line 737
    iput-object v10, v4, Landroidx/fragment/app/b0;->p:Ljava/util/ArrayList;

    .line 739
    iget-object v10, v3, Landroidx/fragment/app/BackStackRecordState;->m:Ljava/util/ArrayList;

    .line 741
    iput-object v10, v4, Landroidx/fragment/app/b0;->q:Ljava/util/ArrayList;

    .line 743
    iget-boolean v10, v3, Landroidx/fragment/app/BackStackRecordState;->n:Z

    .line 745
    iput-boolean v10, v4, Landroidx/fragment/app/b0;->r:Z

    .line 747
    iget v10, v3, Landroidx/fragment/app/BackStackRecordState;->g:I

    .line 749
    iput v10, v4, Landroidx/fragment/app/a;->u:I

    .line 751
    move v10, v8

    .line 752
    :goto_2ef
    iget-object v11, v3, Landroidx/fragment/app/BackStackRecordState;->b:Ljava/util/ArrayList;

    .line 754
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 757
    move-result v11

    .line 758
    if-ge v10, v11, :cond_312

    .line 760
    iget-object v11, v3, Landroidx/fragment/app/BackStackRecordState;->b:Ljava/util/ArrayList;

    .line 762
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 765
    move-result-object v11

    .line 766
    check-cast v11, Ljava/lang/String;

    .line 768
    if-eqz v11, :cond_30f

    .line 770
    iget-object v12, v4, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 772
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 775
    move-result-object v12

    .line 776
    check-cast v12, Landroidx/fragment/app/b0$a;

    .line 778
    invoke-virtual {v0, v11}, Landroidx/fragment/app/FragmentManager;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 781
    move-result-object v11

    .line 782
    iput-object v11, v12, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 784
    :cond_30f
    add-int/lit8 v10, v10, 0x1

    .line 786
    goto :goto_2ef

    .line 787
    :cond_312
    invoke-virtual {v4, v9}, Landroidx/fragment/app/a;->o(I)V

    .line 790
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 793
    move-result v3

    .line 794
    if-eqz v3, :cond_347

    .line 796
    const-string v3, "restoreAllState: back stack #"

    .line 798
    const-string v10, " (index "

    .line 800
    invoke-static {v3, v2, v10}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    move-result-object v3

    .line 804
    iget v10, v4, Landroidx/fragment/app/a;->u:I

    .line 806
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    move-result-object v3

    .line 819
    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v3, Landroidx/fragment/app/k0;

    .line 824
    invoke-direct {v3}, Landroidx/fragment/app/k0;-><init>()V

    .line 827
    new-instance v10, Ljava/io/PrintWriter;

    .line 829
    invoke-direct {v10, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 832
    const-string v3, "  "

    .line 834
    invoke-virtual {v4, v3, v10, v8}, Landroidx/fragment/app/a;->s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 837
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 840
    :cond_347
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 842
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    add-int/lit8 v2, v2, 0x1

    .line 847
    goto/16 :goto_225

    .line 849
    :cond_350
    iput-object v4, v0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 851
    :cond_352
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 853
    iget v3, v1, Landroidx/fragment/app/FragmentManagerState;->d:I

    .line 855
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 858
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/lang/String;

    .line 860
    if-eqz v2, :cond_366

    .line 862
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 865
    move-result-object v2

    .line 866
    iput-object v2, v0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 868
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->q(Landroidx/fragment/app/Fragment;)V

    .line 871
    :cond_366
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->f:Ljava/util/ArrayList;

    .line 873
    if-eqz v2, :cond_386

    .line 875
    :goto_36a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 878
    move-result v3

    .line 879
    if-ge v8, v3, :cond_386

    .line 881
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    .line 883
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 886
    move-result-object v4

    .line 887
    check-cast v4, Ljava/lang/String;

    .line 889
    iget-object v5, v1, Landroidx/fragment/app/FragmentManagerState;->g:Ljava/util/ArrayList;

    .line 891
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 894
    move-result-object v5

    .line 895
    check-cast v5, Landroidx/fragment/app/BackStackState;

    .line 897
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    add-int/lit8 v8, v8, 0x1

    .line 902
    goto :goto_36a

    .line 903
    :cond_386
    new-instance v2, Ljava/util/ArrayDeque;

    .line 905
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/util/ArrayList;

    .line 907
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 910
    iput-object v2, v0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    .line 912
    return-void
.end method

.method public addFragmentOnAttachListener(Landroidx/fragment/app/w;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public final b(Landroidx/fragment/app/q;Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/q<",
            "*>;",
            "Landroidx/fragment/app/n;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 3
    if-nez v0, :cond_15c

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 7
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/n;

    .line 9
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 11
    if-eqz p3, :cond_15

    .line 13
    new-instance p2, Landroidx/fragment/app/FragmentManager$g;

    .line 15
    invoke-direct {p2, p3}, Landroidx/fragment/app/FragmentManager$g;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    .line 21
    goto :goto_1f

    .line 22
    :cond_15
    instance-of p2, p1, Landroidx/fragment/app/w;

    .line 24
    if-eqz p2, :cond_1f

    .line 26
    move-object p2, p1

    .line 27
    check-cast p2, Landroidx/fragment/app/w;

    .line 29
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    .line 32
    :cond_1f
    :goto_1f
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 34
    if-eqz p2, :cond_26

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->l0()V

    .line 39
    :cond_26
    instance-of p2, p1, Landroidx/activity/j;

    .line 41
    if-eqz p2, :cond_3b

    .line 43
    move-object p2, p1

    .line 44
    check-cast p2, Landroidx/activity/j;

    .line 46
    invoke-interface {p2}, Landroidx/activity/j;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 52
    if-eqz p3, :cond_36

    .line 54
    move-object p2, p3

    .line 55
    :cond_36
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/fragment/app/FragmentManager$b;

    .line 57
    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/m;Landroidx/activity/h;)V

    .line 60
    :cond_3b
    if-eqz p3, :cond_5e

    .line 62
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 64
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 66
    iget-object p2, p1, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;

    .line 68
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 70
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroidx/fragment/app/v;

    .line 76
    if-nez p2, :cond_5b

    .line 78
    new-instance p2, Landroidx/fragment/app/v;

    .line 80
    iget-boolean v0, p1, Landroidx/fragment/app/v;->d:Z

    .line 82
    invoke-direct {p2, v0}, Landroidx/fragment/app/v;-><init>(Z)V

    .line 85
    iget-object p1, p1, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;

    .line 87
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 89
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_5b
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 94
    goto :goto_82

    .line 95
    :cond_5e
    instance-of p2, p1, Landroidx/lifecycle/f0;

    .line 97
    if-eqz p2, :cond_7a

    .line 99
    check-cast p1, Landroidx/lifecycle/f0;

    .line 101
    invoke-interface {p1}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    .line 104
    move-result-object p1

    .line 105
    new-instance p2, Landroidx/lifecycle/c0;

    .line 107
    sget-object v0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/v$a;

    .line 109
    invoke-direct {p2, p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/c0$b;)V

    .line 112
    const-class p1, Landroidx/fragment/app/v;

    .line 114
    invoke-virtual {p2, p1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroidx/fragment/app/v;

    .line 120
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 122
    goto :goto_82

    .line 123
    :cond_7a
    new-instance p1, Landroidx/fragment/app/v;

    .line 125
    const/4 p2, 0x0

    .line 126
    invoke-direct {p1, p2}, Landroidx/fragment/app/v;-><init>(Z)V

    .line 129
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 131
    :goto_82
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    .line 136
    move-result p2

    .line 137
    iput-boolean p2, p1, Landroidx/fragment/app/v;->f:Z

    .line 139
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 141
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 143
    iput-object p2, p1, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 145
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 147
    instance-of p2, p1, Lc1/e;

    .line 149
    if-eqz p2, :cond_b2

    .line 151
    if-nez p3, :cond_b2

    .line 153
    check-cast p1, Lc1/e;

    .line 155
    invoke-interface {p1}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 158
    move-result-object p1

    .line 159
    new-instance p2, Landroidx/activity/c;

    .line 161
    const/4 v0, 0x2

    .line 162
    invoke-direct {p2, p0, v0}, Landroidx/activity/c;-><init>(Ljava/lang/Object;I)V

    .line 165
    const-string v0, "android:support:fragments"

    .line 167
    invoke-virtual {p1, v0, p2}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 170
    invoke-virtual {p1, v0}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_b2

    .line 176
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->a0(Landroid/os/Parcelable;)V

    .line 179
    :cond_b2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 181
    instance-of p2, p1, Landroidx/activity/result/f;

    .line 183
    if-eqz p2, :cond_118

    .line 185
    check-cast p1, Landroidx/activity/result/f;

    .line 187
    invoke-interface {p1}, Landroidx/activity/result/f;->getActivityResultRegistry()Landroidx/activity/result/e;

    .line 190
    move-result-object p1

    .line 191
    if-eqz p3, :cond_ce

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 200
    const-string v1, ":"

    .line 202
    invoke-static {p2, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    move-result-object p2

    .line 206
    goto :goto_d0

    .line 207
    :cond_ce
    const-string p2, ""

    .line 209
    :goto_d0
    const-string v0, "FragmentManager:"

    .line 211
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object p2

    .line 215
    const-string v0, "StartActivityForResult"

    .line 217
    invoke-static {p2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    new-instance v1, Lg/c;

    .line 223
    invoke-direct {v1}, Lg/c;-><init>()V

    .line 226
    new-instance v2, Landroidx/fragment/app/FragmentManager$h;

    .line 228
    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$h;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 231
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/e;->d(Ljava/lang/String;Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/d;

    .line 234
    move-result-object v0

    .line 235
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->B:Landroidx/activity/result/d;

    .line 237
    const-string v0, "StartIntentSenderForResult"

    .line 239
    invoke-static {p2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    new-instance v1, Landroidx/fragment/app/FragmentManager$k;

    .line 245
    invoke-direct {v1}, Landroidx/fragment/app/FragmentManager$k;-><init>()V

    .line 248
    new-instance v2, Landroidx/fragment/app/FragmentManager$i;

    .line 250
    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$i;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 253
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/e;->d(Ljava/lang/String;Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/d;

    .line 256
    move-result-object v0

    .line 257
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->C:Landroidx/activity/result/d;

    .line 259
    const-string v0, "RequestPermissions"

    .line 261
    invoke-static {p2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    move-result-object p2

    .line 265
    new-instance v0, Lg/b;

    .line 267
    invoke-direct {v0}, Lg/b;-><init>()V

    .line 270
    new-instance v1, Landroidx/fragment/app/FragmentManager$a;

    .line 272
    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 275
    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/e;->d(Ljava/lang/String;Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/d;

    .line 278
    move-result-object p1

    .line 279
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/d;

    .line 281
    :cond_118
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 283
    instance-of p2, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 285
    if-eqz p2, :cond_125

    .line 287
    check-cast p1, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 289
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/t;

    .line 291
    invoke-interface {p1, p2}, Landroidx/core/content/OnConfigurationChangedProvider;->addOnConfigurationChangedListener(Ll0/a;)V

    .line 294
    :cond_125
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 296
    instance-of p2, p1, Landroidx/core/content/OnTrimMemoryProvider;

    .line 298
    if-eqz p2, :cond_132

    .line 300
    check-cast p1, Landroidx/core/content/OnTrimMemoryProvider;

    .line 302
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->p:Landroidx/fragment/app/t;

    .line 304
    invoke-interface {p1, p2}, Landroidx/core/content/OnTrimMemoryProvider;->addOnTrimMemoryListener(Ll0/a;)V

    .line 307
    :cond_132
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 309
    instance-of p2, p1, Ld0/k;

    .line 311
    if-eqz p2, :cond_13f

    .line 313
    check-cast p1, Ld0/k;

    .line 315
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->q:Landroidx/fragment/app/t;

    .line 317
    invoke-interface {p1, p2}, Ld0/k;->addOnMultiWindowModeChangedListener(Ll0/a;)V

    .line 320
    :cond_13f
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 322
    instance-of p2, p1, Ld0/l;

    .line 324
    if-eqz p2, :cond_14c

    .line 326
    check-cast p1, Ld0/l;

    .line 328
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/t;

    .line 330
    invoke-interface {p1, p2}, Ld0/l;->addOnPictureInPictureModeChangedListener(Ll0/a;)V

    .line 333
    :cond_14c
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 335
    instance-of p2, p1, Lm0/j;

    .line 337
    if-eqz p2, :cond_15b

    .line 339
    if-nez p3, :cond_15b

    .line 341
    check-cast p1, Lm0/j;

    .line 343
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentManager$c;

    .line 345
    invoke-interface {p1, p2}, Lm0/j;->addMenuProvider(Lm0/o;)V

    .line 348
    :cond_15b
    return-void

    .line 349
    :cond_15c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 351
    const-string p2, "Already attached"

    .line 353
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 356
    throw p1
.end method

.method public final b0()Landroid/os/Bundle;
    .registers 13

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->E()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->e()Ljava/util/HashSet;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_20

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    .line 29
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->e()V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 37
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 39
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 41
    iput-boolean v1, v2, Landroidx/fragment/app/v;->f:Z

    .line 43
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    iget-object v3, v1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 55
    move-result v3

    .line 56
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    iget-object v1, v1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 61
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v1

    .line 69
    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v3

    .line 73
    const/4 v4, 0x2

    .line 74
    if-eqz v3, :cond_84

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Landroidx/fragment/app/y;

    .line 82
    if-eqz v3, :cond_44

    .line 84
    iget-object v5, v3, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 86
    invoke-virtual {v3}, Landroidx/fragment/app/y;->p()V

    .line 89
    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_44

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v4, "Saved state of "

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, ": "

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v4, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    const-string v4, "FragmentManager"

    .line 129
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    goto :goto_44

    .line 133
    :cond_84
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    .line 140
    iget-object v1, v1, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 145
    move-result-object v1

    .line 146
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_a9

    .line 155
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_1d9

    .line 161
    const-string v1, "FragmentManager"

    .line 163
    const-string v2, "saveAllState: no fragments!"

    .line 165
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    goto/16 :goto_1d9

    .line 170
    :cond_a9
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 172
    iget-object v5, v1, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 174
    monitor-enter v5

    .line 175
    :try_start_ae
    iget-object v6, v1, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    move-result v6

    .line 181
    const/4 v7, 0x0

    .line 182
    if-eqz v6, :cond_ba

    .line 184
    monitor-exit v5

    .line 185
    move-object v6, v7

    .line 186
    goto :goto_104

    .line 187
    :cond_ba
    new-instance v6, Ljava/util/ArrayList;

    .line 189
    iget-object v8, v1, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 194
    move-result v8

    .line 195
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    iget-object v1, v1, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v1

    .line 204
    :cond_cb
    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    move-result v8

    .line 208
    if-eqz v8, :cond_103

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v8

    .line 214
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 216
    iget-object v9, v8, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 218
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 224
    move-result v9

    .line 225
    if-eqz v9, :cond_cb

    .line 227
    const-string v9, "FragmentManager"

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v11, "saveAllState: adding fragment ("

    .line 236
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v11, v8, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 241
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v11, "): "

    .line 246
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v8

    .line 256
    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    goto :goto_cb

    .line 260
    :cond_103
    monitor-exit v5
    :try_end_104
    .catchall {:try_start_ae .. :try_end_104} :catchall_1da

    .line 261
    :goto_104
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 263
    if-eqz v1, :cond_145

    .line 265
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 268
    move-result v1

    .line 269
    if-lez v1, :cond_145

    .line 271
    new-array v7, v1, [Landroidx/fragment/app/BackStackRecordState;

    .line 273
    const/4 v5, 0x0

    .line 274
    :goto_111
    if-ge v5, v1, :cond_145

    .line 276
    new-instance v8, Landroidx/fragment/app/BackStackRecordState;

    .line 278
    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    move-result-object v9

    .line 284
    check-cast v9, Landroidx/fragment/app/a;

    .line 286
    invoke-direct {v8, v9}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/a;)V

    .line 289
    aput-object v8, v7, v5

    .line 291
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 294
    move-result v8

    .line 295
    if-eqz v8, :cond_142

    .line 297
    const-string v8, "FragmentManager"

    .line 299
    const-string v9, "saveAllState: adding back stack #"

    .line 301
    const-string v10, ": "

    .line 303
    invoke-static {v9, v5, v10}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    move-result-object v9

    .line 307
    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    move-result-object v10

    .line 313
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object v9

    .line 320
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_142
    add-int/lit8 v5, v5, 0x1

    .line 325
    goto :goto_111

    .line 326
    :cond_145
    new-instance v1, Landroidx/fragment/app/FragmentManagerState;

    .line 328
    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 331
    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 333
    iput-object v6, v1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    .line 335
    iput-object v7, v1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    .line 337
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 339
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 342
    move-result v2

    .line 343
    iput v2, v1, Landroidx/fragment/app/FragmentManagerState;->d:I

    .line 345
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 347
    if-eqz v2, :cond_160

    .line 349
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 351
    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/lang/String;

    .line 353
    :cond_160
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->f:Ljava/util/ArrayList;

    .line 355
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    .line 357
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->g:Ljava/util/ArrayList;

    .line 366
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    .line 368
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    .line 377
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    .line 379
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 382
    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/util/ArrayList;

    .line 384
    const-string v2, "state"

    .line 386
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    .line 391
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 394
    move-result-object v1

    .line 395
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 398
    move-result-object v1

    .line 399
    :goto_18e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_1ac

    .line 405
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Ljava/lang/String;

    .line 411
    const-string v4, "result_"

    .line 413
    invoke-static {v4, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    move-result-object v4

    .line 417
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    .line 419
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Landroid/os/Bundle;

    .line 425
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    goto :goto_18e

    .line 429
    :cond_1ac
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 432
    move-result-object v1

    .line 433
    :goto_1b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_1d9

    .line 439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Landroidx/fragment/app/FragmentState;

    .line 445
    new-instance v3, Landroid/os/Bundle;

    .line 447
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 450
    const-string v4, "state"

    .line 452
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 455
    const-string v4, "fragment_"

    .line 457
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    move-result-object v4

    .line 461
    iget-object v2, v2, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    .line 463
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 473
    goto :goto_1b0

    .line 474
    :cond_1d9
    :goto_1d9
    return-object v0

    .line 475
    :catchall_1da
    move-exception v0

    .line 476
    :try_start_1db
    monitor-exit v5
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1da

    .line 477
    throw v0
.end method

.method public final c(Landroidx/fragment/app/Fragment;)V
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 8
    if-eqz v1, :cond_1d

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v3, "attach: "

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1d
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 32
    if-eqz v1, :cond_50

    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 37
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 39
    if-nez v1, :cond_50

    .line 41
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 43
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a0;->a(Landroidx/fragment/app/Fragment;)V

    .line 46
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_47

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v1, "add from attach: "

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_47
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_50

    .line 78
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 81
    :cond_50
    return-void
.end method

.method public final c0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/y;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2a

    .line 16
    iget-object v2, v0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 18
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2a

    .line 24
    iget-object p1, v0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 26
    iget p1, p1, Landroidx/fragment/app/Fragment;->mState:I

    .line 28
    const/4 v2, -0x1

    .line 29
    if-le p1, v2, :cond_29

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/y;->o()Landroid/os/Bundle;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_29

    .line 37
    new-instance v1, Landroidx/fragment/app/Fragment$SavedState;

    .line 39
    invoke-direct {v1, p1}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 42
    :cond_29
    return-object v1

    .line 43
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    const-string v2, "Fragment "

    .line 47
    const-string v3, " is not currently in the FragmentManager"

    .line 49
    invoke-static {v2, p1, v3}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/IllegalStateException;)V

    .line 59
    throw v1
.end method

.method public final d()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    return-void
.end method

.method public final d0()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-eqz v2, :cond_29

    .line 17
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->O:Landroidx/fragment/app/FragmentManager$f;

    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 30
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->O:Landroidx/fragment/app/FragmentManager$f;

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->l0()V

    .line 42
    :cond_29
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    .line 46
    throw v1
.end method

.method public final e()Ljava/util/HashSet;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->d()Ljava/util/ArrayList;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2d

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/y;

    .line 28
    iget-object v2, v2, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 32
    if-eqz v2, :cond_f

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->K()Landroidx/fragment/app/l0;

    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Landroidx/fragment/app/SpecialEffectsController;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/l0;)Landroidx/fragment/app/SpecialEffectsController;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_f

    .line 46
    :cond_2d
    return-object v0
.end method

.method public final e0(Landroidx/fragment/app/Fragment;Z)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->H(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_11

    .line 7
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 18
    :cond_11
    return-void
.end method

.method public final f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/y;

    .line 13
    if-eqz v0, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v0, Landroidx/fragment/app/y;

    .line 18
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 20
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 22
    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/s;Landroidx/fragment/app/a0;Landroidx/fragment/app/Fragment;)V

    .line 25
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->m(Ljava/lang/ClassLoader;)V

    .line 38
    iget p1, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 40
    iput p1, v0, Landroidx/fragment/app/y;->e:I

    .line 42
    return-object v0
.end method

.method public final f0(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_17

    .line 13
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 15
    if-eqz v0, :cond_14

    .line 17
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 19
    if-ne v0, p0, :cond_17

    .line 21
    :cond_14
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    return-void

    .line 24
    :cond_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v1, "Fragment "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " is not an active fragment of FragmentManager "

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p2
.end method

.method public final g(Landroidx/fragment/app/Fragment;)V
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 8
    if-eqz v1, :cond_1d

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v3, "detach: "

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1d
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 32
    if-nez v1, :cond_5f

    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 37
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 39
    if-eqz v3, :cond_5f

    .line 41
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_42

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v3, "remove from detach: "

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_42
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 69
    iget-object v2, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 71
    monitor-enter v2

    .line 72
    :try_start_47
    iget-object v0, v0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_5c

    .line 78
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 81
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_58

    .line 87
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 89
    :cond_58
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->h0(Landroidx/fragment/app/Fragment;)V

    .line 92
    goto :goto_5f

    .line 93
    :catchall_5c
    move-exception p1

    .line 94
    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    .line 95
    throw p1

    .line 96
    :cond_5f
    :goto_5f
    return-void
.end method

.method public final g0(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_36

    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_17

    .line 15
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 17
    if-eqz v0, :cond_36

    .line 19
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 21
    if-ne v0, p0, :cond_17

    .line 23
    goto :goto_36

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v2, "Fragment "

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " is not an active fragment of FragmentManager "

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    :cond_36
    :goto_36
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 57
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 59
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->q(Landroidx/fragment/app/Fragment;)V

    .line 62
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 64
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->q(Landroidx/fragment/app/Fragment;)V

    .line 67
    return-void
.end method

.method public final h(Landroid/content/res/Configuration;Z)V
    .registers 6

    .line 1
    if-eqz p2, :cond_15

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    instance-of v0, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_15

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/IllegalStateException;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_15
    :goto_15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_39

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 44
    if-eqz v1, :cond_1f

    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    if-eqz p2, :cond_1f

    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManager;->h(Landroid/content/res/Configuration;Z)V

    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    return-void
.end method

.method public final h0(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->H(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_33

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v2

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v1

    .line 26
    if-lez v2, :cond_33

    .line 28
    sget v1, Lw0/b;->visible_removing_fragment_view_tag:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_26

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 39
    :cond_26
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    .line 48
    move-result p1

    .line 49
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 52
    :cond_33
    return-void
.end method

.method public final i(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_26

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    if-eqz v3, :cond_11

    .line 32
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_11

    .line 38
    return v2

    .line 39
    :cond_26
    return v1
.end method

.method public final j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_7

    .line 7
    return v2

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 11
    invoke-virtual {v3}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v3

    .line 19
    move v4, v2

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_39

    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 32
    if-eqz v5, :cond_13

    .line 34
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_13

    .line 40
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_13

    .line 46
    if-nez v0, :cond_34

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :cond_34
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    move v4, v1

    .line 57
    goto :goto_13

    .line 58
    :cond_39
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    .line 60
    if-eqz p1, :cond_5b

    .line 62
    :goto_3d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result p1

    .line 68
    if-ge v2, p1, :cond_5b

    .line 70
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 78
    if-eqz v0, :cond_55

    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_58

    .line 86
    :cond_55
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 89
    :cond_58
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_3d

    .line 92
    :cond_5b
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    .line 94
    return v4
.end method

.method public final j0()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->d()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2b

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/y;

    .line 23
    iget-object v2, v1, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 25
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 27
    if-eqz v3, :cond_a

    .line 29
    iget-boolean v3, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 31
    if-eqz v3, :cond_24

    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 36
    goto :goto_a

    .line 37
    :cond_24
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/y;->k()V

    .line 43
    goto :goto_a

    .line 44
    :cond_2b
    return-void
.end method

.method public final k()V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->e()Ljava/util/HashSet;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1e

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    .line 27
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->e()V

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 33
    instance-of v2, v1, Landroidx/lifecycle/f0;

    .line 35
    if-eqz v2, :cond_2b

    .line 37
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 39
    iget-object v0, v0, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 41
    iget-boolean v0, v0, Landroidx/fragment/app/v;->e:Z

    .line 43
    goto :goto_40

    .line 44
    :cond_2b
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    instance-of v1, v1, Landroid/app/Activity;

    .line 50
    if-eqz v1, :cond_40

    .line 52
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 54
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/app/Activity;

    .line 60
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 63
    move-result v1

    .line 64
    xor-int/2addr v0, v1

    .line 65
    :cond_40
    :goto_40
    if-eqz v0, :cond_83

    .line 67
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    .line 69
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v0

    .line 77
    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_83

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroidx/fragment/app/BackStackState;

    .line 89
    iget-object v1, v1, Landroidx/fragment/app/BackStackState;->a:Ljava/util/ArrayList;

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v1

    .line 95
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_4c

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 107
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 109
    iget-object v3, v3, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/v;

    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    const/4 v4, 0x3

    .line 115
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_7f

    .line 121
    const-string v4, "Clearing non-config state for saved state of Fragment "

    .line 123
    const-string v5, "FragmentManager"

    .line 125
    invoke-static {v4, v2, v5}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_7f
    invoke-virtual {v3, v2}, Landroidx/fragment/app/v;->c(Ljava/lang/String;)V

    .line 131
    goto :goto_5e

    .line 132
    :cond_83
    const/4 v0, -0x1

    .line 133
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 136
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 138
    instance-of v1, v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 140
    if-eqz v1, :cond_94

    .line 142
    check-cast v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 144
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->p:Landroidx/fragment/app/t;

    .line 146
    invoke-interface {v0, v1}, Landroidx/core/content/OnTrimMemoryProvider;->removeOnTrimMemoryListener(Ll0/a;)V

    .line 149
    :cond_94
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 151
    instance-of v1, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 153
    if-eqz v1, :cond_a1

    .line 155
    check-cast v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 157
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/t;

    .line 159
    invoke-interface {v0, v1}, Landroidx/core/content/OnConfigurationChangedProvider;->removeOnConfigurationChangedListener(Ll0/a;)V

    .line 162
    :cond_a1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 164
    instance-of v1, v0, Ld0/k;

    .line 166
    if-eqz v1, :cond_ae

    .line 168
    check-cast v0, Ld0/k;

    .line 170
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->q:Landroidx/fragment/app/t;

    .line 172
    invoke-interface {v0, v1}, Ld0/k;->removeOnMultiWindowModeChangedListener(Ll0/a;)V

    .line 175
    :cond_ae
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 177
    instance-of v1, v0, Ld0/l;

    .line 179
    if-eqz v1, :cond_bb

    .line 181
    check-cast v0, Ld0/l;

    .line 183
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/t;

    .line 185
    invoke-interface {v0, v1}, Ld0/l;->removeOnPictureInPictureModeChangedListener(Ll0/a;)V

    .line 188
    :cond_bb
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 190
    instance-of v1, v0, Lm0/j;

    .line 192
    if-eqz v1, :cond_c8

    .line 194
    check-cast v0, Lm0/j;

    .line 196
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentManager$c;

    .line 198
    invoke-interface {v0, v1}, Lm0/j;->removeMenuProvider(Lm0/o;)V

    .line 201
    :cond_c8
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 204
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/n;

    .line 206
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 208
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 210
    if-eqz v1, :cond_da

    .line 212
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/fragment/app/FragmentManager$b;

    .line 214
    invoke-virtual {v1}, Landroidx/activity/h;->remove()V

    .line 217
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 219
    :cond_da
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->B:Landroidx/activity/result/d;

    .line 221
    if-eqz v0, :cond_eb

    .line 223
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 226
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->C:Landroidx/activity/result/d;

    .line 228
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 231
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/d;

    .line 233
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 236
    :cond_eb
    return-void
.end method

.method public final k0(Ljava/lang/IllegalStateException;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const-string v0, "Activity state:"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Landroidx/fragment/app/k0;

    .line 17
    invoke-direct {v0}, Landroidx/fragment/app/k0;-><init>()V

    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 27
    const-string v3, "Failed dumping state"

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 33
    if-eqz v0, :cond_2d

    .line 35
    :try_start_22
    new-array v4, v4, [Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/q;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    .line 40
    goto :goto_37

    .line 41
    :catch_28
    move-exception v0

    .line 42
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    goto :goto_37

    .line 46
    :cond_2d
    :try_start_2d
    new-array v0, v4, [Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/FragmentManager;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 51
    goto :goto_37

    .line 52
    :catch_33
    move-exception v0

    .line 53
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_37
    throw p1
.end method

.method public final l(Z)V
    .registers 5

    .line 1
    if-eqz p1, :cond_15

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    instance-of v0, v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_15

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/IllegalStateException;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_15
    :goto_15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_39

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 44
    if-eqz v1, :cond_1f

    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 49
    if-eqz p1, :cond_1f

    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->l(Z)V

    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    return-void
.end method

.method public final l0()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_13

    .line 13
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/fragment/app/FragmentManager$b;

    .line 15
    invoke-virtual {v1, v2}, Landroidx/activity/h;->setEnabled(Z)V

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    .line 21
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/fragment/app/FragmentManager$b;

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_25

    .line 29
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 31
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->P(Landroidx/fragment/app/Fragment;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_25

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 v2, 0x0

    .line 39
    :goto_26
    invoke-virtual {v0, v2}, Landroidx/activity/h;->setEnabled(Z)V

    .line 42
    return-void

    .line 43
    :catchall_2a
    move-exception v1

    .line 44
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .line 45
    throw v1
.end method

.method public final m(ZZ)V
    .registers 6

    .line 1
    if-eqz p2, :cond_15

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    instance-of v0, v0, Ld0/k;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_15

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/IllegalStateException;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_15
    :goto_15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_39

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 44
    if-eqz v1, :cond_1f

    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 49
    if-eqz p2, :cond_1f

    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManager;->m(ZZ)V

    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    return-void
.end method

.method public final n()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->e()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_25

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 32
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->n()V

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    return-void
.end method

.method public final o(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_26

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    if-eqz v3, :cond_11

    .line 32
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_11

    .line 38
    return v2

    .line 39
    :cond_26
    return v1
.end method

.method public final p(Landroid/view/Menu;)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_22

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 29
    if-eqz v1, :cond_10

    .line 31
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    return-void
.end method

.method public final q(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_11

    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 18
    :cond_11
    return-void
.end method

.method public final r(ZZ)V
    .registers 6

    .line 1
    if-eqz p2, :cond_15

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    instance-of v0, v0, Ld0/l;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_15

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/IllegalStateException;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_15
    :goto_15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_39

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 44
    if-eqz v1, :cond_1f

    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 49
    if-eqz p2, :cond_1f

    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManager;->r(ZZ)V

    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    return-void
.end method

.method public removeFragmentOnAttachListener(Landroidx/fragment/app/w;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public final s(Landroid/view/Menu;)Z
    .registers 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2d

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    if-eqz v3, :cond_11

    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_11

    .line 38
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_11

    .line 44
    move v1, v2

    .line 45
    goto :goto_11

    .line 46
    :cond_2d
    return v1
.end method

.method public final t(I)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 7
    iget-object v2, v2, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v2

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_21

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/fragment/app/y;

    .line 29
    if-eqz v3, :cond_10

    .line 31
    iput p1, v3, Landroidx/fragment/app/y;->e:I

    .line 33
    goto :goto_10

    .line 34
    :cond_21
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->R(IZ)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->e()Ljava/util/HashSet;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 45
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3c

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    .line 57
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->e()V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_42

    .line 60
    goto :goto_2c

    .line 61
    :cond_3c
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 63
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 70
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    const-string v1, "FragmentManager{"

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
    const-string v1, " in "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 31
    const-string v2, "}"

    .line 33
    const-string v3, "{"

    .line 35
    if-eqz v1, :cond_43

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_6b

    .line 68
    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 70
    if-eqz v1, :cond_66

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    goto :goto_6b

    .line 103
    :cond_66
    const-string v1, "null"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_6b
    const-string v1, "}}"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1
    const-string v0, "    "

    .line 3
    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "    "

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_56

    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    const-string v3, "Active Fragments:"

    .line 42
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    iget-object v3, v1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v3

    .line 55
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_56

    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroidx/fragment/app/y;

    .line 67
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    if-eqz v4, :cond_50

    .line 72
    iget-object v4, v4, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 74
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 80
    goto :goto_36

    .line 81
    :cond_50
    const-string v4, "null"

    .line 83
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    goto :goto_36

    .line 87
    :cond_56
    iget-object p2, v1, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 92
    move-result p2

    .line 93
    const/4 p4, 0x0

    .line 94
    if-lez p2, :cond_8c

    .line 96
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    const-string v2, "Added Fragments:"

    .line 101
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    move v2, p4

    .line 105
    :goto_68
    if-ge v2, p2, :cond_8c

    .line 107
    iget-object v3, v1, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 115
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    const-string v4, "  #"

    .line 120
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 126
    const-string v4, ": "

    .line 128
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 140
    goto :goto_68

    .line 141
    :cond_8c
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    .line 143
    if-eqz p2, :cond_c3

    .line 145
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 148
    move-result p2

    .line 149
    if-lez p2, :cond_c3

    .line 151
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    const-string v1, "Fragments Created Menus:"

    .line 156
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    move v1, p4

    .line 160
    :goto_9f
    if-ge v1, p2, :cond_c3

    .line 162
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 170
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    const-string v3, "  #"

    .line 175
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 181
    const-string v3, ": "

    .line 183
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 195
    goto :goto_9f

    .line 196
    :cond_c3
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 198
    if-eqz p2, :cond_fe

    .line 200
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 203
    move-result p2

    .line 204
    if-lez p2, :cond_fe

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    const-string v1, "Back Stack:"

    .line 211
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    move v1, p4

    .line 215
    :goto_d6
    if-ge v1, p2, :cond_fe

    .line 217
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Landroidx/fragment/app/a;

    .line 225
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    const-string v3, "  #"

    .line 230
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 236
    const-string v3, ": "

    .line 238
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const/4 v3, 0x1

    .line 249
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 254
    goto :goto_d6

    .line 255
    :cond_fe
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    const-string v0, "Back Stack Index: "

    .line 265
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 270
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 273
    move-result v0

    .line 274
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 286
    monitor-enter p2

    .line 287
    :try_start_11e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 292
    move-result v0

    .line 293
    if-lez v0, :cond_14e

    .line 295
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    const-string v1, "Pending Actions:"

    .line 300
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    :goto_12e
    if-ge p4, v0, :cond_14e

    .line 305
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Landroidx/fragment/app/FragmentManager$n;

    .line 313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string v2, "  #"

    .line 318
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 324
    const-string v2, ": "

    .line 326
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 332
    add-int/lit8 p4, p4, 0x1

    .line 334
    goto :goto_12e

    .line 335
    :cond_14e
    monitor-exit p2
    :try_end_14f
    .catchall {:try_start_11e .. :try_end_14f} :catchall_1bf

    .line 336
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const-string p2, "FragmentManager misc state:"

    .line 341
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    const-string p2, "  mHost="

    .line 349
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 354
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string p2, "  mContainer="

    .line 362
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/n;

    .line 367
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 370
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 372
    if-eqz p2, :cond_182

    .line 374
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    const-string p2, "  mParent="

    .line 379
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/Fragment;

    .line 384
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 387
    :cond_182
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string p2, "  mCurState="

    .line 392
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 397
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 400
    const-string p2, " mStateSaved="

    .line 402
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 407
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 410
    const-string p2, " mStopped="

    .line 412
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 417
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 420
    const-string p2, " mDestroyed="

    .line 422
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    .line 427
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 430
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 432
    if-eqz p2, :cond_1be

    .line 434
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    const-string p1, "  mNeedMenuInvalidate="

    .line 439
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 444
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 447
    :cond_1be
    return-void

    .line 448
    :catchall_1bf
    move-exception p1

    .line 449
    :try_start_1c0
    monitor-exit p2
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_1bf

    .line 450
    throw p1
.end method

.method public final v(Landroidx/fragment/app/FragmentManager$n;Z)V
    .registers 5

    .line 1
    if-nez p2, :cond_29

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    if-nez v0, :cond_1a

    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    .line 9
    if-eqz p1, :cond_12

    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 33
    goto :goto_29

    .line 34
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1

    .line 42
    :cond_29
    :goto_29
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 44
    monitor-enter v0

    .line 45
    :try_start_2c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 47
    if-nez v1, :cond_3c

    .line 49
    if-eqz p2, :cond_34

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    const-string p2, "Activity has been destroyed"

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1

    .line 61
    :cond_3c
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d0()V

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_46
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_46

    .line 73
    throw p1
.end method

.method public final w(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 3
    if-nez v0, :cond_58

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 7
    if-nez v0, :cond_1c

    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    .line 11
    if-eqz p1, :cond_14

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 42
    move-result-object v1

    .line 43
    if-ne v0, v1, :cond_50

    .line 45
    if-nez p1, :cond_3d

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_35

    .line 53
    goto :goto_3d

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_3d
    :goto_3d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 64
    if-nez p1, :cond_4f

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 80
    :cond_4f
    return-void

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    const-string v0, "Must be called from main thread of fragment host"

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    const-string v0, "FragmentManager is already executing transactions"

    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1
.end method

.method public final x(Z)Z
    .registers 11

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->w(Z)V

    .line 4
    const/4 p1, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_6
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 9
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 11
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 13
    monitor-enter v4

    .line 14
    :try_start_d
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_18

    .line 22
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_87

    .line 23
    move v7, v0

    .line 24
    goto :goto_43

    .line 25
    :cond_18
    :try_start_18
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v5

    .line 31
    move v6, v0

    .line 32
    move v7, v6

    .line 33
    :goto_20
    if-ge v6, v5, :cond_32

    .line 35
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v8

    .line 41
    check-cast v8, Landroidx/fragment/app/FragmentManager$n;

    .line 43
    invoke-interface {v8, v2, v3}, Landroidx/fragment/app/FragmentManager$n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 46
    move-result v8
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_75

    .line 47
    or-int/2addr v7, v8

    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 50
    goto :goto_20

    .line 51
    :cond_32
    :try_start_32
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 58
    invoke-virtual {v2}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 61
    move-result-object v2

    .line 62
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->O:Landroidx/fragment/app/FragmentManager$f;

    .line 64
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_87

    .line 68
    :goto_43
    if-eqz v7, :cond_58

    .line 70
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 72
    :try_start_47
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 74
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_53

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()V

    .line 82
    move v1, p1

    .line 83
    goto :goto_6

    .line 84
    :catchall_53
    move-exception p1

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()V

    .line 88
    throw p1

    .line 89
    :cond_58
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->l0()V

    .line 92
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 94
    if-eqz p1, :cond_64

    .line 96
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->j0()V

    .line 101
    :cond_64
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 103
    iget-object p1, p1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 105
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 108
    move-result-object p1

    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 117
    return v1

    .line 118
    :catchall_75
    move-exception p1

    .line 119
    :try_start_76
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 126
    invoke-virtual {v0}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->O:Landroidx/fragment/app/FragmentManager$f;

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    throw p1

    .line 136
    :catchall_87
    move-exception p1

    .line 137
    monitor-exit v4
    :try_end_89
    .catchall {:try_start_76 .. :try_end_89} :catchall_87

    .line 138
    throw p1
.end method

.method public final y(Landroidx/fragment/app/FragmentManager$n;Z)V
    .registers 4

    .line 1
    if-eqz p2, :cond_b

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    :cond_a
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->w(Z)V

    .line 15
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 19
    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManager$n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2b

    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 28
    :try_start_1b
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 30
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()V

    .line 38
    goto :goto_2b

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()V

    .line 43
    throw p1

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->l0()V

    .line 47
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 49
    if-eqz p1, :cond_38

    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->j0()V

    .line 57
    :cond_38
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 59
    iget-object p1, p1, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 61
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 64
    move-result-object p1

    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 73
    return-void
.end method

.method public final z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroidx/fragment/app/a;

    .line 17
    iget-boolean v5, v5, Landroidx/fragment/app/b0;->r:Z

    .line 19
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    .line 21
    if-nez v6, :cond_1e

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v6, v0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 34
    :goto_21
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    .line 36
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 38
    invoke-virtual {v7}, Landroidx/fragment/app/a0;->f()Ljava/util/List;

    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 47
    const/4 v7, 0x0

    .line 48
    move v8, v3

    .line 49
    :goto_30
    const/4 v9, 0x1

    .line 50
    if-ge v8, v4, :cond_17a

    .line 52
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Landroidx/fragment/app/a;

    .line 58
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v11

    .line 62
    check-cast v11, Ljava/lang/Boolean;

    .line 64
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result v11

    .line 68
    const/4 v12, 0x3

    .line 69
    if-nez v11, :cond_12b

    .line 71
    iget-object v11, v0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    .line 73
    const/4 v13, 0x0

    .line 74
    :goto_49
    iget-object v14, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v14

    .line 80
    if-ge v13, v14, :cond_163

    .line 82
    iget-object v14, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v14

    .line 88
    check-cast v14, Landroidx/fragment/app/b0$a;

    .line 90
    iget v15, v14, Landroidx/fragment/app/b0$a;->a:I

    .line 92
    if-eq v15, v9, :cond_11a

    .line 94
    const/4 v9, 0x2

    .line 95
    const/16 v3, 0x9

    .line 97
    if-eq v15, v9, :cond_a1

    .line 99
    if-eq v15, v12, :cond_87

    .line 101
    const/4 v9, 0x6

    .line 102
    if-eq v15, v9, :cond_87

    .line 104
    const/4 v9, 0x7

    .line 105
    if-eq v15, v9, :cond_84

    .line 107
    const/16 v9, 0x8

    .line 109
    if-eq v15, v9, :cond_70

    .line 111
    goto/16 :goto_10e

    .line 113
    :cond_70
    iget-object v9, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 115
    new-instance v12, Landroidx/fragment/app/b0$a;

    .line 117
    const/4 v15, 0x0

    .line 118
    invoke-direct {v12, v3, v6, v15}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 121
    invoke-virtual {v9, v13, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    const/4 v3, 0x1

    .line 125
    iput-boolean v3, v14, Landroidx/fragment/app/b0$a;->c:Z

    .line 127
    add-int/lit8 v13, v13, 0x1

    .line 129
    iget-object v6, v14, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 131
    goto/16 :goto_10e

    .line 133
    :cond_84
    const/4 v9, 0x1

    .line 134
    goto/16 :goto_11a

    .line 136
    :cond_87
    iget-object v9, v14, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 138
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v9, v14, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 143
    if-ne v9, v6, :cond_10e

    .line 145
    iget-object v6, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 147
    new-instance v12, Landroidx/fragment/app/b0$a;

    .line 149
    invoke-direct {v12, v3, v9}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 152
    invoke-virtual {v6, v13, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    add-int/lit8 v13, v13, 0x1

    .line 157
    const/4 v3, 0x1

    .line 158
    const/4 v6, 0x0

    .line 159
    move v9, v3

    .line 160
    goto/16 :goto_11f

    .line 162
    :cond_a1
    iget-object v3, v14, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 164
    iget v9, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 166
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 169
    move-result v12

    .line 170
    add-int/lit8 v12, v12, -0x1

    .line 172
    const/4 v15, 0x0

    .line 173
    :goto_ac
    if-ltz v12, :cond_105

    .line 175
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object v16

    .line 179
    move-object/from16 v2, v16

    .line 181
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 183
    iget v1, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 185
    if-ne v1, v9, :cond_f8

    .line 187
    if-ne v2, v3, :cond_bf

    .line 189
    const/4 v1, 0x1

    .line 190
    move v15, v1

    .line 191
    goto :goto_f8

    .line 192
    :cond_bf
    if-ne v2, v6, :cond_d4

    .line 194
    iget-object v1, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 196
    new-instance v6, Landroidx/fragment/app/b0$a;

    .line 198
    move/from16 v16, v9

    .line 200
    const/4 v9, 0x0

    .line 201
    const/16 v4, 0x9

    .line 203
    invoke-direct {v6, v4, v2, v9}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 206
    invoke-virtual {v1, v13, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    add-int/lit8 v13, v13, 0x1

    .line 211
    const/4 v6, 0x0

    .line 212
    goto :goto_d7

    .line 213
    :cond_d4
    move/from16 v16, v9

    .line 215
    const/4 v9, 0x0

    .line 216
    :goto_d7
    new-instance v1, Landroidx/fragment/app/b0$a;

    .line 218
    const/4 v4, 0x3

    .line 219
    invoke-direct {v1, v4, v2, v9}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 222
    iget v4, v14, Landroidx/fragment/app/b0$a;->d:I

    .line 224
    iput v4, v1, Landroidx/fragment/app/b0$a;->d:I

    .line 226
    iget v4, v14, Landroidx/fragment/app/b0$a;->f:I

    .line 228
    iput v4, v1, Landroidx/fragment/app/b0$a;->f:I

    .line 230
    iget v4, v14, Landroidx/fragment/app/b0$a;->e:I

    .line 232
    iput v4, v1, Landroidx/fragment/app/b0$a;->e:I

    .line 234
    iget v4, v14, Landroidx/fragment/app/b0$a;->g:I

    .line 236
    iput v4, v1, Landroidx/fragment/app/b0$a;->g:I

    .line 238
    iget-object v4, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v4, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v13, v13, 0x1

    .line 248
    goto :goto_fa

    .line 249
    :cond_f8
    :goto_f8
    move/from16 v16, v9

    .line 251
    :goto_fa
    add-int/lit8 v12, v12, -0x1

    .line 253
    move-object/from16 v1, p1

    .line 255
    move-object/from16 v2, p2

    .line 257
    move/from16 v4, p4

    .line 259
    move/from16 v9, v16

    .line 261
    goto :goto_ac

    .line 262
    :cond_105
    if-eqz v15, :cond_111

    .line 264
    iget-object v1, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 269
    add-int/lit8 v13, v13, -0x1

    .line 271
    :cond_10e
    :goto_10e
    const/4 v1, 0x1

    .line 272
    :goto_10f
    move v9, v1

    .line 273
    goto :goto_11f

    .line 274
    :cond_111
    const/4 v1, 0x1

    .line 275
    iput v1, v14, Landroidx/fragment/app/b0$a;->a:I

    .line 277
    iput-boolean v1, v14, Landroidx/fragment/app/b0$a;->c:Z

    .line 279
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    goto :goto_10f

    .line 283
    :cond_11a
    :goto_11a
    iget-object v1, v14, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 285
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :goto_11f
    add-int/2addr v13, v9

    .line 289
    const/4 v12, 0x3

    .line 290
    move-object/from16 v1, p1

    .line 292
    move-object/from16 v2, p2

    .line 294
    move/from16 v3, p3

    .line 296
    move/from16 v4, p4

    .line 298
    goto/16 :goto_49

    .line 300
    :cond_12b
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    .line 302
    iget-object v2, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 307
    move-result v2

    .line 308
    sub-int/2addr v2, v9

    .line 309
    :goto_134
    if-ltz v2, :cond_163

    .line 311
    iget-object v3, v10, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Landroidx/fragment/app/b0$a;

    .line 319
    iget v4, v3, Landroidx/fragment/app/b0$a;->a:I

    .line 321
    if-eq v4, v9, :cond_15a

    .line 323
    const/4 v9, 0x3

    .line 324
    if-eq v4, v9, :cond_154

    .line 326
    packed-switch v4, :pswitch_data_4a0

    .line 329
    goto :goto_15f

    .line 330
    :pswitch_149  #0xa
    iget-object v4, v3, Landroidx/fragment/app/b0$a;->h:Landroidx/lifecycle/Lifecycle$State;

    .line 332
    iput-object v4, v3, Landroidx/fragment/app/b0$a;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 334
    goto :goto_15f

    .line 335
    :pswitch_14e  #0x9
    iget-object v3, v3, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 337
    goto :goto_152

    .line 338
    :pswitch_151  #0x8
    const/4 v3, 0x0

    .line 339
    :goto_152
    move-object v6, v3

    .line 340
    goto :goto_15f

    .line 341
    :cond_154
    :pswitch_154  #0x6
    iget-object v3, v3, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 343
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    goto :goto_15f

    .line 347
    :cond_15a
    :pswitch_15a  #0x7
    iget-object v3, v3, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 349
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    :goto_15f
    add-int/lit8 v2, v2, -0x1

    .line 354
    const/4 v9, 0x1

    .line 355
    goto :goto_134

    .line 356
    :cond_163
    if-nez v7, :cond_16c

    .line 358
    iget-boolean v1, v10, Landroidx/fragment/app/b0;->i:Z

    .line 360
    if-eqz v1, :cond_16a

    .line 362
    goto :goto_16c

    .line 363
    :cond_16a
    const/4 v1, 0x0

    .line 364
    goto :goto_16d

    .line 365
    :cond_16c
    :goto_16c
    const/4 v1, 0x1

    .line 366
    :goto_16d
    move v7, v1

    .line 367
    add-int/lit8 v8, v8, 0x1

    .line 369
    move-object/from16 v1, p1

    .line 371
    move-object/from16 v2, p2

    .line 373
    move/from16 v3, p3

    .line 375
    move/from16 v4, p4

    .line 377
    goto/16 :goto_30

    .line 379
    :cond_17a
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 384
    if-nez v5, :cond_1bb

    .line 386
    iget v1, v0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 388
    const/4 v2, 0x1

    .line 389
    if-lt v1, v2, :cond_1bb

    .line 391
    move/from16 v2, p3

    .line 393
    move/from16 v1, p4

    .line 395
    :goto_18a
    move-object/from16 v3, p1

    .line 397
    if-ge v2, v1, :cond_1bf

    .line 399
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    move-result-object v4

    .line 403
    check-cast v4, Landroidx/fragment/app/a;

    .line 405
    iget-object v4, v4, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 407
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 410
    move-result-object v4

    .line 411
    :cond_19a
    :goto_19a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 414
    move-result v5

    .line 415
    if-eqz v5, :cond_1b8

    .line 417
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 420
    move-result-object v5

    .line 421
    check-cast v5, Landroidx/fragment/app/b0$a;

    .line 423
    iget-object v5, v5, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 425
    if-eqz v5, :cond_19a

    .line 427
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 429
    if-eqz v6, :cond_19a

    .line 431
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 434
    move-result-object v5

    .line 435
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 437
    invoke-virtual {v6, v5}, Landroidx/fragment/app/a0;->g(Landroidx/fragment/app/y;)V

    .line 440
    goto :goto_19a

    .line 441
    :cond_1b8
    add-int/lit8 v2, v2, 0x1

    .line 443
    goto :goto_18a

    .line 444
    :cond_1bb
    move-object/from16 v3, p1

    .line 446
    move/from16 v1, p4

    .line 448
    :cond_1bf
    move/from16 v2, p3

    .line 450
    :goto_1c1
    if-ge v2, v1, :cond_3ac

    .line 452
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 455
    move-result-object v4

    .line 456
    check-cast v4, Landroidx/fragment/app/a;

    .line 458
    move-object/from16 v5, p2

    .line 460
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    move-result-object v6

    .line 464
    check-cast v6, Ljava/lang/Boolean;

    .line 466
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 469
    move-result v6

    .line 470
    const-string v8, "Unknown cmd: "

    .line 472
    if-eqz v6, :cond_2cf

    .line 474
    const/4 v6, -0x1

    .line 475
    invoke-virtual {v4, v6}, Landroidx/fragment/app/a;->o(I)V

    .line 478
    iget-object v6, v4, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 480
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 483
    move-result v6

    .line 484
    const/4 v9, 0x1

    .line 485
    sub-int/2addr v6, v9

    .line 486
    :goto_1e5
    if-ltz v6, :cond_3a8

    .line 488
    iget-object v10, v4, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 490
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 493
    move-result-object v10

    .line 494
    check-cast v10, Landroidx/fragment/app/b0$a;

    .line 496
    iget-object v11, v10, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 498
    if-eqz v11, :cond_220

    .line 500
    const/4 v12, 0x0

    .line 501
    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 503
    invoke-virtual {v11, v9}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 506
    iget v9, v4, Landroidx/fragment/app/b0;->h:I

    .line 508
    const/16 v12, 0x2005

    .line 510
    const/16 v13, 0x2002

    .line 512
    const/16 v14, 0x1001

    .line 514
    const/16 v15, 0x1004

    .line 516
    if-eq v9, v14, :cond_215

    .line 518
    if-eq v9, v13, :cond_213

    .line 520
    if-eq v9, v12, :cond_211

    .line 522
    const/16 v13, 0x1003

    .line 524
    if-eq v9, v13, :cond_215

    .line 526
    if-eq v9, v15, :cond_216

    .line 528
    const/4 v12, 0x0

    .line 529
    goto :goto_216

    .line 530
    :cond_211
    move v12, v15

    .line 531
    goto :goto_216

    .line 532
    :cond_213
    move v12, v14

    .line 533
    goto :goto_216

    .line 534
    :cond_215
    move v12, v13

    .line 535
    :cond_216
    :goto_216
    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 538
    iget-object v9, v4, Landroidx/fragment/app/b0;->q:Ljava/util/ArrayList;

    .line 540
    iget-object v12, v4, Landroidx/fragment/app/b0;->p:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v11, v9, v12}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 545
    :cond_220
    iget v9, v10, Landroidx/fragment/app/b0$a;->a:I

    .line 547
    packed-switch v9, :pswitch_data_4ae

    .line 550
    :pswitch_225  #0x2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 552
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    move-result-object v2

    .line 556
    iget v3, v10, Landroidx/fragment/app/b0$a;->a:I

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    move-result-object v2

    .line 565
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 568
    throw v1

    .line 569
    :pswitch_238  #0xa
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 571
    iget-object v10, v10, Landroidx/fragment/app/b0$a;->h:Landroidx/lifecycle/Lifecycle$State;

    .line 573
    invoke-virtual {v9, v11, v10}, Landroidx/fragment/app/FragmentManager;->f0(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 576
    goto/16 :goto_2ca

    .line 578
    :pswitch_241  #0x9
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 580
    invoke-virtual {v9, v11}, Landroidx/fragment/app/FragmentManager;->g0(Landroidx/fragment/app/Fragment;)V

    .line 583
    goto/16 :goto_2ca

    .line 585
    :pswitch_248  #0x8
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 587
    const/4 v10, 0x0

    .line 588
    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManager;->g0(Landroidx/fragment/app/Fragment;)V

    .line 591
    goto/16 :goto_2ca

    .line 593
    :pswitch_250  #0x7
    iget v9, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 595
    iget v12, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 597
    iget v13, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 599
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 601
    invoke-virtual {v11, v9, v12, v13, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 604
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 606
    const/4 v10, 0x1

    .line 607
    invoke-virtual {v9, v11, v10}, Landroidx/fragment/app/FragmentManager;->e0(Landroidx/fragment/app/Fragment;Z)V

    .line 610
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 612
    invoke-virtual {v9, v11}, Landroidx/fragment/app/FragmentManager;->g(Landroidx/fragment/app/Fragment;)V

    .line 615
    goto :goto_2ca

    .line 616
    :pswitch_267  #0x6
    iget v9, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 618
    iget v12, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 620
    iget v13, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 622
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 624
    invoke-virtual {v11, v9, v12, v13, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 627
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 629
    invoke-virtual {v9, v11}, Landroidx/fragment/app/FragmentManager;->c(Landroidx/fragment/app/Fragment;)V

    .line 632
    goto :goto_2ca

    .line 633
    :pswitch_278  #0x5
    iget v9, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 635
    iget v12, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 637
    iget v13, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 639
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 641
    invoke-virtual {v11, v9, v12, v13, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 644
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 646
    const/4 v10, 0x1

    .line 647
    invoke-virtual {v9, v11, v10}, Landroidx/fragment/app/FragmentManager;->e0(Landroidx/fragment/app/Fragment;Z)V

    .line 650
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 652
    invoke-virtual {v9, v11}, Landroidx/fragment/app/FragmentManager;->L(Landroidx/fragment/app/Fragment;)V

    .line 655
    goto :goto_2ca

    .line 656
    :pswitch_28f  #0x4
    iget v9, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 658
    iget v12, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 660
    iget v13, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 662
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 664
    invoke-virtual {v11, v9, v12, v13, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 667
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 669
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    invoke-static {v11}, Landroidx/fragment/app/FragmentManager;->i0(Landroidx/fragment/app/Fragment;)V

    .line 675
    goto :goto_2ca

    .line 676
    :pswitch_2a3  #0x3
    iget v9, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 678
    iget v12, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 680
    iget v13, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 682
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 684
    invoke-virtual {v11, v9, v12, v13, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 687
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 689
    invoke-virtual {v9, v11}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 692
    goto :goto_2ca

    .line 693
    :pswitch_2b4  #0x1
    iget v9, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 695
    iget v12, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 697
    iget v13, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 699
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 701
    invoke-virtual {v11, v9, v12, v13, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 704
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 706
    const/4 v10, 0x1

    .line 707
    invoke-virtual {v9, v11, v10}, Landroidx/fragment/app/FragmentManager;->e0(Landroidx/fragment/app/Fragment;Z)V

    .line 710
    iget-object v9, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 712
    invoke-virtual {v9, v11}, Landroidx/fragment/app/FragmentManager;->Y(Landroidx/fragment/app/Fragment;)V

    .line 715
    :goto_2ca
    add-int/lit8 v6, v6, -0x1

    .line 717
    const/4 v9, 0x1

    .line 718
    goto/16 :goto_1e5

    .line 720
    :cond_2cf
    const/4 v6, 0x1

    .line 721
    invoke-virtual {v4, v6}, Landroidx/fragment/app/a;->o(I)V

    .line 724
    iget-object v6, v4, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 726
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 729
    move-result v6

    .line 730
    const/4 v9, 0x0

    .line 731
    :goto_2da
    if-ge v9, v6, :cond_3a8

    .line 733
    iget-object v10, v4, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 735
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 738
    move-result-object v10

    .line 739
    check-cast v10, Landroidx/fragment/app/b0$a;

    .line 741
    iget-object v11, v10, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 743
    if-eqz v11, :cond_2fa

    .line 745
    const/4 v12, 0x0

    .line 746
    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 748
    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 751
    iget v12, v4, Landroidx/fragment/app/b0;->h:I

    .line 753
    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 756
    iget-object v12, v4, Landroidx/fragment/app/b0;->p:Ljava/util/ArrayList;

    .line 758
    iget-object v13, v4, Landroidx/fragment/app/b0;->q:Ljava/util/ArrayList;

    .line 760
    invoke-virtual {v11, v12, v13}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 763
    :cond_2fa
    iget v12, v10, Landroidx/fragment/app/b0$a;->a:I

    .line 765
    packed-switch v12, :pswitch_data_4c6

    .line 768
    :pswitch_2ff  #0x2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 770
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    move-result-object v2

    .line 774
    iget v3, v10, Landroidx/fragment/app/b0$a;->a:I

    .line 776
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    move-result-object v2

    .line 783
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 786
    throw v1

    .line 787
    :pswitch_312  #0xa
    iget-object v12, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 789
    iget-object v10, v10, Landroidx/fragment/app/b0$a;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 791
    invoke-virtual {v12, v11, v10}, Landroidx/fragment/app/FragmentManager;->f0(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 794
    goto/16 :goto_3a4

    .line 796
    :pswitch_31b  #0x9
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 798
    const/4 v11, 0x0

    .line 799
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManager;->g0(Landroidx/fragment/app/Fragment;)V

    .line 802
    goto/16 :goto_3a4

    .line 804
    :pswitch_323  #0x8
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 806
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManager;->g0(Landroidx/fragment/app/Fragment;)V

    .line 809
    goto/16 :goto_3a4

    .line 811
    :pswitch_32a  #0x7
    iget v12, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 813
    iget v13, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 815
    iget v14, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 817
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 819
    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 822
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 824
    const/4 v12, 0x0

    .line 825
    invoke-virtual {v10, v11, v12}, Landroidx/fragment/app/FragmentManager;->e0(Landroidx/fragment/app/Fragment;Z)V

    .line 828
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 830
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManager;->c(Landroidx/fragment/app/Fragment;)V

    .line 833
    goto :goto_3a4

    .line 834
    :pswitch_341  #0x6
    iget v12, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 836
    iget v13, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 838
    iget v14, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 840
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 842
    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 845
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 847
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManager;->g(Landroidx/fragment/app/Fragment;)V

    .line 850
    goto :goto_3a4

    .line 851
    :pswitch_352  #0x5
    iget v12, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 853
    iget v13, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 855
    iget v14, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 857
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 859
    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 862
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 864
    const/4 v12, 0x0

    .line 865
    invoke-virtual {v10, v11, v12}, Landroidx/fragment/app/FragmentManager;->e0(Landroidx/fragment/app/Fragment;Z)V

    .line 868
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 870
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    invoke-static {v11}, Landroidx/fragment/app/FragmentManager;->i0(Landroidx/fragment/app/Fragment;)V

    .line 876
    goto :goto_3a4

    .line 877
    :pswitch_36c  #0x4
    iget v12, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 879
    iget v13, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 881
    iget v14, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 883
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 885
    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 888
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 890
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManager;->L(Landroidx/fragment/app/Fragment;)V

    .line 893
    goto :goto_3a4

    .line 894
    :pswitch_37d  #0x3
    iget v12, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 896
    iget v13, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 898
    iget v14, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 900
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 902
    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 905
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 907
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManager;->Y(Landroidx/fragment/app/Fragment;)V

    .line 910
    goto :goto_3a4

    .line 911
    :pswitch_38e  #0x1
    iget v12, v10, Landroidx/fragment/app/b0$a;->d:I

    .line 913
    iget v13, v10, Landroidx/fragment/app/b0$a;->e:I

    .line 915
    iget v14, v10, Landroidx/fragment/app/b0$a;->f:I

    .line 917
    iget v10, v10, Landroidx/fragment/app/b0$a;->g:I

    .line 919
    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 922
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 924
    const/4 v12, 0x0

    .line 925
    invoke-virtual {v10, v11, v12}, Landroidx/fragment/app/FragmentManager;->e0(Landroidx/fragment/app/Fragment;Z)V

    .line 928
    iget-object v10, v4, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 930
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 933
    :goto_3a4
    add-int/lit8 v9, v9, 0x1

    .line 935
    goto/16 :goto_2da

    .line 937
    :cond_3a8
    add-int/lit8 v2, v2, 0x1

    .line 939
    goto/16 :goto_1c1

    .line 941
    :cond_3ac
    move-object/from16 v5, p2

    .line 943
    const/4 v2, 0x0

    .line 944
    add-int/lit8 v4, v1, -0x1

    .line 946
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 949
    move-result-object v4

    .line 950
    check-cast v4, Ljava/lang/Boolean;

    .line 952
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 955
    move-result v4

    .line 956
    move/from16 v6, p3

    .line 958
    :goto_3bd
    if-ge v6, v1, :cond_408

    .line 960
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 963
    move-result-object v8

    .line 964
    check-cast v8, Landroidx/fragment/app/a;

    .line 966
    if-eqz v4, :cond_3e7

    .line 968
    iget-object v9, v8, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 970
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 973
    move-result v9

    .line 974
    add-int/lit8 v9, v9, -0x1

    .line 976
    :goto_3cf
    if-ltz v9, :cond_405

    .line 978
    iget-object v10, v8, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 980
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 983
    move-result-object v10

    .line 984
    check-cast v10, Landroidx/fragment/app/b0$a;

    .line 986
    iget-object v10, v10, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 988
    if-eqz v10, :cond_3e4

    .line 990
    invoke-virtual {v0, v10}, Landroidx/fragment/app/FragmentManager;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 993
    move-result-object v10

    .line 994
    invoke-virtual {v10}, Landroidx/fragment/app/y;->k()V

    .line 997
    :cond_3e4
    add-int/lit8 v9, v9, -0x1

    .line 999
    goto :goto_3cf

    .line 1000
    :cond_3e7
    iget-object v8, v8, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 1002
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1005
    move-result-object v8

    .line 1006
    :cond_3ed
    :goto_3ed
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1009
    move-result v9

    .line 1010
    if-eqz v9, :cond_405

    .line 1012
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1015
    move-result-object v9

    .line 1016
    check-cast v9, Landroidx/fragment/app/b0$a;

    .line 1018
    iget-object v9, v9, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 1020
    if-eqz v9, :cond_3ed

    .line 1022
    invoke-virtual {v0, v9}, Landroidx/fragment/app/FragmentManager;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 1025
    move-result-object v9

    .line 1026
    invoke-virtual {v9}, Landroidx/fragment/app/y;->k()V

    .line 1029
    goto :goto_3ed

    .line 1030
    :cond_405
    add-int/lit8 v6, v6, 0x1

    .line 1032
    goto :goto_3bd

    .line 1033
    :cond_408
    iget v6, v0, Landroidx/fragment/app/FragmentManager;->t:I

    .line 1035
    const/4 v8, 0x1

    .line 1036
    invoke-virtual {v0, v6, v8}, Landroidx/fragment/app/FragmentManager;->R(IZ)V

    .line 1039
    new-instance v6, Ljava/util/HashSet;

    .line 1041
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1044
    move/from16 v8, p3

    .line 1046
    :goto_415
    if-ge v8, v1, :cond_446

    .line 1048
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1051
    move-result-object v9

    .line 1052
    check-cast v9, Landroidx/fragment/app/a;

    .line 1054
    iget-object v9, v9, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 1056
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1059
    move-result-object v9

    .line 1060
    :cond_423
    :goto_423
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1063
    move-result v10

    .line 1064
    if-eqz v10, :cond_443

    .line 1066
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1069
    move-result-object v10

    .line 1070
    check-cast v10, Landroidx/fragment/app/b0$a;

    .line 1072
    iget-object v10, v10, Landroidx/fragment/app/b0$a;->b:Landroidx/fragment/app/Fragment;

    .line 1074
    if-eqz v10, :cond_423

    .line 1076
    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1078
    if-eqz v10, :cond_423

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentManager;->K()Landroidx/fragment/app/l0;

    .line 1083
    move-result-object v11

    .line 1084
    invoke-static {v10, v11}, Landroidx/fragment/app/SpecialEffectsController;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/l0;)Landroidx/fragment/app/SpecialEffectsController;

    .line 1087
    move-result-object v10

    .line 1088
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1091
    goto :goto_423

    .line 1092
    :cond_443
    add-int/lit8 v8, v8, 0x1

    .line 1094
    goto :goto_415

    .line 1095
    :cond_446
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1098
    move-result-object v6

    .line 1099
    :goto_44a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1102
    move-result v8

    .line 1103
    if-eqz v8, :cond_45f

    .line 1105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1108
    move-result-object v8

    .line 1109
    check-cast v8, Landroidx/fragment/app/SpecialEffectsController;

    .line 1111
    iput-boolean v4, v8, Landroidx/fragment/app/SpecialEffectsController;->d:Z

    .line 1113
    invoke-virtual {v8}, Landroidx/fragment/app/SpecialEffectsController;->h()V

    .line 1116
    invoke-virtual {v8}, Landroidx/fragment/app/SpecialEffectsController;->c()V

    .line 1119
    goto :goto_44a

    .line 1120
    :cond_45f
    move/from16 v4, p3

    .line 1122
    :goto_461
    if-ge v4, v1, :cond_482

    .line 1124
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1127
    move-result-object v6

    .line 1128
    check-cast v6, Landroidx/fragment/app/a;

    .line 1130
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1133
    move-result-object v8

    .line 1134
    check-cast v8, Ljava/lang/Boolean;

    .line 1136
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1139
    move-result v8

    .line 1140
    if-eqz v8, :cond_47c

    .line 1142
    iget v8, v6, Landroidx/fragment/app/a;->u:I

    .line 1144
    if-ltz v8, :cond_47c

    .line 1146
    const/4 v8, -0x1

    .line 1147
    iput v8, v6, Landroidx/fragment/app/a;->u:I

    .line 1149
    :cond_47c
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1152
    add-int/lit8 v4, v4, 0x1

    .line 1154
    goto :goto_461

    .line 1155
    :cond_482
    if-eqz v7, :cond_49e

    .line 1157
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 1159
    if-eqz v1, :cond_49e

    .line 1161
    :goto_488
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 1163
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1166
    move-result v1

    .line 1167
    if-ge v2, v1, :cond_49e

    .line 1169
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 1171
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1174
    move-result-object v1

    .line 1175
    check-cast v1, Landroidx/fragment/app/FragmentManager$m;

    .line 1177
    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$m;->onBackStackChanged()V

    .line 1180
    add-int/lit8 v2, v2, 0x1

    .line 1182
    goto :goto_488

    .line 1183
    :cond_49e
    return-void

    .line 1184
    nop

    .line 1185
    :pswitch_data_4a0
    .packed-switch 0x6
        :pswitch_154  #00000006
        :pswitch_15a  #00000007
        :pswitch_151  #00000008
        :pswitch_14e  #00000009
        :pswitch_149  #0000000a
    .end packed-switch

    .line 1199
    :pswitch_data_4ae
    .packed-switch 0x1
        :pswitch_2b4  #00000001
        :pswitch_225  #00000002
        :pswitch_2a3  #00000003
        :pswitch_28f  #00000004
        :pswitch_278  #00000005
        :pswitch_267  #00000006
        :pswitch_250  #00000007
        :pswitch_248  #00000008
        :pswitch_241  #00000009
        :pswitch_238  #0000000a
    .end packed-switch

    .line 1223
    :pswitch_data_4c6
    .packed-switch 0x1
        :pswitch_38e  #00000001
        :pswitch_2ff  #00000002
        :pswitch_37d  #00000003
        :pswitch_36c  #00000004
        :pswitch_352  #00000005
        :pswitch_341  #00000006
        :pswitch_32a  #00000007
        :pswitch_323  #00000008
        :pswitch_31b  #00000009
        :pswitch_312  #0000000a
    .end packed-switch
.end method
