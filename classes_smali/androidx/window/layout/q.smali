.class public final Landroidx/window/layout/q;
.super Ljava/lang/Object;
.source "WindowInfoTrackerImpl.kt"

# interfaces
.implements Landroidx/window/layout/n;


# instance fields
.field public final b:Landroidx/window/layout/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/layout/s;Landroidx/window/layout/m;)V
    .registers 4
    .param p1  # Landroidx/window/layout/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/layout/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "windowMetricsCalculator"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Landroidx/window/layout/q;->b:Landroidx/window/layout/m;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Ls3/d;
    .registers 4
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;-><init>(Landroidx/window/layout/q;Landroid/app/Activity;La3/c;)V

    .line 12
    new-instance p1, Ls3/d;

    .line 14
    invoke-direct {p1, v0}, Ls3/d;-><init>(Lh3/p;)V

    .line 17
    return-object p1
.end method
