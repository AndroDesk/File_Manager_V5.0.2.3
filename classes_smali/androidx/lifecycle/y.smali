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

    .line 1
    const-string v0, "owner"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/c0$d;-><init>()V

    .line 9
    invoke-interface {p2}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/lifecycle/y;->e:Lc1/c;

    .line 15
    invoke-interface {p2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    .line 21
    iput-object p3, p0, Landroidx/lifecycle/y;->c:Landroid/os/Bundle;

    .line 23
    iput-object p1, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    .line 25
    if-eqz p1, :cond_2b

    .line 27
    sget-object p2, Landroidx/lifecycle/c0$a;->c:Landroidx/lifecycle/c0$a;

    .line 29
    if-nez p2, :cond_25

    .line 31
    new-instance p2, Landroidx/lifecycle/c0$a;

    .line 33
    invoke-direct {p2, p1}, Landroidx/lifecycle/c0$a;-><init>(Landroid/app/Application;)V

    .line 36
    sput-object p2, Landroidx/lifecycle/c0$a;->c:Landroidx/lifecycle/c0$a;

    .line 38
    :cond_25
    sget-object p1, Landroidx/lifecycle/c0$a;->c:Landroidx/lifecycle/c0$a;

    .line 40
    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 43
    goto :goto_31

    .line 44
    :cond_2b
    new-instance p1, Landroidx/lifecycle/c0$a;

    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-direct {p1, p2}, Landroidx/lifecycle/c0$a;-><init>(Landroid/app/Application;)V

    .line 50
    :goto_31
    iput-object p1, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/c0$a;

    .line 52
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
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
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

    .line 1
    sget-object v0, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0;

    .line 3
    iget-object v1, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    if-eqz v0, :cond_7e

    .line 13
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    .line 15
    iget-object v2, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_6d

    .line 23
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    .line 25
    iget-object v2, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_6d

    .line 33
    sget-object v0, Landroidx/lifecycle/b0;->a:Landroidx/lifecycle/b0;

    .line 35
    iget-object v1, p2, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/app/Application;

    .line 43
    const-class v1, Landroidx/lifecycle/a;

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3b

    .line 51
    if-eqz v0, :cond_3b

    .line 53
    sget-object v2, Landroidx/lifecycle/z;->a:Ljava/util/List;

    .line 55
    invoke-static {p1, v2}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 58
    move-result-object v2

    .line 59
    goto :goto_41

    .line 60
    :cond_3b
    sget-object v2, Landroidx/lifecycle/z;->b:Ljava/util/List;

    .line 62
    invoke-static {p1, v2}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 65
    move-result-object v2

    .line 66
    :goto_41
    if-nez v2, :cond_4a

    .line 68
    iget-object v0, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/c0$a;

    .line 70
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/c0$a;->b(Ljava/lang/Class;Lz0/c;)Landroidx/lifecycle/a0;

    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_4a
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    if-eqz v1, :cond_60

    .line 79
    if-eqz v0, :cond_60

    .line 81
    const/4 v1, 0x2

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    aput-object v0, v1, v3

    .line 86
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->a(Lz0/c;)Landroidx/lifecycle/w;

    .line 89
    move-result-object p2

    .line 90
    aput-object p2, v1, v4

    .line 92
    invoke-static {p1, v2, v1}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    .line 95
    move-result-object p1

    .line 96
    goto :goto_75

    .line 97
    :cond_60
    new-array v0, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->a(Lz0/c;)Landroidx/lifecycle/w;

    .line 102
    move-result-object p2

    .line 103
    aput-object p2, v0, v3

    .line 105
    invoke-static {p1, v2, v0}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    .line 108
    move-result-object p1

    .line 109
    goto :goto_75

    .line 110
    :cond_6d
    iget-object p2, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    .line 112
    if-eqz p2, :cond_76

    .line 114
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;

    .line 117
    move-result-object p1

    .line 118
    :goto_75
    return-object p1

    .line 119
    :cond_76
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 121
    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 123
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p1

    .line 127
    :cond_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 131
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    throw p1
.end method

.method public final c(Landroidx/lifecycle/a0;)V
    .registers 5
    .param p1  # Landroidx/lifecycle/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    .line 3
    if-eqz v0, :cond_31

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/y;->e:Lc1/c;

    .line 7
    const-string v2, "androidx.lifecycle.savedstate.vm.tag"

    .line 9
    invoke-virtual {p1, v2}, Landroidx/lifecycle/a0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/lifecycle/SavedStateHandleController;

    .line 15
    if-eqz p1, :cond_31

    .line 17
    iget-boolean v2, p1, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 19
    if-nez v2, :cond_31

    .line 21
    if-nez v2, :cond_29

    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p1, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 26
    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 29
    iget-object v2, p1, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    .line 31
    iget-object p1, p1, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/w;

    .line 33
    iget-object p1, p1, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    .line 35
    invoke-virtual {v1, v2, p1}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 38
    invoke-static {v0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/Lifecycle;Lc1/c;)V

    .line 41
    goto :goto_31

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    const-string v0, "Already attached to lifecycleOwner"

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
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

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    .line 3
    if-eqz v0, :cond_8f

    .line 5
    const-class v0, Landroidx/lifecycle/a;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_17

    .line 13
    iget-object v1, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    .line 15
    if-eqz v1, :cond_17

    .line 17
    sget-object v1, Landroidx/lifecycle/z;->a:Ljava/util/List;

    .line 19
    invoke-static {p1, v1}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 22
    move-result-object v1

    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    sget-object v1, Landroidx/lifecycle/z;->b:Ljava/util/List;

    .line 26
    invoke-static {p1, v1}, Landroidx/lifecycle/z;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 29
    move-result-object v1

    .line 30
    :goto_1d
    if-nez v1, :cond_3f

    .line 32
    iget-object p2, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    .line 34
    if-eqz p2, :cond_2a

    .line 36
    iget-object p2, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/c0$a;

    .line 38
    invoke-virtual {p2, p1}, Landroidx/lifecycle/c0$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_3e

    .line 43
    :cond_2a
    sget-object p2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    .line 45
    if-nez p2, :cond_35

    .line 47
    new-instance p2, Landroidx/lifecycle/c0$c;

    .line 49
    invoke-direct {p2}, Landroidx/lifecycle/c0$c;-><init>()V

    .line 52
    sput-object p2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    .line 54
    :cond_35
    sget-object p2, Landroidx/lifecycle/c0$c;->a:Landroidx/lifecycle/c0$c;

    .line 56
    invoke-static {p2}, Li3/g;->b(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p2, p1}, Landroidx/lifecycle/c0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 62
    move-result-object p1

    .line 63
    :goto_3e
    return-object p1

    .line 64
    :cond_3f
    iget-object v2, p0, Landroidx/lifecycle/y;->e:Lc1/c;

    .line 66
    iget-object v3, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/Lifecycle;

    .line 68
    iget-object v4, p0, Landroidx/lifecycle/y;->c:Landroid/os/Bundle;

    .line 70
    invoke-virtual {v2, p2}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 73
    move-result-object v5

    .line 74
    sget-object v6, Landroidx/lifecycle/w;->f:[Ljava/lang/Class;

    .line 76
    invoke-static {v5, v4}, Landroidx/lifecycle/w$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/w;

    .line 79
    move-result-object v4

    .line 80
    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    .line 82
    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/w;)V

    .line 85
    iget-boolean v6, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 87
    if-nez v6, :cond_87

    .line 89
    const/4 v6, 0x1

    .line 90
    iput-boolean v6, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 92
    invoke-virtual {v3, v5}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 95
    iget-object v7, v4, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    .line 97
    invoke-virtual {v2, p2, v7}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 100
    invoke-static {v3, v2}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/Lifecycle;Lc1/c;)V

    .line 103
    const/4 p2, 0x0

    .line 104
    if-eqz v0, :cond_79

    .line 106
    iget-object v0, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    .line 108
    if-eqz v0, :cond_79

    .line 110
    const/4 v2, 0x2

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    aput-object v0, v2, p2

    .line 115
    aput-object v4, v2, v6

    .line 117
    invoke-static {p1, v1, v2}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    .line 120
    move-result-object p1

    .line 121
    goto :goto_81

    .line 122
    :cond_79
    new-array v0, v6, [Ljava/lang/Object;

    .line 124
    aput-object v4, v0, p2

    .line 126
    invoke-static {p1, v1, v0}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/a0;

    .line 129
    move-result-object p1

    .line 130
    :goto_81
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 132
    invoke-virtual {p1, p2, v5}, Landroidx/lifecycle/a0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p1

    .line 136
    :cond_87
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 138
    const-string p2, "Already attached to lifecycleOwner"

    .line 140
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p1

    .line 144
    :cond_8f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 146
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 148
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p1
.end method
