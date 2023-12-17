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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm0/r0$h;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/r0$i;->n:Lf0/f;

    iput-object p1, p0, Lm0/r0$i;->o:Lf0/f;

    iput-object p1, p0, Lm0/r0$i;->p:Lf0/f;

    return-void
.end method


# virtual methods
.method public g()Lf0/f;
    .registers 2

    iget-object v0, p0, Lm0/r0$i;->o:Lf0/f;

    if-nez v0, :cond_10

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Lf1/x;->w(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lf0/f;->b(Landroid/graphics/Insets;)Lf0/f;

    move-result-object v0

    iput-object v0, p0, Lm0/r0$i;->o:Lf0/f;

    :cond_10
    iget-object v0, p0, Lm0/r0$i;->o:Lf0/f;

    return-object v0
.end method

.method public i()Lf0/f;
    .registers 2

    iget-object v0, p0, Lm0/r0$i;->n:Lf0/f;

    if-nez v0, :cond_10

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Lf1/x;->b(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lf0/f;->b(Landroid/graphics/Insets;)Lf0/f;

    move-result-object v0

    iput-object v0, p0, Lm0/r0$i;->n:Lf0/f;

    :cond_10
    iget-object v0, p0, Lm0/r0$i;->n:Lf0/f;

    return-object v0
.end method

.method public k()Lf0/f;
    .registers 2

    iget-object v0, p0, Lm0/r0$i;->p:Lf0/f;

    if-nez v0, :cond_10

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Lf1/x;->t(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lf0/f;->b(Landroid/graphics/Insets;)Lf0/f;

    move-result-object v0

    iput-object v0, p0, Lm0/r0$i;->p:Lf0/f;

    :cond_10
    iget-object v0, p0, Lm0/r0$i;->p:Lf0/f;

    return-object v0
.end method

.method public l(IIII)Lm0/r0;
    .registers 6

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, Lf1/x;->f(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object p1

    return-object p1
.end method

.method public q(Lf0/f;)V
    .registers 2

    return-void
.end method
