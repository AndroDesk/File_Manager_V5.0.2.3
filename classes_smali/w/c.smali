.class public final Lw/c;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "ChainRun.java"


# instance fields
.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 7

    invoke-direct {p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lw/c;->k:Ljava/util/ArrayList;

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    :goto_12
    if-eqz p1, :cond_1e

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p2

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_12

    :cond_1e
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    goto :goto_31

    :cond_2b
    if-ne v0, v2, :cond_30

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    goto :goto_31

    :cond_30
    move-object v0, v1

    :goto_31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    :goto_3a
    if-eqz p1, :cond_55

    iget-object p2, p0, Lw/c;->k:Ljava/util/ArrayList;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v0, :cond_45

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    goto :goto_4b

    :cond_45
    if-ne v0, v2, :cond_4a

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    goto :goto_4b

    :cond_4a
    move-object v0, v1

    :goto_4b
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    goto :goto_3a

    :cond_55
    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5b
    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v0, :cond_70

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Lw/c;

    goto :goto_5b

    :cond_70
    if-ne v0, v2, :cond_5b

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Lw/c;

    goto :goto_5b

    :cond_77
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez p1, :cond_87

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast p1, Landroidx/constraintlayout/core/widgets/d;

    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    if-eqz p1, :cond_87

    move p1, v2

    goto :goto_88

    :cond_87
    const/4 p1, 0x0

    :goto_88
    if-eqz p1, :cond_a3

    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_a3

    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :cond_a3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez p1, :cond_ac

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    goto :goto_b0

    :cond_ac
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    :goto_b0
    iput p1, p0, Lw/c;->l:I

    return-void
.end method


# virtual methods
.method public final a(Lw/d;)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_3f5

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v3, :cond_10

    goto/16 :goto_3f5

    :cond_10
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v4, :cond_1d

    check-cast v3, Landroidx/constraintlayout/core/widgets/d;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    sub-int/2addr v2, v1

    iget-object v1, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2a
    const/4 v6, -0x1

    const/16 v7, 0x8

    if-ge v4, v1, :cond_40

    iget-object v8, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-ne v8, v7, :cond_41

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_40
    move v4, v6

    :cond_41
    add-int/lit8 v8, v1, -0x1

    move v9, v8

    :goto_44
    if-ltz v9, :cond_58

    iget-object v10, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-ne v10, v7, :cond_57

    add-int/lit8 v9, v9, -0x1

    goto :goto_44

    :cond_57
    move v6, v9

    :cond_58
    const/4 v9, 0x0

    :goto_59
    const/4 v11, 0x2

    if-ge v9, v11, :cond_f8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_63
    if-ge v13, v1, :cond_ea

    iget-object v5, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-ne v10, v7, :cond_75

    goto/16 :goto_e3

    :cond_75
    add-int/lit8 v16, v16, 0x1

    if-lez v13, :cond_80

    if-lt v13, v4, :cond_80

    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v14, v10

    :cond_80
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v19, v7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v7, :cond_8e

    const/4 v7, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v7, 0x0

    :goto_8f
    if-eqz v7, :cond_ad

    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v10, :cond_9e

    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v12, :cond_9e

    return-void

    :cond_9e
    const/4 v12, 0x1

    if-ne v10, v12, :cond_aa

    iget-object v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v10, :cond_aa

    return-void

    :cond_aa
    move/from16 v20, v7

    goto :goto_c4

    :cond_ad
    move/from16 v20, v7

    const/4 v12, 0x1

    iget v7, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    if-ne v7, v12, :cond_bb

    if-nez v9, :cond_bb

    iget v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_c1

    :cond_bb
    iget-boolean v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v7, :cond_c4

    move/from16 v7, v19

    :goto_c1
    const/16 v20, 0x1

    goto :goto_c6

    :cond_c4
    :goto_c4
    move/from16 v7, v19

    :goto_c6
    if-nez v20, :cond_d8

    add-int/lit8 v15, v15, 0x1

    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    aget v7, v7, v10

    const/4 v10, 0x0

    cmpl-float v11, v7, v10

    if-ltz v11, :cond_d9

    add-float v17, v17, v7

    goto :goto_d9

    :cond_d8
    add-int/2addr v14, v7

    :cond_d9
    :goto_d9
    if-ge v13, v8, :cond_e3

    if-ge v13, v6, :cond_e3

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v5, v5

    add-int/2addr v14, v5

    :cond_e3
    :goto_e3
    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x8

    const/4 v11, 0x2

    goto/16 :goto_63

    :cond_ea
    if-lt v14, v2, :cond_f5

    if-nez v15, :cond_ef

    goto :goto_f5

    :cond_ef
    add-int/lit8 v9, v9, 0x1

    const/16 v7, 0x8

    goto/16 :goto_59

    :cond_f5
    :goto_f5
    move/from16 v5, v16

    goto :goto_fd

    :cond_f8
    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_fd
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    if-eqz v3, :cond_107

    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    :cond_107
    const/high16 v9, 0x3f000000  # 0.5f

    if-le v14, v2, :cond_11e

    const/high16 v10, 0x40000000  # 2.0f

    if-eqz v3, :cond_117

    sub-int v11, v14, v2

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v11, v9

    float-to-int v10, v11

    add-int/2addr v7, v10

    goto :goto_11e

    :cond_117
    sub-int v11, v14, v2

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v11, v9

    float-to-int v10, v11

    sub-int/2addr v7, v10

    :cond_11e
    :goto_11e
    if-lez v15, :cond_1ff

    sub-int v10, v2, v14

    int-to-float v10, v10

    int-to-float v11, v15

    div-float v11, v10, v11

    add-float/2addr v11, v9

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12a
    if-ge v12, v1, :cond_1b3

    iget-object v9, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move/from16 v19, v11

    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v20, v14

    iget v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    move/from16 v21, v7

    const/16 v7, 0x8

    if-ne v14, v7, :cond_143

    goto :goto_19b

    :cond_143
    iget-object v7, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v14, :cond_19b

    iget-object v7, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v14, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v14, :cond_19b

    const/4 v14, 0x0

    cmpl-float v18, v17, v14

    if-lez v18, :cond_164

    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    move/from16 v22, v3

    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    aget v3, v14, v3

    mul-float/2addr v3, v10

    div-float v3, v3, v17

    const/high16 v14, 0x3f000000  # 0.5f

    add-float/2addr v3, v14

    float-to-int v3, v3

    goto :goto_168

    :cond_164
    move/from16 v22, v3

    move/from16 v3, v19

    :goto_168
    iget v14, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v14, :cond_171

    iget v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    goto :goto_175

    :cond_171
    iget v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    :goto_175
    move/from16 v23, v10

    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    move/from16 v24, v5

    const/4 v5, 0x1

    if-ne v10, v5, :cond_185

    iget v5, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_186

    :cond_185
    move v5, v3

    :goto_186
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v14, :cond_190

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_190
    if-eq v5, v3, :cond_195

    add-int/lit8 v13, v13, 0x1

    move v3, v5

    :cond_195
    iget-object v5, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    goto :goto_1a1

    :cond_19b
    :goto_19b
    move/from16 v22, v3

    move/from16 v24, v5

    move/from16 v23, v10

    :goto_1a1
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v19

    move/from16 v14, v20

    move/from16 v7, v21

    move/from16 v3, v22

    move/from16 v10, v23

    move/from16 v5, v24

    const/high16 v9, 0x3f000000  # 0.5f

    goto/16 :goto_12a

    :cond_1b3
    move/from16 v22, v3

    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v20, v14

    if-lez v13, :cond_1f0

    sub-int/2addr v15, v13

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1c0
    if-ge v3, v1, :cond_1ee

    iget-object v7, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1d3

    goto :goto_1eb

    :cond_1d3
    if-lez v3, :cond_1dc

    if-lt v3, v4, :cond_1dc

    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v5, v9

    :cond_1dc
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    add-int/2addr v5, v9

    if-ge v3, v8, :cond_1eb

    if-ge v3, v6, :cond_1eb

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v7, v7

    add-int/2addr v5, v7

    :cond_1eb
    :goto_1eb
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c0

    :cond_1ee
    move v14, v5

    goto :goto_1f2

    :cond_1f0
    move/from16 v14, v20

    :goto_1f2
    iget v3, v0, Lw/c;->l:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1fd

    if-nez v13, :cond_1fd

    const/4 v3, 0x0

    iput v3, v0, Lw/c;->l:I

    goto :goto_209

    :cond_1fd
    const/4 v3, 0x0

    goto :goto_209

    :cond_1ff
    move/from16 v22, v3

    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v20, v14

    const/4 v3, 0x0

    const/4 v5, 0x2

    :goto_209
    if-le v14, v2, :cond_20d

    iput v5, v0, Lw/c;->l:I

    :cond_20d
    if-lez v24, :cond_215

    if-nez v15, :cond_215

    if-ne v4, v6, :cond_215

    iput v5, v0, Lw/c;->l:I

    :cond_215
    iget v5, v0, Lw/c;->l:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2b7

    move/from16 v9, v24

    if-le v9, v7, :cond_223

    sub-int/2addr v2, v14

    add-int/lit8 v5, v9, -0x1

    div-int/2addr v2, v5

    goto :goto_22a

    :cond_223
    if-ne v9, v7, :cond_229

    sub-int/2addr v2, v14

    const/4 v5, 0x2

    div-int/2addr v2, v5

    goto :goto_22a

    :cond_229
    move v2, v3

    :goto_22a
    if-lez v15, :cond_22d

    move v2, v3

    :cond_22d
    move v5, v3

    move/from16 v7, v21

    :goto_230
    if-ge v5, v1, :cond_3f5

    if-eqz v22, :cond_239

    add-int/lit8 v3, v5, 0x1

    sub-int v3, v1, v3

    goto :goto_23a

    :cond_239
    move v3, v5

    :goto_23a
    iget-object v9, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_255

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_2b3

    :cond_255
    if-lez v5, :cond_25c

    if-eqz v22, :cond_25b

    sub-int/2addr v7, v2

    goto :goto_25c

    :cond_25b
    add-int/2addr v7, v2

    :cond_25c
    :goto_25c
    if-lez v5, :cond_26d

    if-lt v5, v4, :cond_26d

    if-eqz v22, :cond_268

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    sub-int/2addr v7, v9

    goto :goto_26d

    :cond_268
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v7, v9

    :cond_26d
    :goto_26d
    if-eqz v22, :cond_275

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_27a

    :cond_275
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_27a
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_28b

    iget v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_28b

    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    :cond_28b
    if-eqz v22, :cond_28f

    sub-int/2addr v7, v10

    goto :goto_290

    :cond_28f
    add-int/2addr v7, v10

    :goto_290
    if-eqz v22, :cond_298

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_29d

    :cond_298
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_29d
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    if-ge v5, v8, :cond_2b3

    if-ge v5, v6, :cond_2b3

    if-eqz v22, :cond_2ad

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v3, v3

    sub-int/2addr v7, v3

    goto :goto_2b3

    :cond_2ad
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v3, v3

    add-int/2addr v7, v3

    :cond_2b3
    :goto_2b3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_230

    :cond_2b7
    move/from16 v9, v24

    if-nez v5, :cond_34c

    sub-int/2addr v2, v14

    const/4 v5, 0x1

    add-int/lit8 v7, v9, 0x1

    div-int/2addr v2, v7

    if-lez v15, :cond_2c3

    move v2, v3

    :cond_2c3
    move v5, v3

    move/from16 v7, v21

    :goto_2c6
    if-ge v5, v1, :cond_3f5

    if-eqz v22, :cond_2cf

    add-int/lit8 v3, v5, 0x1

    sub-int v3, v1, v3

    goto :goto_2d0

    :cond_2cf
    move v3, v5

    :goto_2d0
    iget-object v9, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2eb

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_348

    :cond_2eb
    if-eqz v22, :cond_2ef

    sub-int/2addr v7, v2

    goto :goto_2f0

    :cond_2ef
    add-int/2addr v7, v2

    :goto_2f0
    if-lez v5, :cond_301

    if-lt v5, v4, :cond_301

    if-eqz v22, :cond_2fc

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    sub-int/2addr v7, v9

    goto :goto_301

    :cond_2fc
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v7, v9

    :cond_301
    :goto_301
    if-eqz v22, :cond_309

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_30e

    :cond_309
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_30e
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_323

    iget v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_323

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_323
    if-eqz v22, :cond_327

    sub-int/2addr v7, v10

    goto :goto_328

    :cond_327
    add-int/2addr v7, v10

    :goto_328
    if-eqz v22, :cond_330

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_335

    :cond_330
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_335
    if-ge v5, v8, :cond_348

    if-ge v5, v6, :cond_348

    if-eqz v22, :cond_342

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v3, v3

    sub-int/2addr v7, v3

    goto :goto_348

    :cond_342
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v3, v3

    add-int/2addr v7, v3

    :cond_348
    :goto_348
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2c6

    :cond_34c
    const/4 v7, 0x2

    if-ne v5, v7, :cond_3f5

    iget v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v5, :cond_358

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    goto :goto_35c

    :cond_358
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    :goto_35c
    if-eqz v22, :cond_362

    const/high16 v7, 0x3f800000  # 1.0f

    sub-float v5, v7, v5

    :cond_362
    sub-int/2addr v2, v14

    int-to-float v2, v2

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000  # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    if-ltz v2, :cond_36d

    if-lez v15, :cond_36e

    :cond_36d
    move v2, v3

    :cond_36e
    if-eqz v22, :cond_373

    sub-int v7, v21, v2

    goto :goto_375

    :cond_373
    add-int v7, v21, v2

    :goto_375
    move v5, v3

    :goto_376
    if-ge v5, v1, :cond_3f5

    if-eqz v22, :cond_37f

    add-int/lit8 v2, v5, 0x1

    sub-int v2, v1, v2

    goto :goto_380

    :cond_37f
    move v2, v5

    :goto_380
    iget-object v3, v0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v9, 0x8

    if-ne v3, v9, :cond_39c

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    const/4 v12, 0x1

    goto :goto_3f2

    :cond_39c
    if-lez v5, :cond_3ad

    if-lt v5, v4, :cond_3ad

    if-eqz v22, :cond_3a8

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    sub-int/2addr v7, v3

    goto :goto_3ad

    :cond_3a8
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    add-int/2addr v7, v3

    :cond_3ad
    :goto_3ad
    if-eqz v22, :cond_3b5

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_3ba

    :cond_3b5
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_3ba
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_3cc

    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3cd

    iget v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    goto :goto_3cd

    :cond_3cc
    const/4 v12, 0x1

    :cond_3cd
    :goto_3cd
    if-eqz v22, :cond_3d1

    sub-int/2addr v7, v10

    goto :goto_3d2

    :cond_3d1
    add-int/2addr v7, v10

    :goto_3d2
    if-eqz v22, :cond_3da

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    goto :goto_3df

    :cond_3da
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    :goto_3df
    if-ge v5, v8, :cond_3f2

    if-ge v5, v6, :cond_3f2

    if-eqz v22, :cond_3ec

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v2, v2

    sub-int/2addr v7, v2

    goto :goto_3f2

    :cond_3ec
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    neg-int v2, v2

    add-int/2addr v7, v2

    :cond_3f2
    :goto_3f2
    add-int/lit8 v5, v5, 0x1

    goto :goto_376

    :cond_3f5
    :goto_3f5
    return-void
.end method

.method public final d()V
    .registers 6

    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_20

    return-void

    :cond_20
    iget-object v2, p0, Lw/c;->k:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, p0, Lw/c;->k:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v4, :cond_76

    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-static {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    invoke-virtual {p0}, Lw/c;->m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_52

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    :cond_52
    if-eqz v2, :cond_59

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-static {v4, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    :cond_59
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v0

    invoke-virtual {p0}, Lw/c;->n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_6d

    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v0

    :cond_6d
    if-eqz v1, :cond_b1

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    neg-int v0, v0

    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    goto :goto_b1

    :cond_76
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-static {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    invoke-virtual {p0}, Lw/c;->m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_8e

    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    :cond_8e
    if-eqz v3, :cond_95

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-static {v4, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    :cond_95
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v0

    invoke-virtual {p0}, Lw/c;->n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_a9

    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v0

    :cond_a9
    if-eqz v1, :cond_b1

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    neg-int v0, v0

    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    :cond_b1
    :goto_b1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    return-void
.end method

.method public final e()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final f()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Lw/i;

    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final j()J
    .registers 8

    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_27

    iget-object v4, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    move-result-wide v5

    add-long/2addr v5, v1

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    int-to-long v1, v1

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_27
    return-wide v1
.end method

.method public final k()Z
    .registers 5

    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    move-result v3

    if-nez v3, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 5

    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChainRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    if-nez v1, :cond_e

    const-string v1, "horizontal : "

    goto :goto_10

    :cond_e
    const-string v1, "vertical : "

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
