.class public final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;
.source "Recreator.kt"

# interfaces
.implements Landroidx/lifecycle/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/Recreator$a;
    }
.end annotation


# instance fields
.field public final a:Lc1/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/e;)V
    .registers 3
    .param p1  # Lc1/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/savedstate/Recreator;->a:Lc1/e;

    .line 11
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 7
    .param p1  # Landroidx/lifecycle/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    if-ne p2, v0, :cond_a5

    .line 5
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 12
    iget-object p1, p0, Landroidx/savedstate/Recreator;->a:Lc1/e;

    .line 14
    invoke-interface {p1}, Lc1/e;->getSavedStateRegistry()Lc1/c;

    .line 17
    move-result-object p1

    .line 18
    const-string p2, "androidx.savedstate.Restarter"

    .line 20
    invoke-virtual {p1, p2}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    const-string p2, "classes_to_restore"

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_9d

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 39
    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_9c

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Ljava/lang/String;

    .line 51
    const-string v0, "Class "

    .line 53
    :try_start_34
    const-class v1, Landroidx/savedstate/Recreator;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 63
    move-result-object v1

    .line 64
    const-class v3, Lc1/c$a;

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 69
    move-result-object v1

    .line 70
    const-string v3, "{\n                Class.…class.java)\n            }"

    .line 72
    invoke-static {v1, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_4a} :catch_8f

    .line 75
    :try_start_4a
    new-array v3, v2, [Ljava/lang/Class;

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 80
    move-result-object v0
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_50} :catch_74

    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    :try_start_54
    new-array v1, v2, [Ljava/lang/Object;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    const-string v1, "{\n                constr…wInstance()\n            }"

    .line 93
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    check-cast v0, Lc1/c$a;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_61} :catch_67

    .line 98
    iget-object p2, p0, Landroidx/savedstate/Recreator;->a:Lc1/e;

    .line 100
    invoke-interface {v0, p2}, Lc1/c$a;->a(Lc1/e;)V

    .line 103
    goto :goto_26

    .line 104
    :catch_67
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    .line 107
    const-string v1, "Failed to instantiate "

    .line 109
    invoke-static {v1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    throw v0

    .line 117
    :catch_74
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 120
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, " must have default constructor in order to be automatically recreated"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    throw p2

    .line 144
    :catch_8f
    move-exception p1

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    .line 147
    const-string v2, " wasn\'t found"

    .line 149
    invoke-static {v0, p2, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-direct {v1, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    throw v1

    .line 157
    :cond_9c
    return-void

    .line 158
    :cond_9d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 160
    const-string p2, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 162
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    throw p1

    .line 166
    :cond_a5
    new-instance p1, Ljava/lang/AssertionError;

    .line 168
    const-string p2, "Next event must be ON_CREATE"

    .line 170
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 173
    throw p1
.end method
