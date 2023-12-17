.class public final Landroidx/lifecycle/c0$a;
.super Landroidx/lifecycle/c0$c;
.source "ViewModelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static c:Landroidx/lifecycle/c0$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/c0$c;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/c0$a;->b:Landroid/app/Application;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/a0;
    .registers 3
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
    iget-object v0, p0, Landroidx/lifecycle/c0$a;->b:Landroid/app/Application;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/c0$a;->c(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/a0;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    const-string v0, "AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras)."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method public final b(Ljava/lang/Class;Lz0/c;)Landroidx/lifecycle/a0;
    .registers 4
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
    iget-object v0, p0, Landroidx/lifecycle/c0$a;->b:Landroid/app/Application;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/c0$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_26

    .line 10
    :cond_9
    sget-object v0, Landroidx/lifecycle/b0;->a:Landroidx/lifecycle/b0;

    .line 12
    iget-object p2, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Landroid/app/Application;

    .line 20
    if-eqz p2, :cond_1a

    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/c0$a;->c(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/a0;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_26

    .line 27
    :cond_1a
    const-class p2, Landroidx/lifecycle/a;

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_27

    .line 35
    invoke-super {p0, p1}, Landroidx/lifecycle/c0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 38
    move-result-object p1

    .line 39
    :goto_26
    return-object p1

    .line 40
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    const-string p2, "CreationExtras must have an application by `APPLICATION_KEY`"

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1
.end method

.method public final c(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/a0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/a0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/Application;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "Cannot create an instance of "

    .line 3
    const-class v1, Landroidx/lifecycle/a;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_52

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_b
    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    const-class v3, Landroid/app/Application;

    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    move-result-object v2

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    aput-object p2, v1, v4

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroidx/lifecycle/a0;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_20} :catch_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_20} :catch_3c
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_20} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_20} :catch_26

    .line 33
    const-string p1, "{\n                try {\n…          }\n            }"

    .line 35
    invoke-static {p2, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    goto :goto_56

    .line 39
    :catch_26
    move-exception p2

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    .line 42
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    throw v1

    .line 50
    :catch_31
    move-exception p2

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    .line 53
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw v1

    .line 61
    :catch_3c
    move-exception p2

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    .line 64
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw v1

    .line 72
    :catch_47
    move-exception p2

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    .line 75
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    throw v1

    .line 83
    :cond_52
    invoke-super {p0, p1}, Landroidx/lifecycle/c0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 86
    move-result-object p2

    .line 87
    :goto_56
    return-object p2
.end method
