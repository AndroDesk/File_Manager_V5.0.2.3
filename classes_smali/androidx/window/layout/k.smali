.class public final Landroidx/window/layout/k;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic a:Landroidx/window/layout/SidecarCompat;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Landroidx/window/layout/k;->a:Landroidx/window/layout/SidecarCompat;

    iput-object p2, p0, Landroidx/window/layout/k;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/window/layout/k;->a:Landroidx/window/layout/SidecarCompat;

    iget-object v0, p1, Landroidx/window/layout/SidecarCompat;->e:Landroidx/window/layout/SidecarCompat$b;

    if-nez v0, :cond_c

    goto :goto_15

    :cond_c
    iget-object v1, p0, Landroidx/window/layout/k;->b:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroidx/window/layout/SidecarCompat;->h(Landroid/app/Activity;)Landroidx/window/layout/r;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/window/layout/SidecarCompat$b;->a(Landroid/app/Activity;Landroidx/window/layout/r;)V

    :goto_15
    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    return-void
.end method
