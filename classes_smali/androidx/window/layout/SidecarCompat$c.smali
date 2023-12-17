.class public final Landroidx/window/layout/SidecarCompat$c;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/window/layout/SidecarCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V
    .registers 4
    .param p1  # Landroidx/window/layout/SidecarCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sidecarCompat"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "activity"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$c;->a:Landroidx/window/layout/SidecarCompat;

    .line 16
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$c;->b:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 9
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat$c;->b:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/Activity;

    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p1, :cond_14

    .line 20
    goto :goto_24

    .line 21
    :cond_14
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1b

    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_22

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 37
    :goto_24
    if-nez p1, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    if-nez v0, :cond_2a

    .line 42
    return-void

    .line 43
    :cond_2a
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$c;->a:Landroidx/window/layout/SidecarCompat;

    .line 45
    invoke-virtual {v1, v0, p1}, Landroidx/window/layout/SidecarCompat;->i(Landroid/os/IBinder;Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
