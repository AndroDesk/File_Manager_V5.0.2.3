.class public final Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Matrix;

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 7
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 8
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 9
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 10
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;Landroidx/collection/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 18
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 19
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 20
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 21
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 22
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Ljava/lang/String;

    .line 25
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 26
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 27
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 28
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 29
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 30
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 31
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 32
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Ljava/lang/String;

    .line 33
    iget v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:I

    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:I

    if-eqz v1, :cond_55

    .line 34
    invoke-virtual {p2, v1, p0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_55
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 36
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 37
    :goto_5d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a6

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 39
    instance-of v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    if-eqz v2, :cond_78

    .line 40
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 41
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    new-instance v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    invoke-direct {v3, v1, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;Landroidx/collection/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 42
    :cond_78
    instance-of v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    if-eqz v2, :cond_84

    .line 43
    new-instance v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    invoke-direct {v2, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;)V

    goto :goto_8f

    .line 44
    :cond_84
    instance-of v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;

    if-eqz v2, :cond_9e

    .line 45
    new-instance v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;

    invoke-direct {v2, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;)V

    .line 46
    :goto_8f
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    if-eqz v1, :cond_9b

    .line 48
    invoke-virtual {p2, v1, v2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 49
    :cond_9e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a6
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1d

    .line 11
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    .line 19
    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_2

    .line 30
    :cond_1d
    return v0
.end method

.method public final b([I)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_1a

    .line 11
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    .line 19
    invoke-virtual {v2, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b([I)Z

    .line 22
    move-result v2

    .line 23
    or-int/2addr v1, v2

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_2

    .line 27
    :cond_1a
    return v1
.end method

.method public final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    .line 8
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 10
    neg-float v1, v1

    .line 11
    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 13
    neg-float v2, v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    .line 19
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 21
    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 26
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    .line 28
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 34
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    .line 36
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 38
    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 40
    add-float/2addr v1, v2

    .line 41
    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 43
    iget v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 45
    add-float/2addr v2, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 49
    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    .line 3
    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 3
    return v0
.end method

.method public getPivotY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 3
    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 3
    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 3
    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 3
    return v0
.end method

.method public getTranslateX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 3
    return v0
.end method

.method public getTranslateY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 3
    return v0
.end method

.method public setPivotX(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 9
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 12
    :cond_b
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 9
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 12
    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 9
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 12
    :cond_b
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 9
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 12
    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 9
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 12
    :cond_b
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 9
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 12
    :cond_b
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 9
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 12
    :cond_b
    return-void
.end method
