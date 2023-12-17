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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    const-string v0, "initializers"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/b;->a:[Lz0/e;

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

    iget-object v0, p0, Lz0/b;->a:[Lz0/e;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_6
    if-ge v3, v1, :cond_23

    aget-object v5, v0, v3

    iget-object v6, v5, Lz0/e;->a:Ljava/lang/Class;

    invoke-static {v6, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v4, v5, Lz0/e;->b:Lh3/l;

    invoke-interface {v4, p2}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/lifecycle/a0;

    if-eqz v5, :cond_1f

    check-cast v4, Landroidx/lifecycle/a0;

    goto :goto_20

    :cond_1f
    move-object v4, v2

    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_23
    if-eqz v4, :cond_26

    return-object v4

    :cond_26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "No initializer set for given class "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
