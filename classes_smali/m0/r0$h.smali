.class public Lm0/r0$h;
.super Lm0/r0$g;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm0/r0$g;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public a()Lm0/r0;
    .registers 3

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/widget/y;->l(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object v0

    return-object v0
.end method

.method public e()Lm0/d;
    .registers 3

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/widget/y;->j(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    new-instance v1, Lm0/d;

    invoke-direct {v1, v0}, Lm0/d;-><init>(Landroid/view/DisplayCutout;)V

    move-object v0, v1

    :goto_10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lm0/r0$h;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lm0/r0$h;

    iget-object v1, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    iget-object v3, p1, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lm0/r0$f;->g:Lf0/f;

    iget-object p1, p1, Lm0/r0$f;->g:Lf0/f;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
