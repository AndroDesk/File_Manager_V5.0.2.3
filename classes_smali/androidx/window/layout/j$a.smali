.class public final Landroidx/window/layout/j$a;
.super Ljava/lang/Object;
.source "SidecarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroidx/window/sidecar/SidecarDeviceState;)I
    .registers 5
    .param p0  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    const-string v0, "sidecarDeviceState"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_5
    iget p0, p0, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_7} :catch_8

    .line 8
    return p0

    .line 9
    :catch_8
    const/4 v0, 0x0

    .line 10
    :try_start_9
    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    .line 12
    const-string v2, "getPosture"

    .line 14
    new-array v3, v0, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v1

    .line 20
    new-array v2, v0, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_22

    .line 28
    check-cast p0, Ljava/lang/Integer;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    .line 37
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    .line 39
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_2a} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2a} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_2a} :catch_2a

    .line 43
    :catch_2a
    return v0
.end method

.method public static b(Landroidx/window/sidecar/SidecarDeviceState;)I
    .registers 2
    .param p0  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sidecarDeviceState"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Landroidx/window/layout/j$a;->a(Landroidx/window/sidecar/SidecarDeviceState;)I

    .line 9
    move-result p0

    .line 10
    if-ltz p0, :cond_e

    .line 12
    const/4 v0, 0x4

    .line 13
    if-le p0, v0, :cond_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :cond_f
    return p0
.end method

.method public static c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;
    .registers 5
    .param p0  # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "info"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_5
    iget-object v0, p0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;

    .line 8
    if-nez v0, :cond_d

    .line 10
    invoke-static {}, Lz2/c;->a()Lkotlin/collections/EmptyList;

    .line 13
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_d} :catch_e

    .line 14
    :cond_d
    return-object v0

    .line 15
    :catch_e
    :try_start_e
    const-class v0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 17
    const-string v1, "getDisplayFeatures"

    .line 19
    const/4 v2, 0x0

    .line 20
    new-array v3, v2, [Ljava/lang/Class;

    .line 22
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v0

    .line 26
    new-array v1, v2, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_24

    .line 34
    check-cast p0, Ljava/util/List;

    .line 36
    return-object p0

    .line 37
    :cond_24
    new-instance p0, Ljava/lang/NullPointerException;

    .line 39
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>"

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_2c} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_2c} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    invoke-static {}, Lz2/c;->a()Lkotlin/collections/EmptyList;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static d(Landroidx/window/sidecar/SidecarDeviceState;I)V
    .registers 8
    .param p0  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    :try_start_0
    iput p1, p0, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_2} :catch_3

    .line 3
    goto :goto_1e

    .line 4
    :catch_3
    :try_start_3
    const-class v0, Landroidx/window/sidecar/SidecarDeviceState;

    .line 6
    const-string v1, "setPosture"

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v4, v3, v5

    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v0

    .line 20
    new-array v1, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v1, v5

    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1e} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1e} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    :goto_1e
    return-void
.end method
