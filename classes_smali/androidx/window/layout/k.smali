.class public final Landroidx/window/layout/k;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic a:Landroidx/window/layout/SidecarCompat;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/window/layout/k;->a:Landroidx/window/layout/SidecarCompat;

    .line 3
    iput-object p2, p0, Landroidx/window/layout/k;->b:Landroid/app/Activity;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newConfig"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroidx/window/layout/k;->a:Landroidx/window/layout/SidecarCompat;

    .line 8
    iget-object v0, p1, Landroidx/window/layout/SidecarCompat;->e:Landroidx/window/layout/SidecarCompat$b;

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_15

    .line 13
    :cond_c
    iget-object v1, p0, Landroidx/window/layout/k;->b:Landroid/app/Activity;

    .line 15
    invoke-virtual {p1, v1}, Landroidx/window/layout/SidecarCompat;->h(Landroid/app/Activity;)Landroidx/window/layout/r;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, v1, p1}, Landroidx/window/layout/SidecarCompat$b;->a(Landroid/app/Activity;Landroidx/window/layout/r;)V

    .line 22
    :goto_15
    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    return-void
.end method
