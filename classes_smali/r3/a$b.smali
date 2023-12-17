.class public final Lr3/a$b;
.super Lr3/j;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr3/j<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lr3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/a$a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lp3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr3/a$a;Lp3/h;)V
    .registers 3
    .param p1  # Lr3/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lp3/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lr3/j;-><init>()V

    .line 4
    iput-object p1, p0, Lr3/a$b;->d:Lr3/a$a;

    .line 6
    iput-object p2, p0, Lr3/a$b;->e:Lp3/g;

    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lu3/r;
    .registers 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/a$b;->e:Lp3/g;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    iget-object v2, p0, Lr3/a$b;->d:Lr3/a$a;

    .line 7
    iget-object v2, v2, Lr3/a$a;->a:Lr3/a;

    .line 9
    iget-object v2, v2, Lr3/d;->a:Lh3/l;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_f

    .line 14
    move-object p1, v3

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 19
    move-result-object v4

    .line 20
    invoke-static {v2, p1, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lh3/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lh3/l;

    .line 23
    move-result-object p1

    .line 24
    :goto_17
    invoke-interface {v0, v1, p1}, Lp3/g;->b(Ljava/lang/Boolean;Lh3/l;)Lu3/r;

    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1e

    .line 30
    return-object v3

    .line 31
    :cond_1e
    sget-object p1, Lp3/u;->a:Lu3/r;

    .line 33
    return-object p1
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/a$b;->d:Lr3/a$a;

    .line 3
    iput-object p1, v0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lr3/a$b;->e:Lp3/g;

    .line 7
    invoke-interface {p1}, Lp3/g;->c()V

    .line 10
    return-void
.end method

.method public final p(Lr3/i;)V
    .registers 5
    .param p1  # Lr3/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/i<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lr3/a$b;->e:Lp3/g;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2}, Lp3/g;->f(Ljava/lang/Boolean;Ljava/lang/Object;)Lu3/r;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_17

    .line 15
    iget-object v0, p0, Lr3/a$b;->d:Lr3/a$a;

    .line 17
    iput-object p1, v0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lr3/a$b;->e:Lp3/g;

    .line 21
    invoke-interface {p1}, Lp3/g;->c()V

    .line 24
    :cond_17
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ReceiveHasNext@"

    .line 7
    invoke-static {v0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
