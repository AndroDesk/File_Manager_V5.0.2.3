.class public final Landroidx/window/layout/SidecarCompat$TranslatingCallback;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslatingCallback"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/window/layout/SidecarCompat;


# direct methods
.method public constructor <init>(Landroidx/window/layout/SidecarCompat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const-string v0, "this$0"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->a:Landroidx/window/layout/SidecarCompat;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .registers 8
    .param p1  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    const-string v0, "newDeviceState"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->a:Landroidx/window/layout/SidecarCompat;

    .line 8
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->f(Landroidx/window/layout/SidecarCompat;)Ljava/util/LinkedHashMap;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->a:Landroidx/window/layout/SidecarCompat;

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_47

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/app/Activity;

    .line 34
    invoke-static {v2}, Landroidx/window/layout/SidecarCompat$a;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    if-nez v3, :cond_29

    .line 41
    goto :goto_34

    .line 42
    :cond_29
    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->g()Landroidx/window/sidecar/SidecarInterface;

    .line 45
    move-result-object v5

    .line 46
    if-nez v5, :cond_30

    .line 48
    goto :goto_34

    .line 49
    :cond_30
    invoke-interface {v5, v3}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 52
    move-result-object v4

    .line 53
    :goto_34
    invoke-static {v1}, Landroidx/window/layout/SidecarCompat;->d(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/SidecarCompat$b;

    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_3b

    .line 59
    goto :goto_15

    .line 60
    :cond_3b
    invoke-static {v1}, Landroidx/window/layout/SidecarCompat;->e(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/j;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5, v4, p1}, Landroidx/window/layout/j;->e(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/r;

    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v2, v4}, Landroidx/window/layout/SidecarCompat$b;->a(Landroid/app/Activity;Landroidx/window/layout/r;)V

    .line 71
    goto :goto_15

    .line 72
    :cond_47
    return-void
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .registers 5
    .param p1  # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    const-string v0, "windowToken"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "newLayout"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->a:Landroidx/window/layout/SidecarCompat;

    .line 13
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->f(Landroidx/window/layout/SidecarCompat;)Ljava/util/LinkedHashMap;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/app/Activity;

    .line 23
    if-nez p1, :cond_20

    .line 25
    const-string p1, "SidecarCompat"

    .line 27
    const-string p2, "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?"

    .line 29
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 33
    :cond_20
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->a:Landroidx/window/layout/SidecarCompat;

    .line 35
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->e(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/j;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->a:Landroidx/window/layout/SidecarCompat;

    .line 41
    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->g()Landroidx/window/sidecar/SidecarInterface;

    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_30

    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_34

    .line 49
    :cond_30
    invoke-interface {v1}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    .line 52
    move-result-object v1

    .line 53
    :goto_34
    if-nez v1, :cond_3b

    .line 55
    new-instance v1, Landroidx/window/sidecar/SidecarDeviceState;

    .line 57
    invoke-direct {v1}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 60
    :cond_3b
    invoke-virtual {v0, p2, v1}, Landroidx/window/layout/j;->e(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/r;

    .line 63
    move-result-object p2

    .line 64
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->a:Landroidx/window/layout/SidecarCompat;

    .line 66
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->d(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/SidecarCompat$b;

    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_48

    .line 72
    goto :goto_4b

    .line 73
    :cond_48
    invoke-virtual {v0, p1, p2}, Landroidx/window/layout/SidecarCompat$b;->a(Landroid/app/Activity;Landroidx/window/layout/r;)V

    .line 76
    :goto_4b
    return-void
.end method
