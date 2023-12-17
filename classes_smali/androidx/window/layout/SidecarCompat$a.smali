.class public final Landroidx/window/layout/SidecarCompat$a;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;)Landroid/os/IBinder;
    .registers 1
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_3

    .line 3
    goto :goto_10

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_a

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_12

    .line 17
    :goto_10
    const/4 p0, 0x0

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 21
    :goto_14
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroidx/window/sidecar/SidecarProvider;->getSidecarImpl(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static c()Landroidx/window/core/Version;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Landroidx/window/sidecar/SidecarProvider;->getApiVersion()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_11

    .line 11
    sget-object v1, Landroidx/window/core/Version;->f:Landroidx/window/core/Version;

    .line 13
    invoke-static {v0}, Landroidx/window/core/Version$a;->a(Ljava/lang/String;)Landroidx/window/core/Version;

    .line 16
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_10} :catch_11

    .line 17
    goto :goto_12

    .line 18
    :catch_11
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return-object v0
.end method
