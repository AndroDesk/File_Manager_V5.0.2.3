.class public Lm0/r0$i;
.super Lm0/r0$h;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public n:Lf0/f;

.field public o:Lf0/f;

.field public p:Lf0/f;


# direct methods
.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lm0/r0$h;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lm0/r0$i;->n:Lf0/f;

    .line 7
    iput-object p1, p0, Lm0/r0$i;->o:Lf0/f;

    .line 9
    iput-object p1, p0, Lm0/r0$i;->p:Lf0/f;

    .line 11
    return-void
.end method


# virtual methods
.method public g()Lf0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$i;->o:Lf0/f;

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lf1/x;->w(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lf0/f;->b(Landroid/graphics/Insets;)Lf0/f;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lm0/r0$i;->o:Lf0/f;

    .line 17
    :cond_10
    iget-object v0, p0, Lm0/r0$i;->o:Lf0/f;

    .line 19
    return-object v0
.end method

.method public i()Lf0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$i;->n:Lf0/f;

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lf1/x;->b(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lf0/f;->b(Landroid/graphics/Insets;)Lf0/f;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lm0/r0$i;->n:Lf0/f;

    .line 17
    :cond_10
    iget-object v0, p0, Lm0/r0$i;->n:Lf0/f;

    .line 19
    return-object v0
.end method

.method public k()Lf0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$i;->p:Lf0/f;

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lf1/x;->t(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lf0/f;->b(Landroid/graphics/Insets;)Lf0/f;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lm0/r0$i;->p:Lf0/f;

    .line 17
    :cond_10
    iget-object v0, p0, Lm0/r0$i;->p:Lf0/f;

    .line 19
    return-object v0
.end method

.method public l(IIII)Lm0/r0;
    .registers 6

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lf1/x;->f(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public q(Lf0/f;)V
    .registers 2

    return-void
.end method
