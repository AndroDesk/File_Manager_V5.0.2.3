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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    const-string v0, "j"

    const-string v1, "value"

    invoke-static {p1, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    iput-object p1, p0, Lj1/e;->a:Ljava/lang/Object;

    iput-object v0, p0, Lj1/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lj1/e;->c:Landroidx/window/core/SpecificationComputer$VerificationMode;

    iput-object p3, p0, Lj1/e;->d:Lj1/d;

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

    iget-object v0, p0, Lj1/e;->a:Ljava/lang/Object;

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

    const-string v0, "condition"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj1/e;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_15

    move-object p2, p0

    goto :goto_24

    :cond_15
    new-instance p2, Lj1/c;

    iget-object v1, p0, Lj1/e;->a:Ljava/lang/Object;

    iget-object v2, p0, Lj1/e;->b:Ljava/lang/String;

    iget-object v4, p0, Lj1/e;->d:Lj1/d;

    iget-object v5, p0, Lj1/e;->c:Landroidx/window/core/SpecificationComputer$VerificationMode;

    move-object v0, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lj1/c;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lj1/d;Landroidx/window/core/SpecificationComputer$VerificationMode;)V

    :goto_24
    return-object p2
.end method
