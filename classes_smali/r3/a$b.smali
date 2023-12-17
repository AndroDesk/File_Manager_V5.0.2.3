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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Lr3/j;-><init>()V

    iput-object p1, p0, Lr3/a$b;->d:Lr3/a$a;

    iput-object p2, p0, Lr3/a$b;->e:Lp3/g;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lu3/r;
    .registers 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/a$b;->e:Lp3/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lr3/a$b;->d:Lr3/a$a;

    iget-object v2, v2, Lr3/a$a;->a:Lr3/a;

    iget-object v2, v2, Lr3/d;->a:Lh3/l;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    move-object p1, v3

    goto :goto_17

    :cond_f
    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lh3/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lh3/l;

    move-result-object p1

    :goto_17
    invoke-interface {v0, v1, p1}, Lp3/g;->b(Ljava/lang/Boolean;Lh3/l;)Lu3/r;

    move-result-object p1

    if-nez p1, :cond_1e

    return-object v3

    :cond_1e
    sget-object p1, Lp3/u;->a:Lu3/r;

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b;->d:Lr3/a$a;

    iput-object p1, v0, Lr3/a$a;->b:Ljava/lang/Object;

    iget-object p1, p0, Lr3/a$b;->e:Lp3/g;

    invoke-interface {p1}, Lp3/g;->c()V

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr3/a$b;->e:Lp3/g;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lp3/g;->f(Ljava/lang/Boolean;Ljava/lang/Object;)Lu3/r;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lr3/a$b;->d:Lr3/a$a;

    iput-object p1, v0, Lr3/a$a;->b:Ljava/lang/Object;

    iget-object p1, p0, Lr3/a$b;->e:Lp3/g;

    invoke-interface {p1}, Lp3/g;->c()V

    :cond_17
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiveHasNext@"

    invoke-static {v0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
