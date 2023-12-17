.class public final Landroidx/window/layout/SidecarCompat;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/layout/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/SidecarCompat$c;,
        Landroidx/window/layout/SidecarCompat$TranslatingCallback;,
        Landroidx/window/layout/SidecarCompat$b;,
        Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;,
        Landroidx/window/layout/SidecarCompat$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/window/sidecar/SidecarInterface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Landroidx/window/layout/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroidx/window/layout/SidecarCompat$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroidx/window/layout/SidecarCompat$a;->b(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;

    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroidx/window/layout/j;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Landroidx/window/layout/j;-><init>(I)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 21
    iput-object v0, p0, Landroidx/window/layout/SidecarCompat;->b:Landroidx/window/layout/j;

    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 25
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat;->c:Ljava/util/LinkedHashMap;

    .line 30
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 32
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat;->d:Ljava/util/LinkedHashMap;

    .line 37
    return-void
.end method

.method public static final synthetic d(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/SidecarCompat$b;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/window/layout/SidecarCompat;->e:Landroidx/window/layout/SidecarCompat$b;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/j;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/window/layout/SidecarCompat;->b:Landroidx/window/layout/j;

    .line 3
    return-object p0
.end method

.method public static final synthetic f(Landroidx/window/layout/SidecarCompat;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/window/layout/SidecarCompat;->c:Ljava/util/LinkedHashMap;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 3
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroidx/window/layout/SidecarCompat$a;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_f

    .line 12
    invoke-virtual {p0, v0, p1}, Landroidx/window/layout/SidecarCompat;->i(Landroid/os/IBinder;Landroid/app/Activity;)V

    .line 15
    goto :goto_1f

    .line 16
    :cond_f
    new-instance v0, Landroidx/window/layout/SidecarCompat$c;

    .line 18
    invoke-direct {v0, p0, p1}, Landroidx/window/layout/SidecarCompat$c;-><init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 32
    :goto_1f
    return-void
.end method

.method public final b(Landroidx/window/layout/l$a;)V
    .registers 5
    .param p1  # Landroidx/window/layout/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/window/layout/SidecarCompat$b;

    .line 3
    invoke-direct {v0, p1}, Landroidx/window/layout/SidecarCompat$b;-><init>(Landroidx/window/layout/l$a;)V

    .line 6
    iput-object v0, p0, Landroidx/window/layout/SidecarCompat;->e:Landroidx/window/layout/SidecarCompat$b;

    .line 8
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 10
    if-nez p1, :cond_c

    .line 12
    goto :goto_1f

    .line 13
    :cond_c
    new-instance v0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;

    .line 15
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat;->b:Landroidx/window/layout/j;

    .line 17
    new-instance v2, Landroidx/window/layout/SidecarCompat$TranslatingCallback;

    .line 19
    invoke-direct {v2, p0}, Landroidx/window/layout/SidecarCompat$TranslatingCallback;-><init>(Landroidx/window/layout/SidecarCompat;)V

    .line 22
    check-cast v2, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 24
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;-><init>(Landroidx/window/layout/j;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    .line 27
    check-cast v0, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 29
    invoke-interface {p1, v0}, Landroidx/window/sidecar/SidecarInterface;->setSidecarCallback(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    .line 32
    :goto_1f
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 5
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroidx/window/layout/SidecarCompat$a;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 15
    if-nez v1, :cond_11

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    invoke-interface {v1, v0}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    .line 21
    :goto_14
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat;->d:Ljava/util/LinkedHashMap;

    .line 23
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/ComponentCallbacks;

    .line 29
    invoke-virtual {p1, v1}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 32
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat;->d:Ljava/util/LinkedHashMap;

    .line 34
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat;->c:Ljava/util/LinkedHashMap;

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 42
    move-result p1

    .line 43
    const/4 v1, 0x1

    .line 44
    if-ne p1, v1, :cond_2f

    .line 46
    move p1, v1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    const/4 p1, 0x0

    .line 49
    :goto_30
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->c:Ljava/util/LinkedHashMap;

    .line 51
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    if-eqz p1, :cond_3f

    .line 56
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 58
    if-nez p1, :cond_3c

    .line 60
    goto :goto_3f

    .line 61
    :cond_3c
    invoke-interface {p1, v1}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public final g()Landroidx/window/sidecar/SidecarInterface;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 3
    return-object v0
.end method

.method public final h(Landroid/app/Activity;)Landroidx/window/layout/r;
    .registers 5
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroidx/window/layout/SidecarCompat$a;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_15

    .line 12
    new-instance p1, Landroidx/window/layout/r;

    .line 14
    invoke-static {}, Lz2/c;->a()Lkotlin/collections/EmptyList;

    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Landroidx/window/layout/r;-><init>(Ljava/util/List;)V

    .line 21
    return-object p1

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1c

    .line 27
    move-object p1, v1

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 32
    move-result-object p1

    .line 33
    :goto_20
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat;->b:Landroidx/window/layout/j;

    .line 35
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 37
    if-nez v2, :cond_27

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-interface {v2}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    .line 43
    move-result-object v1

    .line 44
    :goto_2b
    if-nez v1, :cond_32

    .line 46
    new-instance v1, Landroidx/window/sidecar/SidecarDeviceState;

    .line 48
    invoke-direct {v1}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 51
    :cond_32
    invoke-virtual {v0, p1, v1}, Landroidx/window/layout/j;->e(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/r;

    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public final i(Landroid/os/IBinder;Landroid/app/Activity;)V
    .registers 4
    .param p1  # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat;->c:Ljava/util/LinkedHashMap;

    .line 8
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    .line 19
    :goto_12
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat;->c:Ljava/util/LinkedHashMap;

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x1

    .line 26
    if-ne p1, v0, :cond_24

    .line 28
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 30
    if-nez p1, :cond_20

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    invoke-interface {p1, v0}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 37
    :cond_24
    :goto_24
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat;->e:Landroidx/window/layout/SidecarCompat$b;

    .line 39
    if-nez p1, :cond_29

    .line 41
    goto :goto_30

    .line 42
    :cond_29
    invoke-virtual {p0, p2}, Landroidx/window/layout/SidecarCompat;->h(Landroid/app/Activity;)Landroidx/window/layout/r;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, p2, v0}, Landroidx/window/layout/SidecarCompat$b;->a(Landroid/app/Activity;Landroidx/window/layout/r;)V

    .line 49
    :goto_30
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat;->d:Ljava/util/LinkedHashMap;

    .line 51
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_45

    .line 57
    new-instance p1, Landroidx/window/layout/k;

    .line 59
    invoke-direct {p1, p0, p2}, Landroidx/window/layout/k;-><init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat;->d:Ljava/util/LinkedHashMap;

    .line 64
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p2, p1}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 70
    :cond_45
    return-void
.end method

.method public final j()Z
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_9

    .line 8
    :goto_7
    move-object v2, v3

    .line 9
    goto :goto_1c

    .line 10
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_10

    .line 16
    goto :goto_7

    .line 17
    :cond_10
    const-string v4, "setSidecarCallback"

    .line 19
    new-array v5, v0, [Ljava/lang/Class;

    .line 21
    const-class v6, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 23
    aput-object v6, v5, v1

    .line 25
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v2

    .line 29
    :goto_1c
    if-nez v2, :cond_20

    .line 31
    move-object v2, v3

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 36
    move-result-object v2

    .line 37
    :goto_24
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 39
    invoke-static {v2, v4}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_18e

    .line 45
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 47
    if-nez v2, :cond_31

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    invoke-interface {v2}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    .line 53
    :goto_34
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 55
    if-nez v2, :cond_39

    .line 57
    goto :goto_3c

    .line 58
    :cond_39
    invoke-interface {v2, v0}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 61
    :goto_3c
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 63
    if-nez v2, :cond_42

    .line 65
    :goto_40
    move-object v2, v3

    .line 66
    goto :goto_55

    .line 67
    :cond_42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_49

    .line 73
    goto :goto_40

    .line 74
    :cond_49
    const-string v4, "getWindowLayoutInfo"

    .line 76
    new-array v5, v0, [Ljava/lang/Class;

    .line 78
    const-class v6, Landroid/os/IBinder;

    .line 80
    aput-object v6, v5, v1

    .line 82
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    move-result-object v2

    .line 86
    :goto_55
    if-nez v2, :cond_59

    .line 88
    move-object v2, v3

    .line 89
    goto :goto_5d

    .line 90
    :cond_59
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 93
    move-result-object v2

    .line 94
    :goto_5d
    const-class v4, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 96
    invoke-static {v2, v4}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_182

    .line 102
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 104
    if-nez v2, :cond_6b

    .line 106
    :goto_69
    move-object v2, v3

    .line 107
    goto :goto_7e

    .line 108
    :cond_6b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    move-result-object v2

    .line 112
    if-nez v2, :cond_72

    .line 114
    goto :goto_69

    .line 115
    :cond_72
    const-string v4, "onWindowLayoutChangeListenerAdded"

    .line 117
    new-array v5, v0, [Ljava/lang/Class;

    .line 119
    const-class v6, Landroid/os/IBinder;

    .line 121
    aput-object v6, v5, v1

    .line 123
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 126
    move-result-object v2

    .line 127
    :goto_7e
    if-nez v2, :cond_82

    .line 129
    move-object v2, v3

    .line 130
    goto :goto_86

    .line 131
    :cond_82
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 134
    move-result-object v2

    .line 135
    :goto_86
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 137
    invoke-static {v2, v4}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_176

    .line 143
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 145
    if-nez v2, :cond_94

    .line 147
    :goto_92
    move-object v2, v3

    .line 148
    goto :goto_a7

    .line 149
    :cond_94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    move-result-object v2

    .line 153
    if-nez v2, :cond_9b

    .line 155
    goto :goto_92

    .line 156
    :cond_9b
    const-string v4, "onWindowLayoutChangeListenerRemoved"

    .line 158
    new-array v5, v0, [Ljava/lang/Class;

    .line 160
    const-class v6, Landroid/os/IBinder;

    .line 162
    aput-object v6, v5, v1

    .line 164
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 167
    move-result-object v2

    .line 168
    :goto_a7
    if-nez v2, :cond_aa

    .line 170
    goto :goto_ae

    .line 171
    :cond_aa
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 174
    move-result-object v3

    .line 175
    :goto_ae
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 177
    invoke-static {v3, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_16a

    .line 183
    new-instance v2, Landroidx/window/sidecar/SidecarDeviceState;

    .line 185
    invoke-direct {v2}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V
    :try_end_bb
    .catchall {:try_start_2 .. :try_end_bb} :catchall_19a

    .line 188
    const/4 v3, 0x3

    .line 189
    :try_start_bc
    iput v3, v2, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_be} :catch_bf
    .catchall {:try_start_bc .. :try_end_be} :catchall_19a

    .line 191
    goto :goto_f2

    .line 192
    :catch_bf
    :try_start_bf
    const-class v4, Landroidx/window/sidecar/SidecarDeviceState;

    .line 194
    const-string v5, "setPosture"

    .line 196
    new-array v6, v0, [Ljava/lang/Class;

    .line 198
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 200
    aput-object v7, v6, v1

    .line 202
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 205
    move-result-object v4

    .line 206
    new-array v5, v0, [Ljava/lang/Object;

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v6

    .line 212
    aput-object v6, v5, v1

    .line 214
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-class v4, Landroidx/window/sidecar/SidecarDeviceState;

    .line 219
    const-string v5, "getPosture"

    .line 221
    new-array v6, v1, [Ljava/lang/Class;

    .line 223
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    move-result-object v4

    .line 227
    new-array v5, v1, [Ljava/lang/Object;

    .line 229
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-result-object v2

    .line 233
    if-eqz v2, :cond_162

    .line 235
    check-cast v2, Ljava/lang/Integer;

    .line 237
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 240
    move-result v2

    .line 241
    if-ne v2, v3, :cond_15a

    .line 243
    :goto_f2
    new-instance v2, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 245
    invoke-direct {v2}, Landroidx/window/sidecar/SidecarDisplayFeature;-><init>()V

    .line 248
    invoke-virtual {v2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    .line 251
    move-result-object v3

    .line 252
    const-string v4, "displayFeature.rect"

    .line 254
    invoke-static {v3, v4}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2, v3}, Landroidx/window/sidecar/SidecarDisplayFeature;->setRect(Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual {v2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    .line 263
    invoke-virtual {v2, v0}, Landroidx/window/sidecar/SidecarDisplayFeature;->setType(I)V

    .line 266
    new-instance v3, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 268
    invoke-direct {v3}, Landroidx/window/sidecar/SidecarWindowLayoutInfo;-><init>()V
    :try_end_10e
    .catchall {:try_start_bf .. :try_end_10e} :catchall_19a

    .line 271
    :try_start_10e
    iget-object v1, v3, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_110} :catch_112
    .catchall {:try_start_10e .. :try_end_110} :catchall_19a

    .line 273
    goto/16 :goto_19b

    .line 275
    :catch_112
    :try_start_112
    new-instance v4, Ljava/util/ArrayList;

    .line 277
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-class v2, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 285
    const-string v5, "setDisplayFeatures"

    .line 287
    new-array v6, v0, [Ljava/lang/Class;

    .line 289
    const-class v7, Ljava/util/List;

    .line 291
    aput-object v7, v6, v1

    .line 293
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 296
    move-result-object v2

    .line 297
    new-array v5, v0, [Ljava/lang/Object;

    .line 299
    aput-object v4, v5, v1

    .line 301
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-class v2, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 306
    const-string v5, "getDisplayFeatures"

    .line 308
    new-array v6, v1, [Ljava/lang/Class;

    .line 310
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 313
    move-result-object v2

    .line 314
    new-array v5, v1, [Ljava/lang/Object;

    .line 316
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-result-object v2

    .line 320
    if-eqz v2, :cond_152

    .line 322
    check-cast v2, Ljava/util/List;

    .line 324
    invoke-static {v4, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_14a

    .line 330
    goto :goto_19b

    .line 331
    :cond_14a
    new-instance v0, Ljava/lang/Exception;

    .line 333
    const-string v2, "Invalid display feature getter/setter"

    .line 335
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 338
    throw v0

    .line 339
    :cond_152
    new-instance v0, Ljava/lang/NullPointerException;

    .line 341
    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>"

    .line 343
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 346
    throw v0

    .line 347
    :cond_15a
    new-instance v0, Ljava/lang/Exception;

    .line 349
    const-string v2, "Invalid device posture getter/setter"

    .line 351
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 354
    throw v0

    .line 355
    :cond_162
    new-instance v0, Ljava/lang/NullPointerException;

    .line 357
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    .line 359
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 362
    throw v0

    .line 363
    :cond_16a
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 365
    const-string v2, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    .line 367
    invoke-static {v3, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    move-result-object v2

    .line 371
    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 374
    throw v0

    .line 375
    :cond_176
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 377
    const-string v3, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    .line 379
    invoke-static {v2, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    move-result-object v2

    .line 383
    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 386
    throw v0

    .line 387
    :cond_182
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 389
    const-string v3, "Illegal return type for \'getWindowLayoutInfo\': "

    .line 391
    invoke-static {v2, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    move-result-object v2

    .line 395
    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 398
    throw v0

    .line 399
    :cond_18e
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 401
    const-string v3, "Illegal return type for \'setSidecarCallback\': "

    .line 403
    invoke-static {v2, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    move-result-object v2

    .line 407
    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 410
    throw v0
    :try_end_19a
    .catchall {:try_start_112 .. :try_end_19a} :catchall_19a

    .line 411
    :catchall_19a
    move v0, v1

    .line 412
    :goto_19b
    return v0
.end method
