.class public final Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SavedStateViewModelFactory.kt"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-class v0, Landroidx/lifecycle/w;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Class;

    .line 6
    const/4 v2, 0x0

    .line 7
    const-class v3, Landroid/app/Application;

    .line 9
    aput-object v3, v1, v2

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v0, v1, v2

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "asList(this)"

    .line 20
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sput-object v1, Landroidx/lifecycle/z;->a:Ljava/util/List;

    .line 25
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "singletonList(element)"

    .line 31
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sput-object v0, Landroidx/lifecycle/z;->b:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static final a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;
    .registers 8
    .param p0  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "signature"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "modelClass.constructors"

    .line 12
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    if-ge v2, v1, :cond_5b

    .line 19
    aget-object v3, v0, v2

    .line 21
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 24
    move-result-object v4

    .line 25
    const-string v5, "constructor.parameterTypes"

    .line 27
    invoke-static {v4, v5}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v4}, Lz2/b;->f([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    move-result-object v4

    .line 34
    invoke-static {p1, v4}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_28

    .line 40
    return-object v3

    .line 41
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    move-result v3

    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 48
    move-result v5

    .line 49
    if-ne v3, v5, :cond_58

    .line 51
    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_39

    .line 57
    goto :goto_58

    .line 58
    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 60
    const-string v1, "Class "

    .line 62
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p0, " must have parameters in the proper order: "

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0

    .line 89
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_10

    .line 92
    :cond_5b
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method

.method public static final varargs b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;
    .registers 5
    .param p0  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/reflect/Constructor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/a0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p2

    .line 2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/lifecycle/a0;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_3a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_b} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    return-object p1

    .line 13
    :catch_c
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/RuntimeException;

    .line 16
    const-string v0, "An exception happened in constructor of "

    .line 18
    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    throw p2

    .line 30
    :catch_1d
    move-exception p1

    .line 31
    new-instance p2, Ljava/lang/RuntimeException;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v1, "A "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string p0, " cannot be instantiated."

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    throw p2

    .line 59
    :catch_3a
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/RuntimeException;

    .line 62
    const-string v0, "Failed to access "

    .line 64
    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw p2
.end method
