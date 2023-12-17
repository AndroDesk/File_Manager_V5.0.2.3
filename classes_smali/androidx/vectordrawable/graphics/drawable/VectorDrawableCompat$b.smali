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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000  # 4.0f

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000  # 4.0f

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    iget p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public final b([I)Z
    .registers 4

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v0

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getFillAlpha()F
    .registers 2

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    return v0
.end method

.method public getFillColor()I
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeAlpha()F
    .registers 2

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    return v0
.end method

.method public getTrimPathEnd()F
    .registers 2

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    return v0
.end method

.method public getTrimPathOffset()F
    .registers 2

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    return v0
.end method

.method public getTrimPathStart()F
    .registers 2

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    return v0
.end method

.method public setFillAlpha(F)V
    .registers 2

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    return-void
.end method

.method public setFillColor(I)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    return-void
.end method

.method public setStrokeAlpha(F)V
    .registers 2

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 2

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .registers 2

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .registers 2

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .registers 2

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    return-void
.end method
