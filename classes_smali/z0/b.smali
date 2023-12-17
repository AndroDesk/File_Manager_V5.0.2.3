.class public final Lz0/b;
.super Ljava/lang/Object;
.source "InitializerViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/c0$b;


# instance fields
.field public final a:[Lz0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lz0/e<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lz0/e;)V
    .registers 3
    .param p1  # [Lz0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz0/e<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "initializers"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lz0/b;->a:[Lz0/e;

    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Class;Lz0/c;)Landroidx/lifecycle/a0;
    .registers 10
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lz0/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lz0/b;->a:[Lz0/e;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v4, v2

    .line 7
    :goto_6
    if-ge v3, v1, :cond_23

    .line 9
    aget-object v5, v0, v3

    .line 11
    iget-object v6, v5, Lz0/e;->a:Ljava/lang/Class;

    .line 13
    invoke-static {v6, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_20

    .line 19
    iget-object v4, v5, Lz0/e;->b:Lh3/l;

    .line 21
    invoke-interface {v4, p2}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    instance-of v5, v4, Landroidx/lifecycle/a0;

    .line 27
    if-eqz v5, :cond_1f

    .line 29
    check-cast v4, Landroidx/lifecycle/a0;

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move-object v4, v2

    .line 33
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_6

    .line 36
    :cond_23
    if-eqz v4, :cond_26

    .line 38
    return-object v4

    .line 39
    :cond_26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string v0, "No initializer set for given class "

    .line 43
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p2
.end method
