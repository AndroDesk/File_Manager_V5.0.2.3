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
.method public constructor <init>(Lr3/e;)V
    .registers 2
    .param p1  # Lr3/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lr3/a$a;->a:Lr3/a;

    .line 6
    sget-object p1, Lr3/c;->d:Lu3/r;

    .line 8
    iput-object p1, p0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 10
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

    .line 1
    iget-object v0, p0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 3
    sget-object v1, Lr3/c;->d:Lu3/r;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v1, :cond_18

    .line 9
    instance-of p1, v0, Lr3/i;

    .line 11
    if-eqz p1, :cond_12

    .line 13
    check-cast v0, Lr3/i;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v2, v3

    .line 20
    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    iget-object v0, p0, Lr3/a$a;->a:Lr3/a;

    .line 27
    invoke-virtual {v0}, Lr3/a;->k()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 33
    if-eq v0, v1, :cond_32

    .line 35
    instance-of p1, v0, Lr3/i;

    .line 37
    if-eqz p1, :cond_2c

    .line 39
    check-cast v0, Lr3/i;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v2, v3

    .line 46
    :goto_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_32
    invoke-static {p1}, Lb3/a;->c(La3/c;)La3/c;

    .line 54
    move-result-object p1

    .line 55
    instance-of v0, p1, Lu3/f;

    .line 57
    const/4 v1, 0x0

    .line 58
    if-nez v0, :cond_41

    .line 60
    new-instance v0, Lp3/h;

    .line 62
    invoke-direct {v0, v3, p1}, Lp3/h;-><init>(ILa3/c;)V

    .line 65
    goto :goto_5b

    .line 66
    :cond_41
    move-object v0, p1

    .line 67
    check-cast v0, Lu3/f;

    .line 69
    invoke-virtual {v0}, Lu3/f;->j()Lp3/h;

    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_4b

    .line 75
    goto :goto_52

    .line 76
    :cond_4b
    invoke-virtual {v0}, Lp3/h;->r()Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_52

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    :goto_52
    move-object v0, v1

    .line 84
    :goto_53
    if-nez v0, :cond_5b

    .line 86
    new-instance v0, Lp3/h;

    .line 88
    const/4 v2, 0x2

    .line 89
    invoke-direct {v0, v2, p1}, Lp3/h;-><init>(ILa3/c;)V

    .line 92
    :cond_5b
    :goto_5b
    new-instance p1, Lr3/a$b;

    .line 94
    invoke-direct {p1, p0, v0}, Lr3/a$b;-><init>(Lr3/a$a;Lp3/h;)V

    .line 97
    :cond_60
    iget-object v2, p0, Lr3/a$a;->a:Lr3/a;

    .line 99
    invoke-virtual {v2, p1}, Lr3/a;->h(Lr3/a$b;)Z

    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_76

    .line 105
    iget-object v1, p0, Lr3/a$a;->a:Lr3/a;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    new-instance v2, Lr3/a$c;

    .line 112
    invoke-direct {v2, v1, p1}, Lr3/a$c;-><init>(Lr3/a;Lr3/a$b;)V

    .line 115
    invoke-virtual {v0, v2}, Lp3/h;->o(Lr3/a$c;)V

    .line 118
    goto :goto_a7

    .line 119
    :cond_76
    iget-object v2, p0, Lr3/a$a;->a:Lr3/a;

    .line 121
    invoke-virtual {v2}, Lr3/a;->k()Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    iput-object v2, p0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 127
    instance-of v3, v2, Lr3/i;

    .line 129
    if-eqz v3, :cond_91

    .line 131
    check-cast v2, Lr3/i;

    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Lp3/h;->resumeWith(Ljava/lang/Object;)V

    .line 145
    goto :goto_a7

    .line 146
    :cond_91
    sget-object v3, Lr3/c;->d:Lu3/r;

    .line 148
    if-eq v2, v3, :cond_60

    .line 150
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    iget-object v3, p0, Lr3/a$a;->a:Lr3/a;

    .line 154
    iget-object v3, v3, Lr3/d;->a:Lh3/l;

    .line 156
    if-nez v3, :cond_9e

    .line 158
    goto :goto_a4

    .line 159
    :cond_9e
    iget-object v1, v0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 161
    invoke-static {v3, v2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lh3/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lh3/l;

    .line 164
    move-result-object v1

    .line 165
    :goto_a4
    invoke-virtual {v0, v1, p1}, Lp3/h;->s(Lh3/l;Ljava/lang/Boolean;)V

    .line 168
    :goto_a7
    invoke-virtual {v0}, Lp3/h;->n()Ljava/lang/Object;

    .line 171
    move-result-object p1

    .line 172
    return-object p1
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lr3/i;

    .line 5
    if-nez v1, :cond_15

    .line 7
    sget-object v1, Lr3/c;->d:Lu3/r;

    .line 9
    if-eq v0, v1, :cond_d

    .line 11
    iput-object v1, p0, Lr3/a$a;->b:Ljava/lang/Object;

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0

    .line 22
    :cond_15
    check-cast v0, Lr3/i;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    .line 29
    const-string v1, "Channel was closed"

    .line 31
    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    .line 34
    sget v1, Lu3/q;->a:I

    .line 36
    throw v0
.end method
