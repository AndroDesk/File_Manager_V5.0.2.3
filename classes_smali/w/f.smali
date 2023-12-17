.class public final Lw/f;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field public static a:Lw/b$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    sput-object v0, Lw/f;->a:Lw/b$a;

    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .registers 9

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_f

    check-cast v4, Landroidx/constraintlayout/core/widgets/d;

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_16

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v1

    :cond_16
    if-eqz v4, :cond_1c

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    :cond_1c
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    if-eq v2, v4, :cond_52

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    move-result v6

    if-nez v6, :cond_52

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v6, :cond_52

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v6, :cond_3f

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-nez v7, :cond_3f

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_3f

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    move-result v7

    if-nez v7, :cond_52

    :cond_3f
    if-ne v2, v6, :cond_50

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-ne v2, v3, :cond_50

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(II)Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_52

    :cond_50
    move v2, v1

    goto :goto_53

    :cond_52
    :goto_52
    move v2, v3

    :goto_53
    if-eq v0, v4, :cond_86

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    move-result v4

    if-nez v4, :cond_86

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v4, :cond_86

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_73

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v6, :cond_73

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_73

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    move-result v6

    if-nez v6, :cond_86

    :cond_73
    if-ne v0, v4, :cond_84

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-ne v0, v3, :cond_84

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(II)Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_86

    :cond_84
    move v0, v1

    goto :goto_87

    :cond_86
    :goto_86
    move v0, v3

    :goto_87
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_92

    if-nez v2, :cond_91

    if-eqz v0, :cond_92

    :cond_91
    return v3

    :cond_92
    if-eqz v2, :cond_97

    if-eqz v0, :cond_97

    move v1, v3

    :cond_97
    return v1
.end method

