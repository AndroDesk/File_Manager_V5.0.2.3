.class public final Landroidx/lifecycle/SavedStateHandleSupport;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"


# static fields
.field public static final a:Landroidx/lifecycle/SavedStateHandleSupport$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Landroidx/lifecycle/SavedStateHandleSupport$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Landroidx/lifecycle/SavedStateHandleSupport$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/lifecycle/SavedStateHandleSupport$b;

    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandleSupport$b;-><init>()V

    .line 6
    sput-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    .line 8
    new-instance v0, Landroidx/lifecycle/SavedStateHandleSupport$c;

    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandleSupport$c;-><init>()V

    .line 13
    sput-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    .line 15
    new-instance v0, Landroidx/lifecycle/SavedStateHandleSupport$a;

    .line 17
    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandleSupport$a;-><init>()V

    .line 20
    sput-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$a;

    .line 22
    return-void
.end method

.method public static final a(Lz0/c;)Landroidx/lifecycle/w;
    .registers 9
    .param p0  # Lz0/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    .line 3
    iget-object v1, p0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lc1/e;

    .line 11
    if-eqz v0, :cond_ae

    .line 13
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    .line 15
    iget-object v2, p0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/lifecycle/f0;

    .line 23
    if-eqz v1, :cond_a6

    .line 25
    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$a;

    .line 27
    iget-object v3, p0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 29
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/os/Bundle;

    .line 35
    sget-object v3, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0;

    .line 37
    iget-object p0, p0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 39
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_9e

    .line 47
    invoke-interface {v0}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lc1/c;->b()Lc1/c$b;

    .line 54
    move-result-object v0

    .line 55
    instance-of v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v3, :cond_3e

    .line 60
    check-cast v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move-object v0, v4

    .line 64
    :goto_3f
    if-eqz v0, :cond_96

    .line 66
    invoke-static {v1}, Landroidx/lifecycle/SavedStateHandleSupport;->c(Landroidx/lifecycle/f0;)Landroidx/lifecycle/x;

    .line 69
    move-result-object v1

    .line 70
    iget-object v3, v1, Landroidx/lifecycle/x;->a:Ljava/util/LinkedHashMap;

    .line 72
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroidx/lifecycle/w;

    .line 78
    if-nez v3, :cond_95

    .line 80
    sget-object v3, Landroidx/lifecycle/w;->f:[Ljava/lang/Class;

    .line 82
    iget-boolean v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->b:Z

    .line 84
    const/4 v5, 0x1

    .line 85
    if-nez v3, :cond_6a

    .line 87
    iget-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->a:Lc1/c;

    .line 89
    const-string v6, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 91
    invoke-virtual {v3, v6}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 94
    move-result-object v3

    .line 95
    iput-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->c:Landroid/os/Bundle;

    .line 97
    iput-boolean v5, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->b:Z

    .line 99
    iget-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->d:Ly2/c;

    .line 101
    invoke-interface {v3}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroidx/lifecycle/x;

    .line 107
    :cond_6a
    iget-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->c:Landroid/os/Bundle;

    .line 109
    if-eqz v3, :cond_73

    .line 111
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 114
    move-result-object v3

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move-object v3, v4

    .line 117
    :goto_74
    iget-object v6, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->c:Landroid/os/Bundle;

    .line 119
    if-eqz v6, :cond_7b

    .line 121
    invoke-virtual {v6, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 124
    :cond_7b
    iget-object v6, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->c:Landroid/os/Bundle;

    .line 126
    const/4 v7, 0x0

    .line 127
    if-eqz v6, :cond_87

    .line 129
    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 132
    move-result v6

    .line 133
    if-ne v6, v5, :cond_87

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move v5, v7

    .line 137
    :goto_88
    if-eqz v5, :cond_8c

    .line 139
    iput-object v4, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->c:Landroid/os/Bundle;

    .line 141
    :cond_8c
    invoke-static {v3, v2}, Landroidx/lifecycle/w$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/w;

    .line 144
    move-result-object v3

    .line 145
    iget-object v0, v1, Landroidx/lifecycle/x;->a:Ljava/util/LinkedHashMap;

    .line 147
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_95
    return-object v3

    .line 151
    :cond_96
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 153
    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    .line 155
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p0

    .line 159
    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 161
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    .line 163
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p0

    .line 167
    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 169
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    .line 171
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p0

    .line 175
    :cond_ae
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 177
    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    .line 179
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    throw p0
.end method

.method public static final b(Lc1/e;)V
    .registers 4
    .param p0  # Lc1/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc1/e;",
            ":",
            "Landroidx/lifecycle/f0;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "lifecycle.currentState"

    .line 16
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    if-eq v0, v1, :cond_1d

    .line 23
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 25
    if-ne v0, v1, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 31
    :goto_1e
    if-eqz v0, :cond_4c

    .line 33
    invoke-interface {p0}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lc1/c;->b()Lc1/c$b;

    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_4b

    .line 43
    new-instance v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    .line 45
    invoke-interface {p0}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 48
    move-result-object v1

    .line 49
    move-object v2, p0

    .line 50
    check-cast v2, Landroidx/lifecycle/f0;

    .line 52
    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandlesProvider;-><init>(Lc1/c;Landroidx/lifecycle/f0;)V

    .line 55
    invoke-interface {p0}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 61
    invoke-virtual {v1, v2, v0}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 64
    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 67
    move-result-object p0

    .line 68
    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    .line 70
    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/SavedStateHandlesProvider;)V

    .line 73
    invoke-virtual {p0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 76
    :cond_4b
    return-void

    .line 77
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string v0, "Failed requirement."

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0
.end method

.method public static final c(Landroidx/lifecycle/f0;)Landroidx/lifecycle/x;
    .registers 7
    .param p0  # Landroidx/lifecycle/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Landroidx/lifecycle/x;

    .line 3
    const-string v1, "<this>"

    .line 5
    invoke-static {p0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;->INSTANCE:Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;

    .line 15
    invoke-static {v0}, Li3/i;->a(Ljava/lang/Class;)Li3/c;

    .line 18
    move-result-object v3

    .line 19
    const-string v4, "initializer"

    .line 21
    invoke-static {v2, v4}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v4, Lz0/e;

    .line 26
    invoke-virtual {v3}, Li3/c;->a()Ljava/lang/Class;

    .line 29
    move-result-object v3

    .line 30
    const-string v5, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    .line 32
    invoke-static {v3, v5}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {v4, v3, v2}, Lz0/e;-><init>(Ljava/lang/Class;Lh3/l;)V

    .line 38
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Lz0/b;

    .line 43
    const/4 v3, 0x0

    .line 44
    new-array v3, v3, [Lz0/e;

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_68

    .line 52
    check-cast v1, [Lz0/e;

    .line 54
    array-length v3, v1

    .line 55
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, [Lz0/e;

    .line 61
    invoke-direct {v2, v1}, Lz0/b;-><init>([Lz0/e;)V

    .line 64
    new-instance v1, Landroidx/lifecycle/c0;

    .line 66
    invoke-interface {p0}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    .line 69
    move-result-object v3

    .line 70
    const-string v4, "owner.viewModelStore"

    .line 72
    invoke-static {v3, v4}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    instance-of v4, p0, Landroidx/lifecycle/g;

    .line 77
    if-eqz v4, :cond_5a

    .line 79
    check-cast p0, Landroidx/lifecycle/g;

    .line 81
    invoke-interface {p0}, Landroidx/lifecycle/g;->getDefaultViewModelCreationExtras()Lz0/a;

    .line 84
    move-result-object p0

    .line 85
    const-string v4, "{\n        owner.defaultV…ModelCreationExtras\n    }"

    .line 87
    invoke-static {p0, v4}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    sget-object p0, Lz0/a$a;->b:Lz0/a$a;

    .line 93
    :goto_5c
    invoke-direct {v1, v3, v2, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/c0$b;Lz0/a;)V

    .line 96
    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 98
    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/c0;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/a0;

    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Landroidx/lifecycle/x;

    .line 104
    return-object p0

    .line 105
    :cond_68
    new-instance p0, Ljava/lang/NullPointerException;

    .line 107
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 109
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0
.end method
