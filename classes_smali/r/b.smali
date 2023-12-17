.class public final Lr/b;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Lr/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static o(Lr/c;)Lr/e;
    .registers 1

    .line 1
    check-cast p0, Lr/a$a;

    .line 3
    iget-object p0, p0, Lr/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    check-cast p0, Lr/e;

    .line 7
    return-object p0
.end method


# virtual methods
.method public final a(Lr/c;)F
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lr/b;->k(Lr/c;)F

    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x40000000  # 2.0f

    .line 7
    mul-float/2addr p1, v0

    .line 8
    return p1
.end method

.method public final b(Lr/a$a;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 7

    .line 1
    new-instance p2, Lr/e;

    .line 3
    invoke-direct {p2, p4, p3}, Lr/e;-><init>(FLandroid/content/res/ColorStateList;)V

    .line 6
    iput-object p2, p1, Lr/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object p3, p1, Lr/a$a;->b:Lr/a;

    .line 10
    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p2, p1, Lr/a$a;->b:Lr/a;

    .line 15
    const/4 p3, 0x1

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 19
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    .line 22
    invoke-virtual {p0, p1, p6}, Lr/b;->m(Lr/c;F)V

    .line 25
    return-void
.end method

.method public final c(Lr/c;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lr/e;->h:Landroid/content/res/ColorStateList;

    .line 7
    return-object p1
.end method

.method public final d(Lr/c;)F
    .registers 2

    .line 1
    check-cast p1, Lr/a$a;

    .line 3
    iget-object p1, p1, Lr/a$a;->b:Lr/a;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final e(Lr/c;F)V
    .registers 3

    .line 1
    check-cast p1, Lr/a$a;

    .line 3
    iget-object p1, p1, Lr/a$a;->b:Lr/a;

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 8
    return-void
.end method

.method public final f(Lr/c;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lr/b;->g(Lr/c;)F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lr/b;->m(Lr/c;F)V

    .line 8
    return-void
.end method

.method public final g(Lr/c;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lr/e;->e:F

    .line 7
    return p1
.end method

.method public final h(Lr/c;)F
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lr/b;->k(Lr/c;)F

    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x40000000  # 2.0f

    .line 7
    mul-float/2addr p1, v0

    .line 8
    return p1
.end method

.method public final i(Lr/c;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lr/b;->g(Lr/c;)F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lr/b;->m(Lr/c;F)V

    .line 8
    return-void
.end method

.method public final j(Lr/c;F)V
    .registers 4

    .line 1
    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lr/e;->a:F

    .line 7
    cmpl-float v0, p2, v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    iput p2, p1, Lr/e;->a:F

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lr/e;->c(Landroid/graphics/Rect;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    :goto_14
    return-void
.end method

.method public final k(Lr/c;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lr/e;->a:F

    .line 7
    return p1
.end method

.method public final l(Lr/c;)V
    .registers 10

    .line 1
    check-cast p1, Lr/a$a;

    .line 3
    iget-object v0, p1, Lr/a$a;->b:Lr/a;

    .line 5
    invoke-virtual {v0}, Lr/a;->getUseCompatPadding()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_f

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0, v0, v0, v0}, Lr/a$a;->a(IIII)V

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0, p1}, Lr/b;->g(Lr/c;)F

    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, p1}, Lr/b;->k(Lr/c;)F

    .line 23
    move-result v1

    .line 24
    iget-object v2, p1, Lr/a$a;->b:Lr/a;

    .line 26
    invoke-virtual {v2}, Lr/a;->getPreventCornerOverlap()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2a

    .line 32
    float-to-double v2, v0

    .line 33
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 35
    sget-wide v6, Lr/f;->a:D

    .line 37
    sub-double/2addr v4, v6

    .line 38
    float-to-double v6, v1

    .line 39
    mul-double/2addr v4, v6

    .line 40
    add-double/2addr v4, v2

    .line 41
    double-to-float v2, v4

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    sget v2, Lr/f;->b:I

    .line 45
    move v2, v0

    .line 46
    :goto_2d
    float-to-double v2, v2

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 50
    move-result-wide v2

    .line 51
    double-to-int v2, v2

    .line 52
    iget-object v3, p1, Lr/a$a;->b:Lr/a;

    .line 54
    invoke-virtual {v3}, Lr/a;->getPreventCornerOverlap()Z

    .line 57
    move-result v3

    .line 58
    invoke-static {v0, v1, v3}, Lr/f;->a(FFZ)F

    .line 61
    move-result v0

    .line 62
    float-to-double v0, v0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 66
    move-result-wide v0

    .line 67
    double-to-int v0, v0

    .line 68
    invoke-virtual {p1, v2, v0, v2, v0}, Lr/a$a;->a(IIII)V

    .line 71
    return-void
.end method

.method public final m(Lr/c;F)V
    .registers 7

    .line 1
    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    .line 4
    move-result-object v0

    .line 5
    check-cast p1, Lr/a$a;

    .line 7
    iget-object v1, p1, Lr/a$a;->b:Lr/a;

    .line 9
    invoke-virtual {v1}, Lr/a;->getUseCompatPadding()Z

    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Lr/a$a;->b:Lr/a;

    .line 15
    invoke-virtual {v2}, Lr/a;->getPreventCornerOverlap()Z

    .line 18
    move-result v2

    .line 19
    iget v3, v0, Lr/e;->e:F

    .line 21
    cmpl-float v3, p2, v3

    .line 23
    if-nez v3, :cond_21

    .line 25
    iget-boolean v3, v0, Lr/e;->f:Z

    .line 27
    if-ne v3, v1, :cond_21

    .line 29
    iget-boolean v3, v0, Lr/e;->g:Z

    .line 31
    if-ne v3, v2, :cond_21

    .line 33
    goto :goto_2e

    .line 34
    :cond_21
    iput p2, v0, Lr/e;->e:F

    .line 36
    iput-boolean v1, v0, Lr/e;->f:Z

    .line 38
    iput-boolean v2, v0, Lr/e;->g:Z

    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {v0, p2}, Lr/e;->c(Landroid/graphics/Rect;)V

    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 47
    :goto_2e
    invoke-virtual {p0, p1}, Lr/b;->l(Lr/c;)V

    .line 50
    return-void
.end method

.method public final n(Lr/c;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lr/e;->b(Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    return-void
.end method