.method public static b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    if-eqz v3, :cond_b

    return-void

    :cond_b
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/d;

    if-nez v3, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static/range {p1 .. p1}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v3

    if-eqz v3, :cond_23

    new-instance v3, Lw/b$a;

    invoke-direct {v3}, Lw/b$a;-><init>()V

    invoke-static {v0, v1, v3}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_23
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v6

    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v7, :cond_10c

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v3, :cond_10c

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v14

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v15

    if-eqz v15, :cond_6b

    if-eqz v14, :cond_6b

    new-instance v15, Lw/b$a;

    invoke-direct {v15}, Lw/b$a;-><init>()V

    invoke-static {v12, v1, v15}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_6b
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v15, :cond_79

    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v11, :cond_79

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-nez v11, :cond_85

    :cond_79
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v11, :cond_87

    iget-object v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v11, :cond_87

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v11, :cond_87

    :cond_85
    const/4 v11, 0x1

    goto :goto_88

    :cond_87
    move v11, v10

    :goto_88
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v15, v15, v10

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v10, :cond_c1

    if-eqz v14, :cond_93

    goto :goto_c1

    :cond_93
    if-ne v15, v10, :cond_109

    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    if-ltz v7, :cond_109

    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    if-ltz v7, :cond_109

    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v7, v9, :cond_ab

    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-nez v7, :cond_109

    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_109

    :cond_ab
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    move-result v7

    if-nez v7, :cond_109

    iget-boolean v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    if-nez v7, :cond_109

    if-eqz v11, :cond_109

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    move-result v7

    if-nez v7, :cond_109

    invoke-static {v13, v0, v1, v12, v2}, Lw/f;->d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto :goto_109

    :cond_c1
    :goto_c1
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v10

    if-eqz v10, :cond_c8

    goto :goto_109

    :cond_c8
    iget-object v10, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v10, :cond_e3

    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v14, :cond_e3

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v12, v7, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    invoke-static {v13, v12, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    goto :goto_109

    :cond_e3
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v14, :cond_fe

    iget-object v7, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v7, :cond_fe

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v12, v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    invoke-static {v13, v12, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    goto :goto_109

    :cond_fe
    if-eqz v11, :cond_109

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    move-result v7

    if-nez v7, :cond_109

    invoke-static {v13, v12, v1, v2}, Lw/f;->c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    :cond_109
    :goto_109
    const/4 v10, 0x0

    goto/16 :goto_47

    :cond_10c
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v3, :cond_111

    return-void

    :cond_111
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1e6

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v4, :cond_1e6

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11d
    :goto_11d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v7, 0x1

    add-int/lit8 v10, p0, 0x1

    invoke-static {v5}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v7

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v11

    if-eqz v11, :cond_142

    if-eqz v7, :cond_142

    new-instance v11, Lw/b$a;

    invoke-direct {v11}, Lw/b$a;-><init>()V

    invoke-static {v5, v1, v11}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_142
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v4, v11, :cond_150

    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v12, :cond_150

    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-nez v12, :cond_15c

    :cond_150
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v4, v12, :cond_15e

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v11, :cond_15e

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v11, :cond_15e

    :cond_15c
    const/4 v11, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v11, 0x0

    :goto_15f
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_199

    if-eqz v7, :cond_16b

    goto :goto_199

    :cond_16b
    if-ne v12, v14, :cond_11d

    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    if-ltz v4, :cond_11d

    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    if-ltz v4, :cond_11d

    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v4, v9, :cond_183

    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-nez v4, :cond_11d

    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_11d

    :cond_183
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    move-result v4

    if-nez v4, :cond_11d

    iget-boolean v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    if-nez v4, :cond_11d

    if-eqz v11, :cond_11d

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    move-result v4

    if-nez v4, :cond_11d

    invoke-static {v10, v0, v1, v5, v2}, Lw/f;->d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto :goto_11d

    :cond_199
    :goto_199
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v7

    if-eqz v7, :cond_1a1

    goto/16 :goto_11d

    :cond_1a1
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v4, v7, :cond_1bd

    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v12, :cond_1bd

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    invoke-static {v10, v5, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    goto/16 :goto_11d

    :cond_1bd
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v4, v12, :cond_1d9

    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_1d9

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v5, v7, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    invoke-static {v10, v5, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    goto/16 :goto_11d

    :cond_1d9
    if-eqz v11, :cond_11d

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    move-result v4

    if-nez v4, :cond_11d

    invoke-static {v10, v5, v1, v2}, Lw/f;->c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    goto/16 :goto_11d

    :cond_1e6
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    return-void
.end method

.method public static c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V
    .registers 10

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v2

    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000  # 0.5f

    if-ne v1, v2, :cond_27

    move v0, v5

    goto :goto_29

    :cond_27
    move v1, v3

    move v2, v4

    :goto_29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_35

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_35
    if-lez v4, :cond_3b

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    goto :goto_3d

    :cond_3b
    int-to-float v4, v4

    mul-float/2addr v0, v4

    :goto_3d
    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_45

    sub-int v4, v0, v3

    :cond_45
    invoke-virtual {p1, v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2, p3}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    return-void
.end method

.method public static d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 12

    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v1

    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v1

    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_6b

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v3

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000  # 0.5f

    if-eq v4, v5, :cond_5b

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v3, :cond_3c

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result p1

    goto :goto_42

    :cond_3c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result p1

    :goto_42
    iget v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    mul-float/2addr v3, v6

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int v3, v3

    goto :goto_4d

    :cond_49
    if-nez v4, :cond_4d

    sub-int v3, v1, v2

    :cond_4d
    :goto_4d
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    if-lez p1, :cond_5b

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5b
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v2, p1

    add-int/2addr v3, v2

    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2, p4}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    :cond_6b
    return-void
.end method

.method public static e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V
    .registers 9

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v2

    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000  # 0.5f

    if-ne v1, v2, :cond_27

    move v0, v5

    goto :goto_29

    :cond_27
    move v1, v3

    move v2, v4

    :goto_29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_35

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_35
    if-lez v4, :cond_3b

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    goto :goto_3d

    :cond_3b
    int-to-float v4, v4

    mul-float/2addr v0, v4

    :goto_3d
    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_48

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    :cond_48
    invoke-virtual {p1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    return-void
.end method

.method public static f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 11

    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v1

    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v1

    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_6a

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v3

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000  # 0.5f

    if-eq v4, v5, :cond_5a

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_48

    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v3, :cond_3c

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result p1

    goto :goto_42

    :cond_3c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result p1

    :goto_42
    mul-float v3, v0, v6

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int v3, v3

    goto :goto_4c

    :cond_48
    if-nez v4, :cond_4c

    sub-int v3, v1, v2

    :cond_4c
    :goto_4c
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    if-lez p1, :cond_5a

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5a
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v2, p1

    add-int/2addr v3, v2

    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    :cond_6a
    return-void
.end method

.method public static g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    if-eqz v2, :cond_9

    return-void

    :cond_9
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/d;

    if-nez v2, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static/range {p1 .. p1}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lw/b$a;

    invoke-direct {v2}, Lw/b$a;-><init>()V

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_21
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v6

    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v7, :cond_10c

    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v2, :cond_10c

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_45
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v12, p0, 0x1

    invoke-static {v11}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v13

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v14

    if-eqz v14, :cond_69

    if-eqz v13, :cond_69

    new-instance v14, Lw/b$a;

    invoke-direct {v14}, Lw/b$a;-><init>()V

    invoke-static {v11, v1, v14}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_69
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v14, :cond_77

    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v15, :cond_77

    iget-boolean v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-nez v15, :cond_83

    :cond_77
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v15, :cond_85

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_85

    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v14, :cond_85

    :cond_83
    move v14, v10

    goto :goto_86

    :cond_85
    const/4 v14, 0x0

    :goto_86
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v15, v15, v10

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v3, :cond_bf

    if-eqz v13, :cond_91

    goto :goto_bf

    :cond_91
    if-ne v15, v3, :cond_45

    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    if-ltz v3, :cond_45

    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    if-ltz v3, :cond_45

    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v3, v9, :cond_a9

    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v3, :cond_45

    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_45

    :cond_a9
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    move-result v3

    if-nez v3, :cond_45

    iget-boolean v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    if-nez v3, :cond_45

    if-eqz v14, :cond_45

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-static {v12, v0, v1, v11}, Lw/f;->f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_45

    :cond_bf
    :goto_bf
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v3

    if-eqz v3, :cond_c7

    goto/16 :goto_45

    :cond_c7
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v3, :cond_e3

    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v13, :cond_e3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v11, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    invoke-static {v12, v11, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto/16 :goto_45

    :cond_e3
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v7, v13, :cond_ff

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v3, :cond_ff

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v11, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    invoke-static {v12, v11, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto/16 :goto_45

    :cond_ff
    if-eqz v14, :cond_45

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-static {v12, v11, v1}, Lw/f;->e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto/16 :goto_45

    :cond_10c
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v2, :cond_111

    return-void

    :cond_111
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_1e4

    iget-boolean v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v3, :cond_1e4

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11d
    :goto_11d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v5, p0, 0x1

    invoke-static {v4}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v7

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v11

    if-eqz v11, :cond_141

    if-eqz v7, :cond_141

    new-instance v11, Lw/b$a;

    invoke-direct {v11}, Lw/b$a;-><init>()V

    invoke-static {v4, v1, v11}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_141
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v3, v11, :cond_14f

    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v12, :cond_14f

    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-nez v12, :cond_15b

    :cond_14f
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v3, v12, :cond_15d

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v11, :cond_15d

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v11, :cond_15d

    :cond_15b
    move v11, v10

    goto :goto_15e

    :cond_15d
    const/4 v11, 0x0

    :goto_15e
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v12, v10

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v13, :cond_197

    if-eqz v7, :cond_169

    goto :goto_197

    :cond_169
    if-ne v12, v13, :cond_11d

    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    if-ltz v3, :cond_11d

    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    if-ltz v3, :cond_11d

    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v3, v9, :cond_181

    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v3, :cond_11d

    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_11d

    :cond_181
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    move-result v3

    if-nez v3, :cond_11d

    iget-boolean v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    if-nez v3, :cond_11d

    if-eqz v11, :cond_11d

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    move-result v3

    if-nez v3, :cond_11d

    invoke-static {v5, v0, v1, v4}, Lw/f;->f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_11d

    :cond_197
    :goto_197
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v7

    if-eqz v7, :cond_19f

    goto/16 :goto_11d

    :cond_19f
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v3, v7, :cond_1bb

    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v12, :cond_1bb

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    invoke-static {v5, v4, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto/16 :goto_11d

    :cond_1bb
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v3, v12, :cond_1d7

    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v3, :cond_1d7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    sub-int v3, v6, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v4, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    invoke-static {v5, v4, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto/16 :goto_11d

    :cond_1d7
    if-eqz v11, :cond_11d

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    move-result v3

    if-nez v3, :cond_11d

    invoke-static {v5, v4, v1}, Lw/f;->e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto/16 :goto_11d

    :cond_1e4
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_25d

    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    if-eqz v3, :cond_25d

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    move-result v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1fc
    :goto_1fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v6, p0, 0x1

    invoke-static {v5}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v7

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v8

    if-eqz v8, :cond_220

    if-eqz v7, :cond_220

    new-instance v8, Lw/b$a;

    invoke-direct {v8}, Lw/b$a;-><init>()V

    invoke-static {v5, v1, v8}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    :cond_220
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v10

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_22a

    if-eqz v7, :cond_1fc

    :cond_22a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v7

    if-eqz v7, :cond_231

    goto :goto_1fc

    :cond_231
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v4, v7, :cond_1fc

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    add-int/2addr v4, v3

    iget-boolean v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    if-nez v7, :cond_23f

    goto :goto_259

    :cond_23f
    iget v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    sub-int v7, v4, v7

    iget v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v8, v7

    iput v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    :goto_259
    invoke-static {v6, v5, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    goto :goto_1fc

    :cond_25d
    iput-boolean v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    return-void
.end method
