.class public final Lp3/o0$b;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lp3/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private volatile synthetic _exceptionsHolder:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _isCompleting:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _rootCause:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final a:Lp3/s0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/s0;Ljava/lang/Throwable;)V
    .registers 3
    .param p1  # Lp3/s0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp3/o0$b;->a:Lp3/s0;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lp3/o0$b;->_isCompleting:I

    .line 9
    iput-object p2, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Throwable;

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Throwable;

    .line 5
    if-nez v0, :cond_9

    .line 7
    iput-object p1, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 9
    return-void

    .line 10
    :cond_9
    if-ne p1, v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 15
    if-nez v0, :cond_13

    .line 17
    iput-object p1, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 19
    goto :goto_32

    .line 20
    :cond_13
    instance-of v1, v0, Ljava/lang/Throwable;

    .line 22
    if-eqz v1, :cond_29

    .line 24
    if-ne p1, v0, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iput-object v1, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 41
    goto :goto_32

    .line 42
    :cond_29
    instance-of v1, v0, Ljava/util/ArrayList;

    .line 44
    if-eqz v1, :cond_33

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_32
    return-void

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    const-string v1, "State is "

    .line 56
    invoke-static {v0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method public final c()Ljava/lang/Throwable;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Throwable;

    .line 5
    return-object v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Throwable;

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget v0, p0, Lp3/o0$b;->_isCompleting:I

    .line 3
    return v0
.end method

.method public final f()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 3
    sget-object v1, Lp3/u;->h:Lu3/r;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final g(Ljava/lang/Throwable;)Ljava/util/ArrayList;
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x4

    .line 4
    if-nez v0, :cond_b

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    goto :goto_1f

    .line 12
    :cond_b
    instance-of v2, v0, Ljava/lang/Throwable;

    .line 14
    if-eqz v2, :cond_19

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    move-object v0, v2

    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    instance-of v1, v0, Ljava/util/ArrayList;

    .line 28
    if-eqz v1, :cond_3a

    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    :goto_1f
    iget-object v1, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 34
    check-cast v1, Ljava/lang/Throwable;

    .line 36
    if-nez v1, :cond_26

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 43
    :goto_2a
    if-eqz p1, :cond_35

    .line 45
    invoke-static {p1, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_35

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_35
    sget-object p1, Lp3/u;->h:Lu3/r;

    .line 56
    iput-object p1, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 58
    return-object v0

    .line 59
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    const-string v1, "State is "

    .line 63
    invoke-static {v0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
.end method

.method public final getList()Lp3/s0;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/o0$b;->a:Lp3/s0;

    .line 3
    return-object v0
.end method

.method public final h()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lp3/o0$b;->_isCompleting:I

    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Finishing[cancelling="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lp3/o0$b;->d()Z

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", completing="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lp3/o0$b;->_isCompleting:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", rootCause="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lp3/o0$b;->_rootCause:Ljava/lang/Object;

    .line 31
    check-cast v1, Ljava/lang/Throwable;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", exceptions="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lp3/o0$b;->_exceptionsHolder:Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", list="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lp3/o0$b;->a:Lp3/s0;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const/16 v1, 0x5d

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
