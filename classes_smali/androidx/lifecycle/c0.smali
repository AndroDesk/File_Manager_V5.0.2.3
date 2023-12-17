.class public final Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/c0$b;,
        Landroidx/lifecycle/c0$d;,
        Landroidx/lifecycle/c0$c;,
        Landroidx/lifecycle/c0$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/e0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/c0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lz0/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/c0$b;)V
    .registers 4
    .param p1  # Landroidx/lifecycle/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/c0$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "store"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz0/a$a;->b:Lz0/a$a;

    invoke-direct {p0, p1, p2, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/c0$b;Lz0/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/c0$b;Lz0/a;)V
    .registers 5
    .param p1  # Landroidx/lifecycle/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/c0$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Lz0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "store"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/e0;

    iput-object p2, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    iput-object p3, p0, Landroidx/lifecycle/c0;->c:Lz0/a;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/f0;)V
    .registers 6
    .param p1  # Landroidx/lifecycle/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    move-result-object v0

    const-string v1, "owner.viewModelStore"

    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Landroidx/lifecycle/g;

    if-eqz v1, :cond_1f

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/g;

    invoke-interface {v2}, Landroidx/lifecycle/g;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;

    move-result-object v2

    const-string v3, "owner.defaultViewModelProviderFactory"

    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    :cond_1f
    sget-object v2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    if-nez v2, :cond_2a

    new-instance v2, Landroidx/lifecycle/c0$c;

    invoke-direct {v2}, Landroidx/lifecycle/c0$c;-><init>()V

    sput-object v2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    :cond_2a
    sget-object v2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    invoke-static {v2}, Li3/g;->b(Ljava/lang/Object;)V

    :goto_2f
    if-eqz v1, :cond_3d

    check-cast p1, Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->getDefaultViewModelCreationExtras()Lz0/a;

    move-result-object p1

    const-string v1, "{\n        owner.defaultV…ModelCreationExtras\n    }"

    invoke-static {p1, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3f

    :cond_3d
    sget-object p1, Lz0/a$a;->b:Lz0/a$a;

    :goto_3f
    invoke-direct {p0, v0, v2, p1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/c0$b;Lz0/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/a0;
    .registers 5
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/a0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/c0;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;

    move-result-object p1

    return-object p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;
    .registers 6
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/e0;

    iget-object v0, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object p1, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    instance-of p2, p1, Landroidx/lifecycle/c0$d;

    if-eqz p2, :cond_1e

    check-cast p1, Landroidx/lifecycle/c0$d;

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    if-eqz p1, :cond_29

    const-string p2, "viewModel"

    invoke-static {v0, p2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0$d;->c(Landroidx/lifecycle/a0;)V

    :cond_29
    if-eqz v0, :cond_2c

    return-object v0

    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    new-instance v0, Lz0/c;

    iget-object v1, p0, Landroidx/lifecycle/c0;->c:Lz0/a;

    invoke-direct {v0, v1}, Lz0/c;-><init>(Lz0/a;)V

    sget-object v1, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0;

    iget-object v2, v0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_42
    iget-object v1, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    invoke-interface {v1, p1, v0}, Landroidx/lifecycle/c0$b;->b(Ljava/lang/Class;Lz0/c;)Landroidx/lifecycle/a0;

    move-result-object p1
    :try_end_48
    .catch Ljava/lang/AbstractMethodError; {:try_start_42 .. :try_end_48} :catch_49

    goto :goto_4f

    :catch_49
    iget-object v0, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c0$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    :goto_4f
    iget-object v0, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/e0;

    iget-object v0, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/a0;

    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Landroidx/lifecycle/a0;->onCleared()V

    :cond_5e
    return-object p1
.end method
