.class public final Ly/l;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ly/l;",
        ">;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Ly/l;->a:F

    const/4 v1, 0x0

    iput v1, p0, Ly/l;->c:F

    iput v1, p0, Ly/l;->d:F

    iput v1, p0, Ly/l;->e:F

    iput v1, p0, Ly/l;->f:F

    iput v0, p0, Ly/l;->g:F

    iput v0, p0, Ly/l;->h:F

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Ly/l;->i:F

    iput v0, p0, Ly/l;->j:F

    iput v1, p0, Ly/l;->k:F

    iput v1, p0, Ly/l;->l:F

    iput v1, p0, Ly/l;->m:F

    iput v0, p0, Ly/l;->n:F

    iput v0, p0, Ly/l;->o:F

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ly/l;->p:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static b(FF)Z
    .registers 5

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1e

    :cond_f
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd  # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    :cond_1e
    :goto_1e
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_228

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_22a

    goto/16 :goto_d3

    :sswitch_28
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto/16 :goto_d3

    :cond_32
    const/16 v3, 0xd

    goto/16 :goto_d3

    :sswitch_36
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto/16 :goto_d3

    :cond_40
    const/16 v3, 0xc

    goto/16 :goto_d3

    :sswitch_44
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto/16 :goto_d3

    :cond_4e
    const/16 v3, 0xb

    goto/16 :goto_d3

    :sswitch_52
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto/16 :goto_d3

    :cond_5c
    const/16 v3, 0xa

    goto/16 :goto_d3

    :sswitch_60
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto/16 :goto_d3

    :cond_6a
    const/16 v3, 0x9

    goto/16 :goto_d3

    :sswitch_6e
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    goto/16 :goto_d3

    :cond_78
    const/16 v3, 0x8

    goto/16 :goto_d3

    :sswitch_7c
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    goto :goto_d3

    :cond_85
    const/4 v3, 0x7

    goto :goto_d3

    :sswitch_87
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    goto :goto_d3

    :cond_90
    const/4 v3, 0x6

    goto :goto_d3

    :sswitch_92
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    goto :goto_d3

    :cond_9b
    const/4 v3, 0x5

    goto :goto_d3

    :sswitch_9d
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    goto :goto_d3

    :cond_a6
    const/4 v3, 0x4

    goto :goto_d3

    :sswitch_a8
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    goto :goto_d3

    :cond_b1
    const/4 v3, 0x3

    goto :goto_d3

    :sswitch_b3
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    goto :goto_d3

    :cond_bc
    const/4 v3, 0x2

    goto :goto_d3

    :sswitch_be
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c7

    goto :goto_d3

    :cond_c7
    move v3, v5

    goto :goto_d3

    :sswitch_c9
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    goto :goto_d3

    :cond_d2
    const/4 v3, 0x0

    :goto_d3
    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_264

    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MotionPaths"

    if-eqz v3, :cond_212

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v5, p0, Ly/l;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Ly/l;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    instance-of v5, v2, Lx/c$b;

    if-eqz v5, :cond_1ea

    check-cast v2, Lx/c$b;

    goto/16 :goto_1e3

    :pswitch_103  #0xd
    iget v1, p0, Ly/l;->a:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_10c

    goto :goto_10e

    :cond_10c
    iget v4, p0, Ly/l;->a:F

    :goto_10e
    invoke-virtual {v2, v4, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_113  #0xc
    iget v1, p0, Ly/l;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11c

    goto :goto_11e

    :cond_11c
    iget v6, p0, Ly/l;->n:F

    :goto_11e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_123  #0xb
    iget v1, p0, Ly/l;->c:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12c

    goto :goto_12e

    :cond_12c
    iget v6, p0, Ly/l;->c:F

    :goto_12e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_133  #0xa
    iget v1, p0, Ly/l;->d:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13c

    goto :goto_13e

    :cond_13c
    iget v6, p0, Ly/l;->d:F

    :goto_13e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_143  #0x9
    iget v1, p0, Ly/l;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_14c

    goto :goto_14e

    :cond_14c
    iget v6, p0, Ly/l;->j:F

    :goto_14e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_153  #0x8
    iget v1, p0, Ly/l;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15c

    goto :goto_15e

    :cond_15c
    iget v6, p0, Ly/l;->i:F

    :goto_15e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_163  #0x7
    iget v1, p0, Ly/l;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16c

    goto :goto_16e

    :cond_16c
    iget v4, p0, Ly/l;->h:F

    :goto_16e
    invoke-virtual {v2, v4, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_173  #0x6
    iget v1, p0, Ly/l;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17c

    goto :goto_17e

    :cond_17c
    iget v4, p0, Ly/l;->g:F

    :goto_17e
    invoke-virtual {v2, v4, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_183  #0x5
    iget v1, p0, Ly/l;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18c

    goto :goto_18e

    :cond_18c
    iget v6, p0, Ly/l;->o:F

    :goto_18e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_193  #0x4
    iget v1, p0, Ly/l;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19c

    goto :goto_19e

    :cond_19c
    iget v6, p0, Ly/l;->m:F

    :goto_19e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_1a3  #0x3
    iget v1, p0, Ly/l;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1ac

    goto :goto_1ae

    :cond_1ac
    iget v6, p0, Ly/l;->l:F

    :goto_1ae
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_1b3  #0x2
    iget v1, p0, Ly/l;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1bc

    goto :goto_1be

    :cond_1bc
    iget v6, p0, Ly/l;->k:F

    :goto_1be
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_1c3  #0x1
    iget v1, p0, Ly/l;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1cc

    goto :goto_1ce

    :cond_1cc
    iget v6, p0, Ly/l;->f:F

    :goto_1ce
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_1d3  #0x0
    iget v1, p0, Ly/l;->e:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1dc

    goto :goto_1de

    :cond_1dc
    iget v6, p0, Ly/l;->e:F

    :goto_1de
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :goto_1e3
    iget-object v1, v2, Lx/c$b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_1ea
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ViewSpline not a CustomSet frame = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->a()F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN spline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_228
    return-void

    nop

    :sswitch_data_22a
    .sparse-switch
        -0x4a771f66 -> :sswitch_c9
        -0x4a771f65 -> :sswitch_be
        -0x490b9c39 -> :sswitch_b3
        -0x490b9c38 -> :sswitch_a8
        -0x490b9c37 -> :sswitch_9d
        -0x3bab3dd3 -> :sswitch_92
        -0x3621dfb2 -> :sswitch_87
        -0x3621dfb1 -> :sswitch_7c
        -0x2d5a2d1e -> :sswitch_6e
        -0x2d5a2d1d -> :sswitch_60
        -0x266f082 -> :sswitch_52
        -0x42d1a3 -> :sswitch_44
        0x2382115 -> :sswitch_36
        0x589b15e -> :sswitch_28
    .end sparse-switch

    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_1d3  #00000000
        :pswitch_1c3  #00000001
        :pswitch_1b3  #00000002
        :pswitch_1a3  #00000003
        :pswitch_193  #00000004
        :pswitch_183  #00000005
        :pswitch_173  #00000006
        :pswitch_163  #00000007
        :pswitch_153  #00000008
        :pswitch_143  #00000009
        :pswitch_133  #0000000a
        :pswitch_123  #0000000b
        :pswitch_113  #0000000c
        :pswitch_103  #0000000d
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Ly/l;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_1e
    iput v0, p0, Ly/l;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, Ly/l;->c:F

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Ly/l;->d:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Ly/l;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Ly/l;->f:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Ly/l;->g:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Ly/l;->h:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iput v0, p0, Ly/l;->i:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iput v0, p0, Ly/l;->j:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Ly/l;->k:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Ly/l;->l:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    iput p1, p0, Ly/l;->m:F

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ly/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
