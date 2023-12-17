.class public Lm0/r0$g;
.super Lm0/r0$f;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public m:Lf0/f;


# direct methods
.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lm0/r0$f;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lm0/r0$g;->m:Lf0/f;

    .line 7
    return-void
.end method


# virtual methods
.method public b()Lm0/r0;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public c()Lm0/r0;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final h()Lf0/f;
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/r0$g;->m:Lf0/f;

    .line 3
    if-nez v0, :cond_22

    .line 5
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 13
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 19
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 25
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 28
    move-result v3

    .line 29
    invoke-static {v0, v1, v2, v3}, Lf0/f;->a(IIII)Lf0/f;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lm0/r0$g;->m:Lf0/f;

    .line 35
    :cond_22
    iget-object v0, p0, Lm0/r0$g;->m:Lf0/f;

    .line 37
    return-object v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q(Lf0/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/r0$g;->m:Lf0/f;

    .line 3
    return-void
.end method
