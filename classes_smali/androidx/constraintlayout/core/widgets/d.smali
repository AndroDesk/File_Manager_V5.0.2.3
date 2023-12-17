.class public final Landroidx/constraintlayout/core/widgets/d;
.super Lv/c;
.source "ConstraintWidgetContainer.java"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:[Landroidx/constraintlayout/core/widgets/c;

.field public E0:[Landroidx/constraintlayout/core/widgets/c;

.field public F0:I

.field public G0:Z

.field public H0:Z

.field public I0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public J0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public K0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public L0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public M0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public N0:Lw/b$a;

.field public t0:Lw/b;

.field public u0:Lw/e;

.field public v0:I

.field public w0:Lw/b$b;

.field public x0:Z

.field public y0:Landroidx/constraintlayout/core/c;

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lv/c;-><init>()V

    new-instance v0, Lw/b;

    invoke-direct {v0, p0}, Lw/b;-><init>(Landroidx/constraintlayout/core/widgets/d;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->t0:Lw/b;

    new-instance v0, Lw/e;

    invoke-direct {v0, p0}, Lw/e;-><init>(Landroidx/constraintlayout/core/widgets/d;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    new-instance v2, Landroidx/constraintlayout/core/c;

    invoke-direct {v2}, Landroidx/constraintlayout/core/c;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    const/4 v2, 0x4

    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/c;

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/c;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    const/16 v2, 0x101

    iput v2, p0, Landroidx/constraintlayout/core/widgets/d;->F0:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->N0:Lw/b$a;

    return-void
.end method

.method public static R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12e

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/e;

    if-nez v0, :cond_12e

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v0, :cond_14

    goto/16 :goto_12e

    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v0, v2

    iput-object v1, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v0

    iput v0, p2, Lw/b$a;->c:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v0

    iput v0, p2, Lw/b$a;->d:I

    iput-boolean v2, p2, Lw/b$a;->i:Z

    iput v2, p2, Lw/b$a;->j:I

    iget-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_37

    move v0, v1

    goto :goto_38

    :cond_37
    move v0, v2

    :goto_38
    iget-object v4, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v3, :cond_3e

    move v3, v1

    goto :goto_3f

    :cond_3e
    move v3, v2

    :goto_3f
    const/4 v4, 0x0

    if-eqz v0, :cond_4a

    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4a

    move v5, v1

    goto :goto_4b

    :cond_4a
    move v5, v2

    :goto_4b
    if-eqz v3, :cond_55

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_55

    move v4, v1

    goto :goto_56

    :cond_55
    move v4, v2

    :goto_56
    if-eqz v0, :cond_73

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    move-result v6

    if-eqz v6, :cond_73

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-nez v6, :cond_73

    if-nez v5, :cond_73

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v3, :cond_72

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v0, :cond_72

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_72
    move v0, v2

    :cond_73
    if-eqz v3, :cond_90

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    move-result v6

    if-eqz v6, :cond_90

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v6, :cond_90

    if-nez v4, :cond_90

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v0, :cond_8f

    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-nez v3, :cond_8f

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_8f
    move v3, v2

    :cond_90
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    move-result v6

    if-eqz v6, :cond_9b

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v2

    :cond_9b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    move-result v6

    if-eqz v6, :cond_a6

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v2

    :cond_a6
    const/4 v6, 0x4

    if-eqz v5, :cond_d4

    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aget v5, v5, v2

    if-ne v5, v6, :cond_b4

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_d4

    :cond_b4
    if-nez v3, :cond_d4

    iget-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_bf

    iget v3, p2, Lw/b$a;->d:I

    goto :goto_cb

    :cond_bf
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-virtual {v3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    iget v3, p2, Lw/b$a;->f:I

    :goto_cb
    iput-object v5, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, Lw/b$a;->c:I

    :cond_d4
    :goto_d4
    if-eqz v4, :cond_10e

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aget v3, v3, v1

    if-ne v3, v6, :cond_e1

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_10e

    :cond_e1
    if-nez v0, :cond_10e

    iget-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_ec

    iget v0, p2, Lw/b$a;->c:I

    goto :goto_f8

    :cond_ec
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-virtual {v0, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    iget v0, p2, Lw/b$a;->e:I

    :goto_f8
    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_107

    int-to-float v0, v0

    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p2, Lw/b$a;->d:I

    goto :goto_10e

    :cond_107
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p2, Lw/b$a;->d:I

    :cond_10e
    :goto_10e
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    iget p1, p2, Lw/b$a;->e:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    iget p1, p2, Lw/b$a;->f:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    iget-boolean p1, p2, Lw/b$a;->h:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    iget p1, p2, Lw/b$a;->g:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    if-lez p1, :cond_128

    goto :goto_129

    :cond_128
    move v1, v2

    :goto_129
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    iput v2, p2, Lw/b$a;->j:I

    return-void

    :cond_12e
    :goto_12e
    iput v2, p2, Lw/b$a;->e:I

    iput v2, p2, Lw/b$a;->f:I

    return-void
.end method


# virtual methods
.method public final A()V
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/c;->s()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->z0:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->A0:I

    invoke-super {p0}, Lv/c;->A()V

    return-void
.end method

.method public final L(ZZ)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L(ZZ)V

    iget-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final N()V
    .registers 27

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    iget-object v0, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v5, v5, v2

    iget v8, v1, Landroidx/constraintlayout/core/widgets/d;->v0:I

    if-nez v8, :cond_241

    iget v8, v1, Landroidx/constraintlayout/core/widgets/d;->F0:I

    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    move-result v8

    if-eqz v8, :cond_241

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v10, v2

    aget-object v10, v10, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B()V

    iget-object v12, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v2

    :goto_46
    if-ge v14, v13, :cond_54

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_46

    :cond_54
    iget-boolean v14, v1, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v15, :cond_62

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v11

    invoke-virtual {v1, v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    goto :goto_69

    :cond_62
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    :goto_69
    move v11, v2

    move v15, v11

    move/from16 v16, v15

    :goto_6d
    const/high16 v17, 0x3f000000  # 0.5f

    if-ge v11, v13, :cond_c9

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v9, v2, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v9, :cond_b7

    check-cast v2, Landroidx/constraintlayout/core/widgets/e;

    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->w0:I

    if-ne v9, v6, :cond_c5

    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->t0:I

    const/4 v15, -0x1

    if-eq v9, v15, :cond_8c

    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    goto :goto_b5

    :cond_8c
    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->u0:I

    if-eq v9, v15, :cond_a1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    move-result v9

    if-eqz v9, :cond_a1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v9

    iget v15, v2, Landroidx/constraintlayout/core/widgets/e;->u0:I

    sub-int/2addr v9, v15

    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    goto :goto_b5

    :cond_a1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    move-result v9

    if-eqz v9, :cond_b5

    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->s0:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v9, v15

    add-float v9, v9, v17

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    :cond_b5
    :goto_b5
    move v15, v6

    goto :goto_c5

    :cond_b7
    instance-of v9, v2, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v9, :cond_c5

    check-cast v2, Landroidx/constraintlayout/core/widgets/a;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/a;->P()I

    move-result v2

    if-nez v2, :cond_c5

    move/from16 v16, v6

    :cond_c5
    :goto_c5
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_6d

    :cond_c9
    if-eqz v15, :cond_e7

    const/4 v2, 0x0

    :goto_cc
    if-ge v2, v13, :cond_e7

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v11, v9, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v11, :cond_e3

    check-cast v9, Landroidx/constraintlayout/core/widgets/e;

    iget v11, v9, Landroidx/constraintlayout/core/widgets/e;->w0:I

    if-ne v11, v6, :cond_e3

    const/4 v11, 0x0

    invoke-static {v11, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    goto :goto_e4

    :cond_e3
    const/4 v11, 0x0

    :goto_e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    :cond_e7
    const/4 v11, 0x0

    invoke-static {v11, v1, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    if-eqz v16, :cond_10e

    const/4 v2, 0x0

    :goto_ee
    if-ge v2, v13, :cond_10e

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v11, v9, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v11, :cond_10b

    check-cast v9, Landroidx/constraintlayout/core/widgets/a;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->P()I

    move-result v11

    if-nez v11, :cond_10b

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->O()Z

    move-result v11

    if-eqz v11, :cond_10b

    invoke-static {v6, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    :cond_10b
    add-int/lit8 v2, v2, 0x1

    goto :goto_ee

    :cond_10e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_11b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    goto :goto_123

    :cond_11b
    const/4 v9, 0x0

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    :goto_123
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_126
    if-ge v2, v13, :cond_17c

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v15, v11, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v15, :cond_16c

    check-cast v11, Landroidx/constraintlayout/core/widgets/e;

    iget v15, v11, Landroidx/constraintlayout/core/widgets/e;->w0:I

    if-nez v15, :cond_179

    iget v9, v11, Landroidx/constraintlayout/core/widgets/e;->t0:I

    const/4 v15, -0x1

    if-eq v9, v15, :cond_141

    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    goto :goto_16a

    :cond_141
    iget v9, v11, Landroidx/constraintlayout/core/widgets/e;->u0:I

    if-eq v9, v15, :cond_156

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    move-result v9

    if-eqz v9, :cond_156

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v9

    iget v15, v11, Landroidx/constraintlayout/core/widgets/e;->u0:I

    sub-int/2addr v9, v15

    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    goto :goto_16a

    :cond_156
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    move-result v9

    if-eqz v9, :cond_16a

    iget v9, v11, Landroidx/constraintlayout/core/widgets/e;->s0:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v9, v15

    add-float v9, v9, v17

    float-to-int v9, v9

    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    :cond_16a
    :goto_16a
    move v9, v6

    goto :goto_179

    :cond_16c
    instance-of v15, v11, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v15, :cond_179

    check-cast v11, Landroidx/constraintlayout/core/widgets/a;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/a;->P()I

    move-result v11

    if-ne v11, v6, :cond_179

    move v10, v6

    :cond_179
    :goto_179
    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    :cond_17c
    if-eqz v9, :cond_197

    const/4 v2, 0x0

    :goto_17f
    if-ge v2, v13, :cond_197

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v11, v9, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v11, :cond_194

    check-cast v9, Landroidx/constraintlayout/core/widgets/e;

    iget v11, v9, Landroidx/constraintlayout/core/widgets/e;->w0:I

    if-nez v11, :cond_194

    invoke-static {v6, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    :cond_194
    add-int/lit8 v2, v2, 0x1

    goto :goto_17f

    :cond_197
    const/4 v2, 0x0

    invoke-static {v2, v1, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    if-eqz v10, :cond_1be

    const/4 v2, 0x0

    :goto_19e
    if-ge v2, v13, :cond_1be

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v10, :cond_1bb

    check-cast v9, Landroidx/constraintlayout/core/widgets/a;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->P()I

    move-result v10

    if-ne v10, v6, :cond_1bb

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->O()Z

    move-result v10

    if-eqz v10, :cond_1bb

    invoke-static {v6, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    :cond_1bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_19e

    :cond_1be
    const/4 v2, 0x0

    :goto_1bf
    if-ge v2, v13, :cond_1f7

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v10

    if-eqz v10, :cond_1f4

    invoke-static {v9}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v10

    if-eqz v10, :cond_1f4

    sget-object v10, Lw/f;->a:Lw/b$a;

    invoke-static {v9, v8, v10}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v10, :cond_1ed

    move-object v10, v9

    check-cast v10, Landroidx/constraintlayout/core/widgets/e;

    iget v10, v10, Landroidx/constraintlayout/core/widgets/e;->w0:I

    if-nez v10, :cond_1e8

    const/4 v10, 0x0

    invoke-static {v10, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto :goto_1f4

    :cond_1e8
    const/4 v10, 0x0

    invoke-static {v10, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    goto :goto_1f4

    :cond_1ed
    const/4 v10, 0x0

    invoke-static {v10, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    invoke-static {v10, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    :cond_1f4
    :goto_1f4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1bf

    :cond_1f7
    const/4 v2, 0x0

    :goto_1f8
    if-ge v2, v3, :cond_241

    iget-object v8, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v9

    if-eqz v9, :cond_23e

    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/e;

    if-nez v9, :cond_23e

    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/a;

    if-nez v9, :cond_23e

    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/g;

    if-nez v9, :cond_23e

    iget-boolean v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    if-nez v9, :cond_23e

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_231

    iget v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-eq v10, v6, :cond_231

    if-ne v9, v11, :cond_231

    iget v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-eq v9, v6, :cond_231

    move v9, v6

    goto :goto_232

    :cond_231
    const/4 v9, 0x0

    :goto_232
    if-nez v9, :cond_23e

    new-instance v9, Lw/b$a;

    invoke-direct {v9}, Lw/b$a;-><init>()V

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    invoke-static {v8, v10, v9}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_23e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f8

    :cond_241
    const/4 v2, 0x2

    if-le v3, v2, :cond_639

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v9, :cond_24a

    if-ne v7, v9, :cond_639

    :cond_24a
    iget v9, v1, Landroidx/constraintlayout/core/widgets/d;->F0:I

    const/16 v10, 0x400

    invoke-static {v9, v10}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    move-result v9

    if-eqz v9, :cond_639

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    iget-object v10, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_25d
    if-ge v12, v11, :cond_288

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    aget-object v2, v14, v15

    aget-object v14, v14, v6

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v13, v15

    aget-object v13, v13, v6

    invoke-static {v2, v14, v8, v13}, Lw/g;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v2

    if-nez v2, :cond_284

    move/from16 v24, v0

    move/from16 v22, v3

    move/from16 v21, v4

    move-object/from16 v25, v5

    move-object/from16 v23, v7

    goto/16 :goto_5ed

    :cond_284
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x2

    goto :goto_25d

    :cond_288
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_28f
    if-ge v6, v11, :cond_374

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v21, v4

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v23, v7

    const/16 v19, 0x0

    aget-object v7, v4, v19

    const/16 v20, 0x1

    aget-object v4, v4, v20

    move/from16 v24, v0

    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v25, v5

    aget-object v5, v0, v19

    aget-object v0, v0, v20

    invoke-static {v7, v4, v5, v0}, Lw/g;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v0

    if-nez v0, :cond_2be

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->N0:Lw/b$a;

    invoke-static {v3, v9, v0}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_2be
    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v0, :cond_2e3

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/core/widgets/e;

    iget v5, v4, Landroidx/constraintlayout/core/widgets/e;->w0:I

    if-nez v5, :cond_2d4

    if-nez v12, :cond_2d1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    :cond_2d1
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d4
    iget v5, v4, Landroidx/constraintlayout/core/widgets/e;->w0:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2e3

    if-nez v2, :cond_2e0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2e0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e3
    instance-of v4, v3, Lv/b;

    if-eqz v4, :cond_328

    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v4, :cond_311

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/core/widgets/a;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/a;->P()I

    move-result v5

    if-nez v5, :cond_2ff

    if-nez v8, :cond_2fc

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    :cond_2fc
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2ff
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/a;->P()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_328

    if-nez v13, :cond_30d

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_30d
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_328

    :cond_311
    move-object v4, v3

    check-cast v4, Lv/b;

    if-nez v8, :cond_31b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_31b
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_325

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_325
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_328
    :goto_328
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_344

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_344

    if-nez v0, :cond_344

    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/a;

    if-nez v4, :cond_344

    if-nez v14, :cond_341

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_341
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_344
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_366

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_366

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_366

    if-nez v0, :cond_366

    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/a;

    if-nez v0, :cond_366

    if-nez v15, :cond_363

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_363
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_366
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v21

    move/from16 v3, v22

    move-object/from16 v7, v23

    move/from16 v0, v24

    move-object/from16 v5, v25

    goto/16 :goto_28f

    :cond_374
    move/from16 v24, v0

    move/from16 v22, v3

    move/from16 v21, v4

    move-object/from16 v25, v5

    move-object/from16 v23, v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_39b

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_389
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_389

    :cond_39b
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v8, :cond_3bc

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/b;

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lv/b;->N(ILw/j;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lw/j;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3a3

    :cond_3bc
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3de

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3ca
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_3ca

    :cond_3de
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_400

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_400

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_3ec

    :cond_400
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_422

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_422

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_40e

    :cond_422
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v14, :cond_43a

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_42a

    :cond_43a
    if-eqz v12, :cond_451

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_440
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_451

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/e;

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_440

    :cond_451
    const/4 v5, 0x1

    if-eqz v13, :cond_471

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_458
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_471

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/b;

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lv/b;->N(ILw/j;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lw/j;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_458

    :cond_471
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_493

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_493

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_47f

    :cond_493
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_4b5

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_4a1

    :cond_4b5
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_4d7

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_4c3

    :cond_4d7
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_4f9

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_4e5

    :cond_4f9
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v15, :cond_511

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_501
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_511

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    goto :goto_501

    :cond_511
    const/4 v2, 0x0

    :goto_512
    if-ge v2, v11, :cond_56e

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v5, :cond_52a

    const/4 v6, 0x1

    aget-object v4, v4, v6

    if-ne v4, v5, :cond_52a

    const/4 v4, 0x1

    goto :goto_52b

    :cond_52a
    const/4 v4, 0x0

    :goto_52b
    if-eqz v4, :cond_56b

    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_534
    if-ge v6, v5, :cond_544

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw/j;

    iget v8, v7, Lw/j;->b:I

    if-ne v4, v8, :cond_541

    goto :goto_545

    :cond_541
    add-int/lit8 v6, v6, 0x1

    goto :goto_534

    :cond_544
    const/4 v7, 0x0

    :goto_545
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_54c
    if-ge v5, v4, :cond_55c

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw/j;

    iget v8, v6, Lw/j;->b:I

    if-ne v3, v8, :cond_559

    goto :goto_55d

    :cond_559
    add-int/lit8 v5, v5, 0x1

    goto :goto_54c

    :cond_55c
    const/4 v6, 0x0

    :goto_55d
    if-eqz v7, :cond_56b

    if-eqz v6, :cond_56b

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v6}, Lw/j;->d(ILw/j;)V

    const/4 v3, 0x2

    iput v3, v6, Lw/j;->c:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_56b
    add-int/lit8 v2, v2, 0x1

    goto :goto_512

    :cond_56e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_577

    goto/16 :goto_5ed

    :cond_577
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_5af

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_586
    :goto_586
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw/j;

    iget v6, v5, Lw/j;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_598

    goto :goto_586

    :cond_598
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lw/j;->c(Landroidx/constraintlayout/core/c;I)I

    move-result v6

    if-le v6, v4, :cond_586

    move-object v3, v5

    move v4, v6

    goto :goto_586

    :cond_5a4
    if-eqz v3, :cond_5af

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    goto :goto_5b0

    :cond_5af
    const/4 v3, 0x0

    :goto_5b0
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_5e7

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_5bf
    :goto_5bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw/j;

    iget v6, v5, Lw/j;->c:I

    if-nez v6, :cond_5d0

    goto :goto_5bf

    :cond_5d0
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lw/j;->c(Landroidx/constraintlayout/core/c;I)I

    move-result v6

    if-le v6, v4, :cond_5bf

    move-object v2, v5

    move v4, v6

    goto :goto_5bf

    :cond_5dc
    if-eqz v2, :cond_5e7

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    goto :goto_5e8

    :cond_5e7
    const/4 v2, 0x0

    :goto_5e8
    if-nez v3, :cond_5ef

    if-eqz v2, :cond_5ed

    goto :goto_5ef

    :cond_5ed
    :goto_5ed
    const/4 v0, 0x0

    goto :goto_5f0

    :cond_5ef
    :goto_5ef
    const/4 v0, 0x1

    :goto_5f0
    if-eqz v0, :cond_630

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v2, v25

    if-ne v2, v0, :cond_60e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v3

    move/from16 v4, v24

    if-ge v4, v3, :cond_609

    if-lez v4, :cond_609

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    goto :goto_610

    :cond_609
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v3

    goto :goto_611

    :cond_60e
    move/from16 v4, v24

    :goto_610
    move v3, v4

    :goto_611
    move-object/from16 v5, v23

    if-ne v5, v0, :cond_62b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v0

    move/from16 v6, v21

    if-ge v6, v0, :cond_626

    if-lez v6, :cond_626

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    goto :goto_62d

    :cond_626
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v4

    goto :goto_62e

    :cond_62b
    move/from16 v6, v21

    :goto_62d
    move v4, v6

    :goto_62e
    const/4 v0, 0x1

    goto :goto_642

    :cond_630
    move/from16 v6, v21

    move-object/from16 v5, v23

    move/from16 v4, v24

    move-object/from16 v2, v25

    goto :goto_63f

    :cond_639
    move/from16 v22, v3

    move v6, v4

    move-object v2, v5

    move-object v5, v7

    move v4, v0

    :goto_63f
    move v3, v4

    move v4, v6

    const/4 v0, 0x0

    :goto_642
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    move-result v7

    if-nez v7, :cond_655

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    move-result v7

    if-eqz v7, :cond_653

    goto :goto_655

    :cond_653
    const/4 v7, 0x0

    goto :goto_656

    :cond_655
    :goto_655
    const/4 v7, 0x1

    :goto_656
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/core/c;->g:Z

    iget v10, v1, Landroidx/constraintlayout/core/widgets/d;->F0:I

    if-eqz v10, :cond_668

    if-eqz v7, :cond_668

    const/4 v7, 0x1

    iput-boolean v7, v8, Landroidx/constraintlayout/core/c;->g:Z

    goto :goto_669

    :cond_668
    const/4 v7, 0x1

    :goto_669
    iget-object v8, v1, Lv/c;->s0:Ljava/util/ArrayList;

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v10, v9

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_67a

    aget-object v10, v10, v7

    if-ne v10, v12, :cond_678

    goto :goto_67a

    :cond_678
    move v11, v9

    goto :goto_67b

    :cond_67a
    :goto_67a
    const/4 v11, 0x1

    :goto_67b
    iput v9, v1, Landroidx/constraintlayout/core/widgets/d;->B0:I

    iput v9, v1, Landroidx/constraintlayout/core/widgets/d;->C0:I

    move/from16 v9, v22

    const/4 v7, 0x0

    :goto_682
    if-ge v7, v9, :cond_698

    iget-object v10, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v12, v10, Lv/c;

    if-eqz v12, :cond_695

    check-cast v10, Lv/c;

    invoke-virtual {v10}, Lv/c;->N()V

    :cond_695
    add-int/lit8 v7, v7, 0x1

    goto :goto_682

    :cond_698
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    move-result v7

    move v10, v0

    const/4 v0, 0x0

    const/4 v12, 0x1

    :goto_69f
    if-eqz v12, :cond_8f7

    const/4 v13, 0x1

    add-int/lit8 v14, v0, 0x1

    :try_start_6a4
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/c;->s()V

    const/4 v13, 0x0

    iput v13, v1, Landroidx/constraintlayout/core/widgets/d;->B0:I

    iput v13, v1, Landroidx/constraintlayout/core/widgets/d;->C0:I

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/c;)V

    const/4 v0, 0x0

    :goto_6b4
    if-ge v0, v9, :cond_6c6

    iget-object v13, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v13, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b4

    :cond_6c6
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/d;->P(Landroidx/constraintlayout/core/c;)V
    :try_end_6cb
    .catch Ljava/lang/Exception; {:try_start_6a4 .. :try_end_6cb} :catch_784

    :try_start_6cb
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;
    :try_end_6cd
    .catch Ljava/lang/Exception; {:try_start_6cb .. :try_end_6cd} :catch_777

    const/4 v12, 0x5

    if-eqz v0, :cond_6f8

    :try_start_6d0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6f8

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13, v15}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v13

    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v15, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    const/4 v6, 0x0

    invoke-virtual {v15, v0, v13, v6, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_6f2
    .catch Ljava/lang/Exception; {:try_start_6d0 .. :try_end_6f2} :catch_6f6

    const/4 v6, 0x0

    :try_start_6f3
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    goto :goto_6f8

    :catch_6f6
    move-exception v0

    goto :goto_74b

    :cond_6f8
    :goto_6f8
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;
    :try_end_6fa
    .catch Ljava/lang/Exception; {:try_start_6f3 .. :try_end_6fa} :catch_777

    if-eqz v0, :cond_721

    :try_start_6fc
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_721

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v0, v15, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_71e
    .catch Ljava/lang/Exception; {:try_start_6fc .. :try_end_71e} :catch_6f6

    const/4 v6, 0x0

    :try_start_71f
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    :cond_721
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;
    :try_end_723
    .catch Ljava/lang/Exception; {:try_start_71f .. :try_end_723} :catch_777

    if-eqz v0, :cond_74d

    :try_start_725
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_74d

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    const/4 v15, 0x0

    invoke-virtual {v13, v0, v6, v15, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_747
    .catch Ljava/lang/Exception; {:try_start_725 .. :try_end_747} :catch_6f6

    const/4 v6, 0x0

    :try_start_748
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    goto :goto_74d

    :goto_74b
    const/4 v6, 0x0

    goto :goto_782

    :cond_74d
    :goto_74d
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_779

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_779

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v0, v15, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_773
    .catch Ljava/lang/Exception; {:try_start_748 .. :try_end_773} :catch_777

    const/4 v6, 0x0

    :try_start_774
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    goto :goto_77a

    :catch_777
    move-exception v0

    goto :goto_74b

    :cond_779
    const/4 v6, 0x0

    :goto_77a
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/c;->p()V
    :try_end_77f
    .catch Ljava/lang/Exception; {:try_start_774 .. :try_end_77f} :catch_781

    const/4 v12, 0x1

    goto :goto_79f

    :catch_781
    move-exception v0

    :goto_782
    const/4 v12, 0x1

    goto :goto_786

    :catch_784
    move-exception v0

    const/4 v6, 0x0

    :goto_786
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXCEPTION : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_79f
    if-eqz v12, :cond_7e8

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    sget-object v6, Landroidx/constraintlayout/core/widgets/f;->a:[Z

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput-boolean v13, v6, v12

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    move-result v12

    invoke-virtual {v1, v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    iget-object v13, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_7bb
    if-ge v15, v13, :cond_7e6

    iget-object v6, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6, v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    move-object/from16 v23, v0

    iget v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    move/from16 v24, v12

    const/4 v12, -0x1

    if-ne v0, v12, :cond_7d8

    iget v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    if-eq v0, v12, :cond_7d6

    goto :goto_7d8

    :cond_7d6
    const/4 v0, 0x0

    goto :goto_7d9

    :cond_7d8
    :goto_7d8
    const/4 v0, 0x1

    :goto_7d9
    if-eqz v0, :cond_7dd

    const/16 v21, 0x1

    :cond_7dd
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v23

    move/from16 v12, v24

    const/16 v6, 0x40

    goto :goto_7bb

    :cond_7e6
    const/4 v12, -0x1

    goto :goto_803

    :cond_7e8
    const/4 v12, -0x1

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    const/4 v0, 0x0

    :goto_7ef
    if-ge v0, v9, :cond_801

    iget-object v6, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    invoke-virtual {v6, v13, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7ef

    :cond_801
    const/16 v21, 0x0

    :goto_803
    const/16 v0, 0x8

    if-eqz v11, :cond_86e

    if-ge v14, v0, :cond_86e

    sget-object v6, Landroidx/constraintlayout/core/widgets/f;->a:[Z

    const/4 v13, 0x2

    aget-boolean v6, v6, v13

    if-eqz v6, :cond_86e

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_813
    if-ge v6, v9, :cond_83a

    iget-object v13, v1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v24

    add-int v0, v24, v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v13

    add-int/2addr v13, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x8

    const/4 v13, 0x2

    goto :goto_813

    :cond_83a
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v12, :cond_85b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v13

    if-ge v13, v0, :cond_85b

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aput-object v12, v0, v10

    const/4 v10, 0x1

    const/16 v21, 0x1

    :cond_85b
    if-ne v5, v12, :cond_86e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v0

    if-ge v0, v6, :cond_86e

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aput-object v12, v0, v6

    const/4 v10, 0x1

    const/16 v21, 0x1

    :cond_86e
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v6

    if-le v0, v6, :cond_88b

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aput-object v6, v0, v10

    const/4 v10, 0x1

    const/16 v21, 0x1

    :cond_88b
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v6

    if-le v0, v6, :cond_8a9

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    aput-object v6, v0, v12

    move v10, v12

    move/from16 v21, v10

    goto :goto_8aa

    :cond_8a9
    const/4 v12, 0x1

    :goto_8aa
    if-nez v10, :cond_8ea

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v13, :cond_8cb

    if-lez v3, :cond_8cb

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v0

    if-le v0, v3, :cond_8cb

    iput-boolean v12, v1, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v10, v0, v6

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    move v10, v12

    move/from16 v21, v10

    :cond_8cb
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v12

    if-ne v0, v13, :cond_8ea

    if-lez v4, :cond_8ea

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v0

    if-le v0, v4, :cond_8ea

    iput-boolean v12, v1, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v0, v12

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    const/16 v0, 0x8

    const/4 v10, 0x1

    const/16 v21, 0x1

    goto :goto_8ec

    :cond_8ea
    const/16 v0, 0x8

    :goto_8ec
    if-le v14, v0, :cond_8f0

    const/4 v12, 0x0

    goto :goto_8f2

    :cond_8f0
    move/from16 v12, v21

    :goto_8f2
    move v0, v14

    const/16 v6, 0x40

    goto/16 :goto_69f

    :cond_8f7
    iput-object v8, v1, Lv/c;->s0:Ljava/util/ArrayList;

    if-eqz v10, :cond_903

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v5, v0, v2

    :cond_903
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    iget-object v0, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    invoke-virtual {v1, v0}, Lv/c;->C(Lt/a;)V

    return-void
.end method

.method public final O(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_28

    iget p1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    add-int/2addr p1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    array-length v2, v1

    if-lt p1, v2, :cond_16

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/core/widgets/c;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/c;

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    invoke-direct {v2, p2, v3, v4}, Landroidx/constraintlayout/core/widgets/c;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    goto :goto_4d

    :cond_28
    if-ne p1, v0, :cond_4d

    iget p1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    add-int/2addr p1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    array-length v2, v1

    if-lt p1, v2, :cond_3d

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/core/widgets/c;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    :cond_3d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/c;

    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    invoke-direct {v2, p2, v0, v3}, Landroidx/constraintlayout/core/widgets/c;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final P(Landroidx/constraintlayout/core/c;)V
    .registers 14

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    iget-object v1, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_12
    const/4 v5, 0x1

    if-ge v3, v1, :cond_2b

    iget-object v6, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v6, :cond_28

    move v4, v5

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2b
    if-eqz v4, :cond_6e

    move v3, v2

    :goto_2e
    if-ge v3, v1, :cond_6e

    iget-object v4, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v6, :cond_6b

    check-cast v4, Landroidx/constraintlayout/core/widgets/a;

    move v6, v2

    :goto_3f
    iget v7, v4, Lv/b;->t0:I

    if-ge v6, v7, :cond_6b

    iget-object v7, v4, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    iget-boolean v8, v4, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    if-nez v8, :cond_52

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c()Z

    move-result v8

    if-nez v8, :cond_52

    goto :goto_68

    :cond_52
    iget v8, v4, Landroidx/constraintlayout/core/widgets/a;->u0:I

    if-eqz v8, :cond_64

    if-ne v8, v5, :cond_59

    goto :goto_64

    :cond_59
    const/4 v9, 0x2

    if-eq v8, v9, :cond_5f

    const/4 v9, 0x3

    if-ne v8, v9, :cond_68

    :cond_5f
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aput-boolean v5, v7, v5

    goto :goto_68

    :cond_64
    :goto_64
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aput-boolean v5, v7, v2

    :cond_68
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_6e
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v3, v2

    :goto_74
    if-ge v3, v1, :cond_9f

    iget-object v4, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/g;

    if-nez v6, :cond_8c

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v6, :cond_8a

    goto :goto_8c

    :cond_8a
    move v6, v2

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v6, v5

    :goto_8d
    if-eqz v6, :cond_9c

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/g;

    if-eqz v6, :cond_99

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_99
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    :cond_9c
    :goto_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_9f
    :goto_9f
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_106

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v6, Landroidx/constraintlayout/core/widgets/g;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    move v8, v2

    :goto_c4
    iget v9, v6, Lv/b;->t0:I

    if-ge v8, v9, :cond_d7

    iget-object v9, v6, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v9, v9, v8

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    move v7, v5

    goto :goto_d8

    :cond_d4
    add-int/lit8 v8, v8, 0x1

    goto :goto_c4

    :cond_d7
    move v7, v2

    :goto_d8
    if-eqz v7, :cond_b3

    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_e2
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v3, v4, :cond_9f

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_100

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    goto :goto_f0

    :cond_100
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto :goto_9f

    :cond_106
    sget-boolean v3, Landroidx/constraintlayout/core/c;->p:Z

    if-eqz v3, :cond_15b

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_110
    if-ge v4, v1, :cond_131

    iget-object v6, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/g;

    if-nez v7, :cond_128

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v7, :cond_126

    goto :goto_128

    :cond_126
    move v7, v2

    goto :goto_129

    :cond_128
    :goto_128
    move v7, v5

    :goto_129
    if-nez v7, :cond_12e

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12e
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    :cond_131
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v4, :cond_13b

    move v10, v2

    goto :goto_13c

    :cond_13b
    move v10, v5

    :goto_13c
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_148
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/f;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    goto :goto_148

    :cond_15b
    move v3, v2

    :goto_15c
    if-ge v3, v1, :cond_1a5

    iget-object v4, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v6, :cond_18e

    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v6, v2

    aget-object v6, v6, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_179

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_179
    if-ne v6, v8, :cond_180

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_180
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    if-ne v7, v8, :cond_188

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_188
    if-ne v6, v8, :cond_1a2

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1a2

    :cond_18e
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/core/widgets/f;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/g;

    if-nez v6, :cond_19c

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v6, :cond_19a

    goto :goto_19c

    :cond_19a
    move v6, v2

    goto :goto_19d

    :cond_19c
    :goto_19c
    move v6, v5

    :goto_19d
    if-nez v6, :cond_1a2

    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    :cond_1a2
    :goto_1a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_15c

    :cond_1a5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    const/4 v1, 0x0

    if-lez v0, :cond_1ad

    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/widgets/b;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V

    :cond_1ad
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    if-lez v0, :cond_1b4

    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/core/widgets/b;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V

    :cond_1b4
    return-void
.end method

.method public final Q(IZ)Z
    .registers 13

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    const/4 v1, 0x1

    and-int/2addr p2, v1

    iget-object v2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    iget-object v4, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    iget-object v5, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v5

    iget-object v6, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    move-result v6

    if-eqz p2, :cond_8b

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v7, :cond_25

    if-ne v4, v7, :cond_8b

    :cond_25
    iget-object v7, v0, Lw/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-ne v9, p1, :cond_2b

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    move-result v8

    if-nez v8, :cond_2b

    move p2, v3

    :cond_42
    if-nez p1, :cond_68

    if-eqz p2, :cond_8b

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, p2, :cond_8b

    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v0, p2, v3}, Lw/e;->d(Landroidx/constraintlayout/core/widgets/d;I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result p2

    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    goto :goto_8b

    :cond_68
    if-eqz p2, :cond_8b

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, p2, :cond_8b

    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v0, p2, v1}, Lw/e;->d(Landroidx/constraintlayout/core/widgets/d;I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result p2

    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    :cond_8b
    :goto_8b
    if-nez p1, :cond_b4

    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v3

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_9b

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_c3

    :cond_9b
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    iget-object v6, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    goto :goto_dd

    :cond_b4
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v1

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v7, :cond_c5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_c3

    goto :goto_c5

    :cond_c3
    move p2, v3

    goto :goto_de

    :cond_c5
    :goto_c5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    iget-object v5, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    :goto_dd
    move p2, v1

    :goto_de
    invoke-virtual {v0}, Lw/e;->g()V

    iget-object v5, v0, Lw/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_107

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-eq v7, p1, :cond_f8

    goto :goto_e7

    :cond_f8
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v8, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    if-ne v7, v8, :cond_103

    iget-boolean v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    if-nez v7, :cond_103

    goto :goto_e7

    :cond_103
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    goto :goto_e7

    :cond_107
    iget-object v5, v0, Lw/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10d
    :goto_10d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_140

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-eq v7, p1, :cond_11e

    goto :goto_10d

    :cond_11e
    if-nez p2, :cond_127

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v8, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    if-ne v7, v8, :cond_127

    goto :goto_10d

    :cond_127
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v7, :cond_12e

    goto :goto_13f

    :cond_12e
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v7, :cond_135

    goto :goto_13f

    :cond_135
    instance-of v7, v6, Lw/c;

    if-nez v7, :cond_10d

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v6, :cond_10d

    :goto_13f
    move v1, v3

    :cond_140
    iget-object p1, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p1, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v1
.end method

.method public final S(I)Z
    .registers 3

    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->F0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public final l(Ljava/lang/StringBuilder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Ljava/lang/StringBuilder;)V

    const-string v1, ",\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_65
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
