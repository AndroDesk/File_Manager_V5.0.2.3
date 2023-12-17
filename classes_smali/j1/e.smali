.class public final Lj1/e;
.super Landroidx/window/core/SpecificationComputer;
.source "SpecificationComputer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/window/core/SpecificationComputer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/window/core/SpecificationComputer$VerificationMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lj1/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/window/core/SpecificationComputer$VerificationMode;Lj1/d;)V
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/core/SpecificationComputer$VerificationMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Lj1/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "j"

    .line 3
    const-string v1, "value"

    .line 5
    invoke-static {p1, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    .line 11
    iput-object p1, p0, Lj1/e;->a:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lj1/e;->b:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lj1/e;->c:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 17
    iput-object p3, p0, Lj1/e;->d:Lj1/d;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lj1/e;->a:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public final c(Ljava/lang/String;Lh3/l;)Landroidx/window/core/SpecificationComputer;
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh3/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/window/core/SpecificationComputer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "condition"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lj1/e;->a:Ljava/lang/Object;

    .line 8
    invoke-interface {p2, v0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_15

    .line 20
    move-object p2, p0

    .line 21
    goto :goto_24

    .line 22
    :cond_15
    new-instance p2, Lj1/c;

    .line 24
    iget-object v1, p0, Lj1/e;->a:Ljava/lang/Object;

    .line 26
    iget-object v2, p0, Lj1/e;->b:Ljava/lang/String;

    .line 28
    iget-object v4, p0, Lj1/e;->d:Lj1/d;

    .line 30
    iget-object v5, p0, Lj1/e;->c:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 32
    move-object v0, p2

    .line 33
    move-object v3, p1

    .line 34
    invoke-direct/range {v0 .. v5}, Lj1/c;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lj1/d;Landroidx/window/core/SpecificationComputer$VerificationMode;)V

    .line 37
    :goto_24
    return-object p2
.end method
