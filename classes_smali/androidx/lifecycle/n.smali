.class public final Landroidx/lifecycle/n;
.super Landroidx/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/n$a;
    }
.end annotation


# instance fields
.field public a:Lo/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a<",
            "Landroidx/lifecycle/l;",
            "Landroidx/lifecycle/n$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/lifecycle/Lifecycle$State;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/m;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/m;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    .line 4
    new-instance v0, Lo/a;

    .line 6
    invoke-direct {v0}, Lo/a;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/lifecycle/n;->d:I

    .line 14
    iput-boolean v0, p0, Landroidx/lifecycle/n;->e:Z

    .line 16
    iput-boolean v0, p0, Landroidx/lifecycle/n;->f:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    iput-object v0, p0, Landroidx/lifecycle/n;->c:Ljava/lang/ref/WeakReference;

    .line 32
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 34
    iput-object p1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Landroidx/lifecycle/n;->h:Z

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/l;)V
    .registers 8

    .line 1
    const-string v0, "addObserver"

    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 10
    if-ne v0, v1, :cond_c

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 15
    :goto_e
    new-instance v0, Landroidx/lifecycle/n$a;

    .line 17
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/n$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/Lifecycle$State;)V

    .line 20
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 22
    invoke-virtual {v1, p1, v0}, Lo/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/lifecycle/n$a;

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-object v1, p0, Landroidx/lifecycle/n;->c:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/lifecycle/m;

    .line 39
    if-nez v1, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    iget v2, p0, Landroidx/lifecycle/n;->d:I

    .line 44
    const/4 v3, 0x1

    .line 45
    if-nez v2, :cond_35

    .line 47
    iget-boolean v2, p0, Landroidx/lifecycle/n;->e:Z

    .line 49
    if-eqz v2, :cond_33

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    const/4 v2, 0x0

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    :goto_35
    move v2, v3

    .line 55
    :goto_36
    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->d(Landroidx/lifecycle/l;)Landroidx/lifecycle/Lifecycle$State;

    .line 58
    move-result-object v4

    .line 59
    iget v5, p0, Landroidx/lifecycle/n;->d:I

    .line 61
    add-int/2addr v5, v3

    .line 62
    iput v5, p0, Landroidx/lifecycle/n;->d:I

    .line 64
    :goto_3f
    iget-object v5, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 69
    move-result v4

    .line 70
    if-gez v4, :cond_88

    .line 72
    iget-object v4, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 74
    iget-object v4, v4, Lo/a;->e:Ljava/util/HashMap;

    .line 76
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_88

    .line 82
    iget-object v4, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 84
    iget-object v5, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v4, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 91
    invoke-static {v4}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_73

    .line 97
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/n$a;->a(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 100
    iget-object v4, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 105
    move-result v5

    .line 106
    add-int/lit8 v5, v5, -0x1

    .line 108
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->d(Landroidx/lifecycle/l;)Landroidx/lifecycle/Lifecycle$State;

    .line 114
    move-result-object v4

    .line 115
    goto :goto_3f

    .line 116
    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 118
    const-string v1, "no event up from "

    .line 120
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    move-result-object v1

    .line 124
    iget-object v0, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1

    .line 137
    :cond_88
    if-nez v2, :cond_8d

    .line 139
    invoke-virtual {p0}, Landroidx/lifecycle/n;->h()V

    .line 142
    :cond_8d
    iget p1, p0, Landroidx/lifecycle/n;->d:I

    .line 144
    sub-int/2addr p1, v3

    .line 145
    iput p1, p0, Landroidx/lifecycle/n;->d:I

    .line 147
    return-void
.end method

.method public final b()Landroidx/lifecycle/Lifecycle$State;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    return-object v0
.end method

.method public final c(Landroidx/lifecycle/l;)V
    .registers 3

    .line 1
    const-string v0, "removeObserver"

    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 8
    invoke-virtual {v0, p1}, Lo/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public final d(Landroidx/lifecycle/l;)Landroidx/lifecycle/Lifecycle$State;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 3
    iget-object v1, v0, Lo/a;->e:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_16

    .line 12
    iget-object v0, v0, Lo/a;->e:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lo/b$c;

    .line 20
    iget-object p1, p1, Lo/b$c;->d:Lo/b$c;

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move-object p1, v2

    .line 24
    :goto_17
    if-eqz p1, :cond_20

    .line 26
    iget-object p1, p1, Lo/b$c;->b:Ljava/lang/Object;

    .line 28
    check-cast p1, Landroidx/lifecycle/n$a;

    .line 30
    iget-object p1, p1, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object p1, v2

    .line 34
    :goto_21
    iget-object v0, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_38

    .line 42
    iget-object v0, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    move-object v2, v0

    .line 55
    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    .line 57
    :cond_38
    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 59
    if-eqz p1, :cond_43

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 64
    move-result v1

    .line 65
    if-gez v1, :cond_43

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move-object p1, v0

    .line 69
    :goto_44
    if-eqz v2, :cond_4d

    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 74
    move-result v0

    .line 75
    if-gez v0, :cond_4d

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move-object v2, p1

    .line 79
    :goto_4e
    return-object v2
.end method

.method public final e(Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/n;->h:Z

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ln/a;->isMainThread()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_1d

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v1, "Method "

    .line 20
    const-string v2, " must be called on the main thread"

    .line 22
    invoke-static {v1, p1, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public final f(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 1
    const-string v0, "handleLifecycleEvent"

    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->g(Landroidx/lifecycle/Lifecycle$State;)V

    .line 13
    return-void
.end method

.method public final g(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    if-ne v0, v1, :cond_23

    .line 10
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    if-eq p1, v0, :cond_e

    .line 14
    goto :goto_23

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    const-string v0, "no event down from "

    .line 19
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    :cond_23
    :goto_23
    iput-object p1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 38
    iget-boolean p1, p0, Landroidx/lifecycle/n;->e:Z

    .line 40
    const/4 v0, 0x1

    .line 41
    if-nez p1, :cond_45

    .line 43
    iget p1, p0, Landroidx/lifecycle/n;->d:I

    .line 45
    if-eqz p1, :cond_2f

    .line 47
    goto :goto_45

    .line 48
    :cond_2f
    iput-boolean v0, p0, Landroidx/lifecycle/n;->e:Z

    .line 50
    invoke-virtual {p0}, Landroidx/lifecycle/n;->h()V

    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Landroidx/lifecycle/n;->e:Z

    .line 56
    iget-object p1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 58
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 60
    if-ne p1, v0, :cond_44

    .line 62
    new-instance p1, Lo/a;

    .line 64
    invoke-direct {p1}, Lo/a;-><init>()V

    .line 67
    iput-object p1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 69
    :cond_44
    return-void

    .line 70
    :cond_45
    :goto_45
    iput-boolean v0, p0, Landroidx/lifecycle/n;->f:Z

    .line 72
    return-void
.end method

.method public final h()V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/n;->c:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/m;

    .line 9
    if-eqz v0, :cond_14d

    .line 11
    :cond_a
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 13
    iget v2, v1, Lo/b;->d:I

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_13

    .line 19
    goto :goto_2b

    .line 20
    :cond_13
    iget-object v2, v1, Lo/b;->a:Lo/b$c;

    .line 22
    iget-object v2, v2, Lo/b$c;->b:Ljava/lang/Object;

    .line 24
    check-cast v2, Landroidx/lifecycle/n$a;

    .line 26
    iget-object v2, v2, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    iget-object v5, v1, Lo/b;->b:Lo/b$c;

    .line 30
    iget-object v5, v5, Lo/b$c;->b:Ljava/lang/Object;

    .line 32
    check-cast v5, Landroidx/lifecycle/n$a;

    .line 34
    iget-object v5, v5, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 36
    if-ne v2, v5, :cond_2a

    .line 38
    iget-object v2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 40
    if-ne v2, v5, :cond_2a

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v3, v4

    .line 44
    :goto_2b
    if-nez v3, :cond_14a

    .line 46
    iput-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    .line 48
    iget-object v2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 50
    iget-object v1, v1, Lo/b;->a:Lo/b$c;

    .line 52
    iget-object v1, v1, Lo/b$c;->b:Ljava/lang/Object;

    .line 54
    check-cast v1, Landroidx/lifecycle/n$a;

    .line 56
    iget-object v1, v1, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 61
    move-result v1

    .line 62
    if-gez v1, :cond_ba

    .line 64
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 66
    new-instance v2, Lo/b$b;

    .line 68
    iget-object v3, v1, Lo/b;->b:Lo/b$c;

    .line 70
    iget-object v4, v1, Lo/b;->a:Lo/b$c;

    .line 72
    invoke-direct {v2, v3, v4}, Lo/b$b;-><init>(Lo/b$c;Lo/b$c;)V

    .line 75
    iget-object v1, v1, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 77
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_51
    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_ba

    .line 88
    iget-boolean v1, p0, Landroidx/lifecycle/n;->f:Z

    .line 90
    if-nez v1, :cond_ba

    .line 92
    invoke-virtual {v2}, Lo/b$e;->next()Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Landroidx/lifecycle/n$a;

    .line 104
    :goto_67
    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 106
    iget-object v5, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 111
    move-result v4

    .line 112
    if-lez v4, :cond_51

    .line 114
    iget-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    .line 116
    if-nez v4, :cond_51

    .line 118
    iget-object v4, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Landroidx/lifecycle/l;

    .line 126
    iget-object v4, v4, Lo/a;->e:Ljava/util/HashMap;

    .line 128
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_51

    .line 134
    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 136
    invoke-static {v4}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 139
    move-result-object v4

    .line 140
    if-eqz v4, :cond_a5

    .line 142
    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 145
    move-result-object v5

    .line 146
    iget-object v6, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/n$a;->a(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 154
    iget-object v4, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 159
    move-result v5

    .line 160
    add-int/lit8 v5, v5, -0x1

    .line 162
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    goto :goto_67

    .line 166
    :cond_a5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 168
    const-string v1, "no event down from "

    .line 170
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    move-result-object v1

    .line 174
    iget-object v2, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    throw v0

    .line 187
    :cond_ba
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 189
    iget-object v1, v1, Lo/b;->b:Lo/b$c;

    .line 191
    iget-boolean v2, p0, Landroidx/lifecycle/n;->f:Z

    .line 193
    if-nez v2, :cond_a

    .line 195
    if-eqz v1, :cond_a

    .line 197
    iget-object v2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 199
    iget-object v1, v1, Lo/b$c;->b:Ljava/lang/Object;

    .line 201
    check-cast v1, Landroidx/lifecycle/n$a;

    .line 203
    iget-object v1, v1, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 208
    move-result v1

    .line 209
    if-lez v1, :cond_a

    .line 211
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    new-instance v2, Lo/b$d;

    .line 218
    invoke-direct {v2, v1}, Lo/b$d;-><init>(Lo/b;)V

    .line 221
    iget-object v1, v1, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 223
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 225
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_e3
    invoke-virtual {v2}, Lo/b$d;->hasNext()Z

    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_a

    .line 234
    iget-boolean v1, p0, Landroidx/lifecycle/n;->f:Z

    .line 236
    if-nez v1, :cond_a

    .line 238
    invoke-virtual {v2}, Lo/b$d;->next()Ljava/lang/Object;

    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Landroidx/lifecycle/n$a;

    .line 250
    :goto_f9
    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 252
    iget-object v5, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 257
    move-result v4

    .line 258
    if-gez v4, :cond_e3

    .line 260
    iget-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    .line 262
    if-nez v4, :cond_e3

    .line 264
    iget-object v4, p0, Landroidx/lifecycle/n;->a:Lo/a;

    .line 266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Landroidx/lifecycle/l;

    .line 272
    iget-object v4, v4, Lo/a;->e:Ljava/util/HashMap;

    .line 274
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_e3

    .line 280
    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 282
    iget-object v5, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 289
    invoke-static {v4}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 292
    move-result-object v4

    .line 293
    if-eqz v4, :cond_135

    .line 295
    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/n$a;->a(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 298
    iget-object v4, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 303
    move-result v5

    .line 304
    add-int/lit8 v5, v5, -0x1

    .line 306
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 309
    goto :goto_f9

    .line 310
    :cond_135
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 312
    const-string v1, "no event up from "

    .line 314
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    move-result-object v1

    .line 318
    iget-object v2, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 330
    throw v0

    .line 331
    :cond_14a
    iput-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    .line 333
    return-void

    .line 334
    :cond_14d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 336
    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    .line 338
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 341
    throw v0
.end method
