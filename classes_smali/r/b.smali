.class public final Lr/b;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Lr/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static o(Lr/c;)Lr/e;
    .registers 1

    check-cast p0, Lr/a$a;

    iget-object p0, p0, Lr/a$a;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lr/e;

    return-object p0
.end method


# virtual methods
.method public final a(Lr/c;)F
    .registers 3

    invoke-virtual {p0, p1}, Lr/b;->k(Lr/c;)F

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public final b(Lr/a$a;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 7

    new-instance p2, Lr/e;

    invoke-direct {p2, p4, p3}, Lr/e;-><init>(FLandroid/content/res/ColorStateList;)V

    iput-object p2, p1, Lr/a$a;->a:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lr/a$a;->b:Lr/a;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lr/b;->m(Lr/c;F)V

    return-void
.end method

.method public final c(Lr/c;)Landroid/content/res/ColorStateList;
    .registers 2

    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    move-result-object p1

    iget-object p1, p1, Lr/e;->h:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method public final d(Lr/c;)F
    .registers 2

    check-cast p1, Lr/a$a;

    iget-object p1, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public final e(Lr/c;F)V
    .registers 3

    check-cast p1, Lr/a$a;

    iget-object p1, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public final f(Lr/c;)V
    .registers 3

    invoke-virtual {p0, p1}, Lr/b;->g(Lr/c;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lr/b;->m(Lr/c;F)V

    return-void
.end method

.method public final g(Lr/c;)F
    .registers 2

    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    move-result-object p1

    iget p1, p1, Lr/e;->e:F

    return p1
.end method

.method public final h(Lr/c;)F
    .registers 3

    invoke-virtual {p0, p1}, Lr/b;->k(Lr/c;)F

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public final i(Lr/c;)V
    .registers 3

    invoke-virtual {p0, p1}, Lr/b;->g(Lr/c;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lr/b;->m(Lr/c;F)V

    return-void
.end method

.method public final j(Lr/c;F)V
    .registers 4

    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    move-result-object p1

    iget v0, p1, Lr/e;->a:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iput p2, p1, Lr/e;->a:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lr/e;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_14
    return-void
.end method

.method public final k(Lr/c;)F
    .registers 2

    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    move-result-object p1

    iget p1, p1, Lr/e;->a:F

    return p1
.end method

.method public final l(Lr/c;)V
    .registers 10

    check-cast p1, Lr/a$a;

    iget-object v0, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {v0}, Lr/a;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Lr/a$a;->a(IIII)V

    return-void

    :cond_f
    invoke-virtual {p0, p1}, Lr/b;->g(Lr/c;)F

    move-result v0

    invoke-virtual {p0, p1}, Lr/b;->k(Lr/c;)F

    move-result v1

    iget-object v2, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {v2}, Lr/a;->getPreventCornerOverlap()Z

    move-result v2

    if-eqz v2, :cond_2a

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sget-wide v6, Lr/f;->a:D

    sub-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    double-to-float v2, v4

    goto :goto_2d

    :cond_2a
    sget v2, Lr/f;->b:I

    move v2, v0

    :goto_2d
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {v3}, Lr/a;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lr/f;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v2, v0, v2, v0}, Lr/a$a;->a(IIII)V

    return-void
.end method

.method public final m(Lr/c;F)V
    .registers 7

    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    move-result-object v0

    check-cast p1, Lr/a$a;

    iget-object v1, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {v1}, Lr/a;->getUseCompatPadding()Z

    move-result v1

    iget-object v2, p1, Lr/a$a;->b:Lr/a;

    invoke-virtual {v2}, Lr/a;->getPreventCornerOverlap()Z

    move-result v2

    iget v3, v0, Lr/e;->e:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_21

    iget-boolean v3, v0, Lr/e;->f:Z

    if-ne v3, v1, :cond_21

    iget-boolean v3, v0, Lr/e;->g:Z

    if-ne v3, v2, :cond_21

    goto :goto_2e

    :cond_21
    iput p2, v0, Lr/e;->e:F

    iput-boolean v1, v0, Lr/e;->f:Z

    iput-boolean v2, v0, Lr/e;->g:Z

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lr/e;->c(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_2e
    invoke-virtual {p0, p1}, Lr/b;->l(Lr/c;)V

    return-void
.end method

.method public final n(Lr/c;Landroid/content/res/ColorStateList;)V
    .registers 3

    invoke-static {p1}, Lr/b;->o(Lr/c;)Lr/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr/e;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
