.class public final Lr3/a$a;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lr3/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr3/g<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lr3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lr3/e;)V
    .registers 2
    .param p1  # Lr3/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/a$a;->a:Lr3/a;

    sget-object p1, Lr3/c;->d:Lu3/r;

    iput-object p1, p0, Lr3/a$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(La3/c;)Ljava/lang/Object;
    .registers 6
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/a$a;->b:Ljava/lang/Object;

    sget-object v1, Lr3/c;->d:Lu3/r;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_18

    instance-of p1, v0, Lr3/i;

    if-eqz p1, :cond_12

    check-cast v0, Lr3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_18
    iget-object v0, p0, Lr3/a$a;->a:Lr3/a;

    invoke-virtual {v0}, Lr3/a;->k()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lr3/a$a;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_32

    instance-of p1, v0, Lr3/i;

    if-eqz p1, :cond_2c

    check-cast v0, Lr3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_32
    invoke-static {p1}, Lb3/a;->c(La3/c;)La3/c;

    move-result-object p1

    instance-of v0, p1, Lu3/f;

    const/4 v1, 0x0

    if-nez v0, :cond_41

    new-instance v0, Lp3/h;

    invoke-direct {v0, v3, p1}, Lp3/h;-><init>(ILa3/c;)V

    goto :goto_5b

    :cond_41
    move-object v0, p1

    check-cast v0, Lu3/f;

    invoke-virtual {v0}, Lu3/f;->j()Lp3/h;

    move-result-object v0

    if-nez v0, :cond_4b

    goto :goto_52

    :cond_4b
    invoke-virtual {v0}, Lp3/h;->r()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_53

    :cond_52
    :goto_52
    move-object v0, v1

    :goto_53
    if-nez v0, :cond_5b

    new-instance v0, Lp3/h;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1}, Lp3/h;-><init>(ILa3/c;)V

    :cond_5b
    :goto_5b
    new-instance p1, Lr3/a$b;

    invoke-direct {p1, p0, v0}, Lr3/a$b;-><init>(Lr3/a$a;Lp3/h;)V

    :cond_60
    iget-object v2, p0, Lr3/a$a;->a:Lr3/a;

    invoke-virtual {v2, p1}, Lr3/a;->h(Lr3/a$b;)Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v1, p0, Lr3/a$a;->a:Lr3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lr3/a$c;

    invoke-direct {v2, v1, p1}, Lr3/a$c;-><init>(Lr3/a;Lr3/a$b;)V

    invoke-virtual {v0, v2}, Lp3/h;->o(Lr3/a$c;)V

    goto :goto_a7

    :cond_76
    iget-object v2, p0, Lr3/a$a;->a:Lr3/a;

    invoke-virtual {v2}, Lr3/a;->k()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lr3/a$a;->b:Ljava/lang/Object;

    instance-of v3, v2, Lr3/i;

    if-eqz v3, :cond_91

    check-cast v2, Lr3/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp3/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_a7

    :cond_91
    sget-object v3, Lr3/c;->d:Lu3/r;

    if-eq v2, v3, :cond_60

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lr3/a$a;->a:Lr3/a;

    iget-object v3, v3, Lr3/d;->a:Lh3/l;

    if-nez v3, :cond_9e

    goto :goto_a4

    :cond_9e
    iget-object v1, v0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3, v2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lh3/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lh3/l;

    move-result-object v1

    :goto_a4
    invoke-virtual {v0, v1, p1}, Lp3/h;->s(Lh3/l;Ljava/lang/Boolean;)V

    :goto_a7
    invoke-virtual {v0}, Lp3/h;->n()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lr3/i;

    if-nez v1, :cond_15

    sget-object v1, Lr3/c;->d:Lu3/r;

    if-eq v0, v1, :cond_d

    iput-object v1, p0, Lr3/a$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    check-cast v0, Lr3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    sget v1, Lu3/q;->a:I

    throw v0
.end method
