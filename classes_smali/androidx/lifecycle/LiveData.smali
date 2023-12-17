.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$a;,
        Landroidx/lifecycle/LiveData$b;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lo/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b<",
            "Landroidx/lifecycle/r<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    .line 10
    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lo/b;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I

    .line 12
    sget-object v0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lo/b;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I

    .line 5
    sget-object v1, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    .line 7
    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln/a;->isMainThread()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    const-string v1, "Cannot invoke "

    .line 16
    const-string v2, " on a background thread"

    .line 18
    invoke-static {v1, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/LiveData$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$b;->b:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$b;->h()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_10

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$b;->e(Z)V

    .line 16
    return-void

    .line 17
    :cond_10
    iget v0, p1, Landroidx/lifecycle/LiveData$b;->c:I

    .line 19
    iget v1, p0, Landroidx/lifecycle/LiveData;->g:I

    .line 21
    if-lt v0, v1, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    iput v1, p1, Landroidx/lifecycle/LiveData$b;->c:I

    .line 26
    iget-object p1, p1, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/r;

    .line 28
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    .line 30
    invoke-interface {p1, v0}, Landroidx/lifecycle/r;->onChanged(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public final c(Landroidx/lifecycle/LiveData$b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_8

    .line 6
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    .line 8
    return-void

    .line 9
    :cond_8
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->h:Z

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    .line 14
    if-eqz p1, :cond_14

    .line 16
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$b;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_3e

    .line 21
    :cond_14
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lo/b;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v2, Lo/b$d;

    .line 28
    invoke-direct {v2, v1}, Lo/b$d;-><init>(Lo/b;)V

    .line 31
    iget-object v1, v1, Lo/b;->c:Ljava/util/WeakHashMap;

    .line 33
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_25
    invoke-virtual {v2}, Lo/b$d;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3e

    .line 44
    invoke-virtual {v2}, Lo/b$d;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroidx/lifecycle/LiveData$b;

    .line 56
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$b;)V

    .line 59
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    .line 61
    if-eqz v1, :cond_25

    .line 63
    :cond_3e
    :goto_3e
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    .line 65
    if-nez v1, :cond_a

    .line 67
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z

    .line 69
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    .line 3
    sget-object v1, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/m;",
            "Landroidx/lifecycle/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "observe"

    .line 3
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    .line 21
    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 24
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lo/b;

    .line 26
    invoke-virtual {v1, p2}, Lo/b;->a(Ljava/lang/Object;)Lo/b$c;

    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_22

    .line 32
    iget-object p2, v2, Lo/b$c;->b:Ljava/lang/Object;

    .line 34
    goto :goto_3d

    .line 35
    :cond_22
    new-instance v2, Lo/b$c;

    .line 37
    invoke-direct {v2, p2, v0}, Lo/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iget p2, v1, Lo/b;->d:I

    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 44
    iput p2, v1, Lo/b;->d:I

    .line 46
    iget-object p2, v1, Lo/b;->b:Lo/b$c;

    .line 48
    if-nez p2, :cond_36

    .line 50
    iput-object v2, v1, Lo/b;->a:Lo/b$c;

    .line 52
    iput-object v2, v1, Lo/b;->b:Lo/b$c;

    .line 54
    goto :goto_3c

    .line 55
    :cond_36
    iput-object v2, p2, Lo/b$c;->c:Lo/b$c;

    .line 57
    iput-object p2, v2, Lo/b$c;->d:Lo/b$c;

    .line 59
    iput-object v2, v1, Lo/b;->b:Lo/b$c;

    .line 61
    :goto_3c
    const/4 p2, 0x0

    .line 62
    :goto_3d
    check-cast p2, Landroidx/lifecycle/LiveData$b;

    .line 64
    if-eqz p2, :cond_50

    .line 66
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$b;->g(Landroidx/lifecycle/m;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_48

    .line 72
    goto :goto_50

    .line 73
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    const-string p2, "Cannot add the same observer with different lifecycles"

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1

    .line 81
    :cond_50
    :goto_50
    if-eqz p2, :cond_53

    .line 83
    return-void

    .line 84
    :cond_53
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 91
    return-void
.end method

.method public final f(Landroidx/lifecycle/r;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "observeForever"

    .line 3
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroidx/lifecycle/LiveData$a;

    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$a;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/r;)V

    .line 11
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lo/b;

    .line 13
    invoke-virtual {v1, p1}, Lo/b;->a(Ljava/lang/Object;)Lo/b$c;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_16

    .line 20
    iget-object p1, v2, Lo/b$c;->b:Ljava/lang/Object;

    .line 22
    goto :goto_30

    .line 23
    :cond_16
    new-instance v2, Lo/b$c;

    .line 25
    invoke-direct {v2, p1, v0}, Lo/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    iget p1, v1, Lo/b;->d:I

    .line 30
    add-int/2addr p1, v3

    .line 31
    iput p1, v1, Lo/b;->d:I

    .line 33
    iget-object p1, v1, Lo/b;->b:Lo/b$c;

    .line 35
    if-nez p1, :cond_29

    .line 37
    iput-object v2, v1, Lo/b;->a:Lo/b$c;

    .line 39
    iput-object v2, v1, Lo/b;->b:Lo/b$c;

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    iput-object v2, p1, Lo/b$c;->c:Lo/b$c;

    .line 44
    iput-object p1, v2, Lo/b$c;->d:Lo/b$c;

    .line 46
    iput-object v2, v1, Lo/b;->b:Lo/b$c;

    .line 48
    :goto_2f
    const/4 p1, 0x0

    .line 49
    :goto_30
    check-cast p1, Landroidx/lifecycle/LiveData$b;

    .line 51
    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    .line 53
    if-nez v1, :cond_3d

    .line 55
    if-eqz p1, :cond_39

    .line 57
    return-void

    .line 58
    :cond_39
    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData$b;->e(Z)V

    .line 61
    return-void

    .line 62
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string v0, "Cannot add the same observer with different lifecycles"

    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i(Landroidx/lifecycle/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "removeObserver"

    .line 3
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lo/b;

    .line 8
    invoke-virtual {v0, p1}, Lo/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/lifecycle/LiveData$b;

    .line 14
    if-nez p1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$b;->f()V

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$b;->e(Z)V

    .line 24
    return-void
.end method
