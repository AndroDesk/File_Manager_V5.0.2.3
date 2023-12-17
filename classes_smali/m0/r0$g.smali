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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm0/r0$f;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/r0$g;->m:Lf0/f;

    return-void
.end method


# virtual methods
.method public b()Lm0/r0;
    .registers 3

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lm0/r0;
    .registers 3

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lf0/f;
    .registers 5

    iget-object v0, p0, Lm0/r0$g;->m:Lf0/f;

    if-nez v0, :cond_22

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object v0

    iput-object v0, p0, Lm0/r0$g;->m:Lf0/f;

    :cond_22
    iget-object v0, p0, Lm0/r0$g;->m:Lf0/f;

    return-object v0
.end method

.method public m()Z
    .registers 2

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public q(Lf0/f;)V
    .registers 2

    iput-object p1, p0, Lm0/r0$g;->m:Lf0/f;

    return-void
.end method
