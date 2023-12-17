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
.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lm0/r0$g;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lm0/r0;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {v0}, Landroidx/appcompat/widget/y;->l(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

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

.method public e()Lm0/d;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {v0}, Landroidx/appcompat/widget/y;->j(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    new-instance v1, Lm0/d;

    .line 13
    invoke-direct {v1, v0}, Lm0/d;-><init>(Landroid/view/DisplayCutout;)V

    .line 16
    move-object v0, v1

    .line 17
    :goto_10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lm0/r0$h;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lm0/r0$h;

    .line 13
    iget-object v1, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 15
    iget-object v3, p1, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_21

    .line 23
    iget-object v1, p0, Lm0/r0$f;->g:Lf0/f;

    .line 25
    iget-object p1, p1, Lm0/r0$f;->g:Lf0/f;

    .line 27
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v0, v2

    .line 35
    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
