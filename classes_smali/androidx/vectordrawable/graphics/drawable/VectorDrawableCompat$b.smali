.class public final Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:Landroidx/core/content/res/ComplexColorCompat;

.field public f:F

.field public g:Landroidx/core/content/res/ComplexColorCompat;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Landroid/graphics/Paint$Cap;

.field public n:Landroid/graphics/Paint$Join;

.field public o:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 3
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 4
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    .line 6
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 7
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 8
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000  # 4.0f

    .line 10
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 13
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 14
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 15
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    .line 16
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000  # 4.0f

    .line 20
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    .line 21
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    .line 22
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 23
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 24
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    .line 25
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    .line 26
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 27
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    .line 28
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 29
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 30
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    .line 31
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    .line 32
    iget p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    .line 3
    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    .line 11
    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method

.method public final b([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    .line 9
    invoke-virtual {v1, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    .line 12
    move-result p1

    .line 13
    or-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public getFillAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 3
    return v0
.end method

.method public getFillColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    .line 3
    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 3
    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    .line 3
    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 3
    return v0
.end method

.method public getTrimPathEnd()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 3
    return v0
.end method

.method public getTrimPathOffset()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 3
    return v0
.end method

.method public getTrimPathStart()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    .line 3
    return v0
.end method

.method public setFillAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 3
    return-void
.end method

.method public setFillColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    .line 6
    return-void
.end method

.method public setStrokeAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 3
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    .line 6
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 3
    return-void
.end method

.method public setTrimPathEnd(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 3
    return-void
.end method

.method public setTrimPathOffset(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 3
    return-void
.end method

.method public setTrimPathStart(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    .line 3
    return-void
.end method
