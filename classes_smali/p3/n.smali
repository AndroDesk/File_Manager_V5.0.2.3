.class public final Lp3/n;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lp3/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lh3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/l<",
            "Ljava/lang/Throwable;",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Lp3/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp3/e;",
            "Lh3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/e;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/n;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lp3/n;->b:Lp3/e;

    .line 4
    iput-object p3, p0, Lp3/n;->c:Lh3/l;

    .line 5
    iput-object p4, p0, Lp3/n;->d:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lp3/n;->e:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V
    .registers 15

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v4, v1

    goto :goto_8

    :cond_7
    move-object v4, p2

    :goto_8
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_e

    move-object v5, v1

    goto :goto_f

    :cond_e
    move-object v5, p3

    :goto_f
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_15

    move-object v6, v1

    goto :goto_16

    :cond_15
    move-object v6, p4

    :goto_16
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1c

    move-object v7, v1

    goto :goto_1d

    :cond_1c
    move-object v7, p5

    :goto_1d
    move-object v2, p0

    move-object v3, p1

    .line 7
    invoke-direct/range {v2 .. v7}, Lp3/n;-><init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lp3/n;Lp3/e;Ljava/util/concurrent/CancellationException;I)Lp3/n;
    .registers 12

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 6
    iget-object v0, p0, Lp3/n;->a:Ljava/lang/Object;

    .line 8
    move-object v3, v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move-object v3, v1

    .line 11
    :goto_a
    and-int/lit8 v0, p3, 0x2

    .line 13
    if-eqz v0, :cond_10

    .line 15
    iget-object p1, p0, Lp3/n;->b:Lp3/e;

    .line 17
    :cond_10
    move-object v4, p1

    .line 18
    and-int/lit8 p1, p3, 0x4

    .line 20
    if-eqz p1, :cond_19

    .line 22
    iget-object p1, p0, Lp3/n;->c:Lh3/l;

    .line 24
    move-object v5, p1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move-object v5, v1

    .line 27
    :goto_1a
    and-int/lit8 p1, p3, 0x8

    .line 29
    if-eqz p1, :cond_20

    .line 31
    iget-object v1, p0, Lp3/n;->d:Ljava/lang/Object;

    .line 33
    :cond_20
    move-object v6, v1

    .line 34
    and-int/lit8 p1, p3, 0x10

    .line 36
    if-eqz p1, :cond_27

    .line 38
    iget-object p2, p0, Lp3/n;->e:Ljava/lang/Throwable;

    .line 40
    :cond_27
    move-object v7, p2

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance p0, Lp3/n;

    .line 46
    move-object v2, p0

    .line 47
    invoke-direct/range {v2 .. v7}, Lp3/n;-><init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 50
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lp3/n;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lp3/n;

    iget-object v1, p0, Lp3/n;->a:Ljava/lang/Object;

    iget-object v3, p1, Lp3/n;->a:Ljava/lang/Object;

    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lp3/n;->b:Lp3/e;

    iget-object v3, p1, Lp3/n;->b:Lp3/e;

    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lp3/n;->c:Lh3/l;

    iget-object v3, p1, Lp3/n;->c:Lh3/l;

    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lp3/n;->d:Ljava/lang/Object;

    iget-object v3, p1, Lp3/n;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lp3/n;->e:Ljava/lang/Throwable;

    iget-object p1, p1, Lp3/n;->e:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lp3/n;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lp3/n;->b:Lp3/e;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lp3/n;->c:Lh3/l;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lp3/n;->d:Ljava/lang/Object;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lp3/n;->e:Ljava/lang/Throwable;

    if-nez v2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3d
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CompletedContinuation(result="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lp3/n;->a:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", cancelHandler="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lp3/n;->b:Lp3/e;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", onCancellation="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lp3/n;->c:Lh3/l;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", idempotentResume="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lp3/n;->d:Ljava/lang/Object;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", cancelCause="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lp3/n;->e:Ljava/lang/Throwable;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const/16 v1, 0x29

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
