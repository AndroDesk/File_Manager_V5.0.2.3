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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/m;)V
    .registers 3

    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/n;->a:Lo/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/n;->d:I

    iput-boolean v0, p0, Landroidx/lifecycle/n;->e:Z

    iput-boolean v0, p0, Landroidx/lifecycle/n;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/n;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/n;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/l;)V
    .registers 8

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    :goto_e
    new-instance v0, Landroidx/lifecycle/n$a;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/n$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    invoke-virtual {v1, p1, v0}, Lo/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/n$a;

    if-eqz v1, :cond_1e

    return-void

    :cond_1e
    iget-object v1, p0, Landroidx/lifecycle/n;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/m;

    if-nez v1, :cond_29

    return-void

    :cond_29
    iget v2, p0, Landroidx/lifecycle/n;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_35

    iget-boolean v2, p0, Landroidx/lifecycle/n;->e:Z

    if-eqz v2, :cond_33

    goto :goto_35

    :cond_33
    const/4 v2, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    move v2, v3

    :goto_36
    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->d(Landroidx/lifecycle/l;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/n;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/n;->d:I

    :goto_3f
    iget-object v5, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_88

    iget-object v4, p0, Landroidx/lifecycle/n;->a:Lo/a;

    iget-object v4, v4, Lo/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    iget-object v4, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v4

    if-eqz v4, :cond_73

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/n$a;->a(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v4, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->d(Landroidx/lifecycle/l;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3f

    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_88
    if-nez v2, :cond_8d

    invoke-virtual {p0}, Landroidx/lifecycle/n;->h()V

    :cond_8d
    iget p1, p0, Landroidx/lifecycle/n;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/n;->d:I

    return-void
.end method

.method public final b()Landroidx/lifecycle/Lifecycle$State;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public final c(Landroidx/lifecycle/l;)V
    .registers 3

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/n;->a:Lo/a;

    invoke-virtual {v0, p1}, Lo/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroidx/lifecycle/l;)Landroidx/lifecycle/Lifecycle$State;
    .registers 5

    iget-object v0, p0, Landroidx/lifecycle/n;->a:Lo/a;

    iget-object v1, v0, Lo/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget-object v0, v0, Lo/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/b$c;

    iget-object p1, p1, Lo/b$c;->d:Lo/b$c;

    goto :goto_17

    :cond_16
    move-object p1, v2

    :goto_17
    if-eqz p1, :cond_20

    iget-object p1, p1, Lo/b$c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/n$a;

    iget-object p1, p1, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_21

    :cond_20
    move-object p1, v2

    :goto_21
    iget-object v0, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    :cond_38
    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    if-eqz p1, :cond_43

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_43

    goto :goto_44

    :cond_43
    move-object p1, v0

    :goto_44
    if-eqz v2, :cond_4d

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v2, p1

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

    iget-boolean v0, p0, Landroidx/lifecycle/n;->h:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Ln/a;->a()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1d

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " must be called on the main thread"

    invoke-static {v1, p1, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final f(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->g(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final g(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_23

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p1, v0, :cond_e

    goto :goto_23

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no event down from "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    iput-object p1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    iget-boolean p1, p0, Landroidx/lifecycle/n;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_45

    iget p1, p0, Landroidx/lifecycle/n;->d:I

    if-eqz p1, :cond_2f

    goto :goto_45

    :cond_2f
    iput-boolean v0, p0, Landroidx/lifecycle/n;->e:Z

    invoke-virtual {p0}, Landroidx/lifecycle/n;->h()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/n;->e:Z

    iget-object p1, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p1, v0, :cond_44

    new-instance p1, Lo/a;

    invoke-direct {p1}, Lo/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    :cond_44
    return-void

    :cond_45
    :goto_45
    iput-boolean v0, p0, Landroidx/lifecycle/n;->f:Z

    return-void
.end method

.method public final h()V
    .registers 8

    iget-object v0, p0, Landroidx/lifecycle/n;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/m;

    if-eqz v0, :cond_14d

    :cond_a
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    iget v2, v1, Lo/b;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_13

    goto :goto_2b

    :cond_13
    iget-object v2, v1, Lo/b;->a:Lo/b$c;

    iget-object v2, v2, Lo/b$c;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/n$a;

    iget-object v2, v2, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, v1, Lo/b;->b:Lo/b$c;

    iget-object v5, v5, Lo/b$c;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/lifecycle/n$a;

    iget-object v5, v5, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v5, :cond_2a

    iget-object v2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v5, :cond_2a

    goto :goto_2b

    :cond_2a
    move v3, v4

    :goto_2b
    if-nez v3, :cond_14a

    iput-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    iget-object v2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, v1, Lo/b;->a:Lo/b$c;

    iget-object v1, v1, Lo/b$c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/n$a;

    iget-object v1, v1, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_ba

    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    new-instance v2, Lo/b$b;

    iget-object v3, v1, Lo/b;->b:Lo/b$c;

    iget-object v4, v1, Lo/b;->a:Lo/b$c;

    invoke-direct {v2, v3, v4}, Lo/b$b;-><init>(Lo/b$c;Lo/b$c;)V

    iget-object v1, v1, Lo/b;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    invoke-virtual {v2}, Lo/b$e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-boolean v1, p0, Landroidx/lifecycle/n;->f:Z

    if-nez v1, :cond_ba

    invoke-virtual {v2}, Lo/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/n$a;

    :goto_67
    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_51

    iget-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    if-nez v4, :cond_51

    iget-object v4, p0, Landroidx/lifecycle/n;->a:Lo/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/l;

    iget-object v4, v4, Lo/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v4

    if-eqz v4, :cond_a5

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    iget-object v6, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/n$a;->a(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v4, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_67

    :cond_a5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event down from "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    iget-object v1, v1, Lo/b;->b:Lo/b$c;

    iget-boolean v2, p0, Landroidx/lifecycle/n;->f:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, v1, Lo/b$c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/n$a;

    iget-object v1, v1, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Landroidx/lifecycle/n;->a:Lo/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lo/b$d;

    invoke-direct {v2, v1}, Lo/b$d;-><init>(Lo/b;)V

    iget-object v1, v1, Lo/b;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    invoke-virtual {v2}, Lo/b$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroidx/lifecycle/n;->f:Z

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lo/b$d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/n$a;

    :goto_f9
    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_e3

    iget-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    if-nez v4, :cond_e3

    iget-object v4, p0, Landroidx/lifecycle/n;->a:Lo/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/l;

    iget-object v4, v4, Lo/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e3

    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v4

    if-eqz v4, :cond_135

    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/n$a;->a(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v4, p0, Landroidx/lifecycle/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f9

    :cond_135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14a
    iput-boolean v4, p0, Landroidx/lifecycle/n;->f:Z

    return-void

    :cond_14d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
