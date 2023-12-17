.class public final Landroidx/activity/OnBackPressedDispatcher$a;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Landroidx/activity/i;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/activity/i;-><init>(Ljava/lang/Object;I)V

    .line 10
    return-object v0
.end method

.method public static b(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    .line 3
    check-cast p2, Landroid/window/OnBackInvokedCallback;

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 8
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    .line 3
    check-cast p1, Landroid/window/OnBackInvokedCallback;

    .line 5
    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 8
    return-void
.end method
