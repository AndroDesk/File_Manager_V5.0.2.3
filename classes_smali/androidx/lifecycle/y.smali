.class public final Landroidx/lifecycle/y;
.super Landroidx/lifecycle/c0$d;
.source "SavedStateViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/c0$b;


# instance fields
.field public a:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/c0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lc1/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lc1/e;Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Lc1/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/c0$d;-><init>()V

    invoke-interface {p2}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/y;->e:Lc1/c;

    invoke-interface {p2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Landroidx/lifecycle/y;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    if-eqz p1, :cond_2b

    sget-object p2, Landroidx/lifecycle/c0$a;->c:Landroidx/lifecycle/c0$a;

    if-nez p2, :cond_25

    new-instance p2, Landroidx/lifecycle/c0$a;

    invoke-direct {p2, p1}, Landroidx/lifecycle/c0$a;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/c0$a;->c:Landroidx/lifecycle/c0$a;

    :cond_25
    sget-object p1, Landroidx/lifecycle/c0$a;->c:Landroidx/lifecycle/c0$a;

    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    goto :goto_31

    :cond_2b
    new-instance p1, Landroidx/lifecycle/c0$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/c0$a;-><init>(Landroid/app/Application;)V

    :goto_31
    iput-object p1, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/c0$a;

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

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Class;Lz0/c;)Landroidx/lifecycle/a0;
    .registers 8
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

    sget-object v0, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0;

    iget-object v1, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7e

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    iget-object v2, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6d

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    iget-object v2, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6d

    sget-object v0, Landroidx/lifecycle/b0;->a:Landroidx/lifecycle/b0;

    iget-object v1, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3b

    if-eqz v0, :cond_3b

    sget-object v2, Landroidx/lifecycle/z;->a:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_41

    :cond_3b
    sget-object v2, Landroidx/lifecycle/z;->b:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_41
    if-nez v2, :cond_4a

    iget-object v0, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/c0$a;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/c0$a;->b(Ljava/lang/Class;Lz0/c;)Landroidx/lifecycle/a0;

    move-result-object p1

    return-object p1

    :cond_4a
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_60

    if-eqz v0, :cond_60

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->a(Lz0/c;)Landroidx/lifecycle/w;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p1, v2, v1}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    move-result-object p1

    goto :goto_75

    :cond_60
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->a(Lz0/c;)Landroidx/lifecycle/w;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v2, v0}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    move-result-object p1

    goto :goto_75

    :cond_6d
    iget-object p2, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz p2, :cond_76

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;

    move-result-object p1

    :goto_75
    return-object p1

    :cond_76
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/lifecycle/a0;)V
    .registers 5
    .param p1  # Landroidx/lifecycle/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_31

    iget-object v1, p0, Landroidx/lifecycle/y;->e:Lc1/c;

    const-string v2, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p1, v2}, Landroidx/lifecycle/a0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p1, :cond_31

    iget-boolean v2, p1, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    if-nez v2, :cond_31

    if-nez v2, :cond_29

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    iget-object v2, p1, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    iget-object p1, p1, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/w;

    iget-object p1, p1, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    invoke-virtual {v1, v2, p1}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/Lifecycle;Lc1/c;)V

    goto :goto_31

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached to lifecycleOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    :goto_31
    return-void
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;
    .registers 11
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

    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_8f

    const-class v0, Landroidx/lifecycle/a;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    if-eqz v1, :cond_17

    sget-object v1, Landroidx/lifecycle/z;->a:Ljava/util/List;

    invoke-static {p1, v1}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_1d

    :cond_17
    sget-object v1, Landroidx/lifecycle/z;->b:Ljava/util/List;

    invoke-static {p1, v1}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_1d
    if-nez v1, :cond_3f

    iget-object p2, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    if-eqz p2, :cond_2a

    iget-object p2, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/c0$a;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/c0$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    goto :goto_3e

    :cond_2a
    sget-object p2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    if-nez p2, :cond_35

    new-instance p2, Landroidx/lifecycle/c0$c;

    invoke-direct {p2}, Landroidx/lifecycle/c0$c;-><init>()V

    sput-object p2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    :cond_35
    sget-object p2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    invoke-static {p2}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/lifecycle/c0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    :goto_3e
    return-object p1

    :cond_3f
    iget-object v2, p0, Landroidx/lifecycle/y;->e:Lc1/c;

    iget-object v3, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    iget-object v4, p0, Landroidx/lifecycle/y;->c:Landroid/os/Bundle;

    invoke-virtual {v2, p2}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/w;->f:[Ljava/lang/Class;

    invoke-static {v5, v4}, Landroidx/lifecycle/w$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/w;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/w;)V

    iget-boolean v6, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    if-nez v6, :cond_87

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    invoke-virtual {v3, v5}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    iget-object v7, v4, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    invoke-virtual {v2, p2, v7}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    invoke-static {v3, v2}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/Lifecycle;Lc1/c;)V

    const/4 p2, 0x0

    if-eqz v0, :cond_79

    iget-object v0, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    if-eqz v0, :cond_79

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p2

    aput-object v4, v2, v6

    invoke-static {p1, v1, v2}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    move-result-object p1

    goto :goto_81

    :cond_79
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v4, v0, p2

    invoke-static {p1, v1, v0}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    move-result-object p1

    :goto_81
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p1, p2, v5}, Landroidx/lifecycle/a0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_87
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
