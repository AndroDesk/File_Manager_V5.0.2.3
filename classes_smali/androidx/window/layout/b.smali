.class public final Landroidx/window/layout/b;
.super Ljava/lang/Object;
.source "DisplayCompatHelper.kt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/DisplayCutout;)I
    .registers 1
    .param p0  # Landroid/view/DisplayCutout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    return p0
.end method
