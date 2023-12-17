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

    .line 5
    sget-object v0, Lz0/a$a;->b:Lz0/a$a;

    .line 6
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/e0;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    .line 4
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

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    move-result-object v0

    const-string v1, "owner.viewModelStore"

    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v1, p1, Landroidx/lifecycle/g;

    if-eqz v1, :cond_1f

    .line 9
    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/g;

    invoke-interface {v2}, Landroidx/lifecycle/g;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;

    move-result-object v2

    const-string v3, "owner.defaultViewModelProviderFactory"

    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    .line 10
    :cond_1f
    sget-object v2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    if-nez v2, :cond_2a

    .line 11
    new-instance v2, Landroidx/lifecycle/c0$c;

    invoke-direct {v2}, Landroidx/lifecycle/c0$c;-><init>()V

    .line 12
    sput-object v2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    .line 13
    :cond_2a
    sget-object v2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    .line 14
    invoke-static {v2}, Li3/g;->b(Ljava/lang/Object;)V

    :goto_2f
    if-eqz v1, :cond_3d

    .line 15
    check-cast p1, Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->getDefaultViewModelCreationExtras()Lz0/a;

    move-result-object p1

    const-string v1, "{\n        owner.defaultV…ModelCreationExtras\n    }"

    invoke-static {p1, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3f

    .line 16
    :cond_3d
    sget-object p1, Lz0/a$a;->b:Lz0/a$a;

    .line 17
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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1c

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/c0;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
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

    .line 1
    const-string v0, "key"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/e0;

    .line 8
    iget-object v0, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/lifecycle/a0;

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_34

    .line 22
    iget-object p1, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    .line 24
    instance-of p2, p1, Landroidx/lifecycle/c0$d;

    .line 26
    if-eqz p2, :cond_1e

    .line 28
    check-cast p1, Landroidx/lifecycle/c0$d;

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    if-eqz p1, :cond_29

    .line 34
    const-string p2, "viewModel"

    .line 36
    invoke-static {v0, p2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0$d;->c(Landroidx/lifecycle/a0;)V

    .line 42
    :cond_29
    if-eqz v0, :cond_2c

    .line 44
    return-object v0

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 47
    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    :cond_34
    new-instance v0, Lz0/c;

    .line 55
    iget-object v1, p0, Landroidx/lifecycle/c0;->c:Lz0/a;

    .line 57
    invoke-direct {v0, v1}, Lz0/c;-><init>(Lz0/a;)V

    .line 60
    sget-object v1, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0;

    .line 62
    iget-object v2, v0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 64
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :try_start_42
    iget-object v1, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    .line 69
    invoke-interface {v1, p1, v0}, Landroidx/lifecycle/c0$b;->b(Ljava/lang/Class;Lz0/c;)Landroidx/lifecycle/a0;

    .line 72
    move-result-object p1
    :try_end_48
    .catch Ljava/lang/AbstractMethodError; {:try_start_42 .. :try_end_48} :catch_49

    .line 73
    goto :goto_4f

    .line 74
    :catch_49
    iget-object v0, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/c0$b;

    .line 76
    invoke-interface {v0, p1}, Landroidx/lifecycle/c0$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 79
    move-result-object p1

    .line 80
    :goto_4f
    iget-object v0, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/e0;

    .line 82
    iget-object v0, v0, Landroidx/lifecycle/e0;->a:Ljava/util/HashMap;

    .line 84
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Landroidx/lifecycle/a0;

    .line 90
    if-eqz p2, :cond_5e

    .line 92
    invoke-virtual {p2}, Landroidx/lifecycle/a0;->onCleared()V

    .line 95
    :cond_5e
    return-object p1
.end method
