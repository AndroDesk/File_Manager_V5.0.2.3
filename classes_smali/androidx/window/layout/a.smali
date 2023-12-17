.class public final Landroidx/window/layout/a;
.super Ljava/lang/Object;
.source "ActivityCompatHelper.kt"


# direct methods
.method public static a(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 2
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object p0

    .line 18
    const-string v0, "activity.windowManager.currentWindowMetrics.bounds"

    .line 20
    invoke-static {p0, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    return-object p0
.end method
