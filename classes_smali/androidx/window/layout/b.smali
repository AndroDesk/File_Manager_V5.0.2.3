.class public final Landroidx/window/layout/b;
.super Ljava/lang/Object;
.source "DisplayCompatHelper.kt"


# direct methods
.method public static a(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method
