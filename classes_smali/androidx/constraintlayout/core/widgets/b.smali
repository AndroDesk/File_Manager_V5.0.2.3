.class public final Landroidx/constraintlayout/core/widgets/b;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/d;",
            "Landroidx/constraintlayout/core/c;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_12

    iget v1, v0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_1a

    :cond_12
    iget v1, v0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    move v14, v1

    move-object v15, v2

    move/from16 v16, v12

    :goto_1a
    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v14, :cond_725

    aget-object v1, v15, v9

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->q:Z

    const/16 v17, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x1

    if-nez v2, :cond_14c

    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    mul-int/2addr v2, v12

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v6, v5

    const/4 v7, 0x0

    :goto_2f
    if-nez v7, :cond_114

    iget v13, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    add-int/2addr v13, v4

    iput v13, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    iget-object v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    aput-object v17, v13, v3

    iget-object v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v17, v13, v3

    iget v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v13, v8, :cond_e1

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v13, :cond_4e

    iget v3, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    :cond_4e
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v19, v2, 0x1

    aget-object v3, v3, v19

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v19

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v3, :cond_72

    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :cond_72
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v8, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    aget-object v3, v3, v8

    if-ne v3, v13, :cond_e1

    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aget v4, v4, v8

    const/4 v12, 0x3

    if-eqz v4, :cond_88

    if-eq v4, v12, :cond_88

    const/4 v12, 0x2

    if-ne v4, v12, :cond_e1

    :cond_88
    iget v12, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    const/16 v20, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    aget v8, v12, v8

    const/4 v12, 0x0

    cmpl-float v23, v8, v12

    if-lez v23, :cond_9e

    iget v12, v1, Landroidx/constraintlayout/core/widgets/c;->k:F

    add-float/2addr v12, v8

    iput v12, v1, Landroidx/constraintlayout/core/widgets/c;->k:F

    :cond_9e
    iget v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    move/from16 v23, v7

    const/16 v7, 0x8

    if-eq v12, v7, :cond_af

    if-ne v3, v13, :cond_af

    if-eqz v4, :cond_ad

    const/4 v3, 0x3

    if-ne v4, v3, :cond_af

    :cond_ad
    const/4 v3, 0x1

    goto :goto_b0

    :cond_af
    const/4 v3, 0x0

    :goto_b0
    if-eqz v3, :cond_ce

    const/4 v3, 0x0

    cmpg-float v4, v8, v3

    if-gez v4, :cond_bb

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/c;->n:Z

    goto :goto_be

    :cond_bb
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/c;->o:Z

    :goto_be
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_c9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    :cond_c9
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v3, :cond_d4

    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :cond_d4
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v3, :cond_de

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v4, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    aput-object v5, v3, v4

    :cond_de
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_e3

    :cond_e1
    move/from16 v23, v7

    :goto_e3
    if-eq v6, v5, :cond_eb

    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v4, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    aput-object v5, v3, v4

    :cond_eb
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_103

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_103

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v4, v5, :cond_105

    :cond_103
    move-object/from16 v3, v17

    :cond_105
    if-eqz v3, :cond_10a

    move/from16 v7, v23

    goto :goto_10c

    :cond_10a
    move-object v3, v5

    const/4 v7, 0x1

    :goto_10c
    move-object v6, v5

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v12, 0x2

    move-object v5, v3

    goto/16 :goto_2f

    :cond_114
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v3, :cond_11f

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    :cond_11f
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v3, :cond_12c

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    :cond_12c
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    if-nez v2, :cond_139

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->m:Z

    if-eqz v2, :cond_139

    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_13d

    :cond_139
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :goto_13d
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->o:Z

    if-eqz v2, :cond_147

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->n:Z

    if-eqz v2, :cond_147

    const/4 v2, 0x1

    goto :goto_148

    :cond_147
    const/4 v2, 0x0

    :goto_148
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->p:Z

    const/4 v2, 0x1

    goto :goto_14d

    :cond_14c
    move v2, v4

    :goto_14d
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->q:Z

    if-eqz v11, :cond_164

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    goto :goto_164

    :cond_15a
    move/from16 v26, v9

    move/from16 v30, v14

    move-object/from16 v28, v15

    const/16 v18, 0x2

    goto/16 :goto_717

    :cond_164
    :goto_164
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/c;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/c;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v1, Landroidx/constraintlayout/core/widgets/c;->k:F

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, p3

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_17a

    const/4 v4, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v4, 0x0

    :goto_17b
    if-nez p3, :cond_19b

    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    const/4 v6, 0x1

    if-nez v5, :cond_185

    const/16 v20, 0x1

    goto :goto_187

    :cond_185
    const/16 v20, 0x0

    :goto_187
    if-ne v5, v6, :cond_18f

    move/from16 v21, v6

    move/from16 v22, v9

    const/4 v9, 0x2

    goto :goto_194

    :cond_18f
    move/from16 v22, v9

    const/4 v9, 0x2

    const/16 v21, 0x0

    :goto_194
    move/from16 v6, v21

    move/from16 v21, v20

    if-ne v5, v9, :cond_1b5

    goto :goto_1af

    :cond_19b
    move/from16 v22, v9

    const/4 v6, 0x1

    const/4 v9, 0x2

    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    if-nez v5, :cond_1a6

    move/from16 v21, v6

    goto :goto_1a8

    :cond_1a6
    const/16 v21, 0x0

    :goto_1a8
    if-ne v5, v6, :cond_1ac

    const/4 v6, 0x1

    goto :goto_1ad

    :cond_1ac
    const/4 v6, 0x0

    :goto_1ad
    if-ne v5, v9, :cond_1b5

    :goto_1af
    move/from16 v23, v21

    const/4 v5, 0x1

    :goto_1b2
    move/from16 v21, v6

    goto :goto_1b9

    :cond_1b5
    move/from16 v23, v21

    const/4 v5, 0x0

    goto :goto_1b2

    :goto_1b9
    move/from16 v25, v3

    move-object v9, v12

    const/4 v6, 0x0

    :goto_1bd
    if-nez v6, :cond_2a1

    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v16

    if-eqz v5, :cond_1c8

    const/16 v27, 0x1

    goto :goto_1ca

    :cond_1c8
    const/16 v27, 0x4

    :goto_1ca
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v28

    move/from16 v29, v6

    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, p3

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v11, :cond_1e2

    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aget v6, v6, p3

    if-nez v6, :cond_1e2

    move/from16 v30, v14

    const/4 v6, 0x1

    goto :goto_1e5

    :cond_1e2
    move/from16 v30, v14

    const/4 v6, 0x0

    :goto_1e5
    iget-object v14, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_1f1

    if-eq v9, v12, :cond_1f1

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v14

    add-int v28, v14, v28

    :cond_1f1
    move/from16 v14, v28

    if-eqz v5, :cond_1fe

    if-eq v9, v12, :cond_1fe

    if-eq v9, v8, :cond_1fe

    move-object/from16 v28, v15

    const/16 v27, 0x8

    goto :goto_200

    :cond_1fe
    move-object/from16 v28, v15

    :goto_200
    iget-object v15, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v15, :cond_23e

    if-ne v9, v8, :cond_213

    move-object/from16 v31, v2

    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v32, v12

    const/4 v12, 0x6

    invoke-virtual {v10, v2, v15, v14, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_220

    :cond_213
    move-object/from16 v31, v2

    move-object/from16 v32, v12

    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v12, v14, v15}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_220
    if-eqz v6, :cond_226

    if-nez v5, :cond_226

    const/16 v27, 0x5

    :cond_226
    if-ne v9, v8, :cond_232

    if-eqz v5, :cond_232

    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_232

    const/4 v2, 0x5

    goto :goto_234

    :cond_232
    move/from16 v2, v27

    :goto_234
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v10, v6, v3, v14, v2}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_242

    :cond_23e
    move-object/from16 v31, v2

    move-object/from16 v32, v12

    :goto_242
    if-eqz v4, :cond_274

    iget v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_262

    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p3

    if-ne v2, v11, :cond_262

    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, v16, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v6, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v2, v11, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_263

    :cond_262
    const/4 v11, 0x0

    :goto_263
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v11, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_274
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_28c

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_28c

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v3, v9, :cond_28e

    :cond_28c
    move-object/from16 v2, v17

    :cond_28e
    if-eqz v2, :cond_294

    move-object v9, v2

    move/from16 v6, v29

    goto :goto_295

    :cond_294
    const/4 v6, 0x1

    :goto_295
    move-object/from16 v11, p2

    move-object/from16 v15, v28

    move/from16 v14, v30

    move-object/from16 v2, v31

    move-object/from16 v12, v32

    goto/16 :goto_1bd

    :cond_2a1
    move-object/from16 v31, v2

    move-object/from16 v32, v12

    move/from16 v30, v14

    move-object/from16 v28, v15

    if-eqz v7, :cond_30c

    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_30c

    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, p3

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_2c9

    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aget v6, v6, p3

    if-nez v6, :cond_2c9

    const/4 v6, 0x1

    goto :goto_2ca

    :cond_2c9
    const/4 v6, 0x0

    :goto_2ca
    if-eqz v6, :cond_2e2

    if-nez v5, :cond_2e2

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v9, v0, :cond_2e2

    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v11

    neg-int v11, v11

    const/4 v12, 0x5

    invoke-virtual {v10, v9, v6, v11, v12}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_2f8

    :cond_2e2
    const/4 v12, 0x5

    if-eqz v5, :cond_2f8

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v9, v0, :cond_2f8

    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v11

    neg-int v11, v11

    const/4 v14, 0x4

    invoke-virtual {v10, v9, v6, v11, v14}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_2f8
    :goto_2f8
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v9, v3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    invoke-virtual {v10, v6, v3, v2, v9}, Landroidx/constraintlayout/core/c;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_30d

    :cond_30c
    const/4 v12, 0x5

    :goto_30d
    if-eqz v4, :cond_326

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v4, v3

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v4, v3, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_326
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_43f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_43f

    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/c;->n:Z

    if-eqz v6, :cond_33d

    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/c;->p:Z

    if-nez v6, :cond_33d

    iget v6, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    int-to-float v6, v6

    goto :goto_33f

    :cond_33d
    move/from16 v6, v25

    :goto_33f
    move-object/from16 v14, v17

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_343
    if-ge v11, v3, :cond_43f

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    aget v4, v4, p3

    const/16 v18, 0x0

    cmpg-float v25, v4, v18

    if-gez v25, :cond_36f

    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/c;->p:Z

    if-eqz v4, :cond_36b

    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v12, v16, 0x1

    aget-object v12, v4, v12

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v0, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v12, v4, v0, v15}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_388

    :cond_36b
    const/4 v0, 0x4

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_370

    :cond_36f
    const/4 v0, 0x4

    :goto_370
    const/16 v18, 0x0

    cmpl-float v25, v4, v18

    if-nez v25, :cond_390

    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v12, v16, 0x1

    aget-object v12, v4, v12

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v0, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v12, v4, v0, v15}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_388
    move-object/from16 v33, v2

    move/from16 v26, v3

    const/16 v18, 0x0

    goto/16 :goto_433

    :cond_390
    const/4 v0, 0x0

    if-eqz v14, :cond_425

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v14, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    add-int/lit8 v26, v16, 0x1

    aget-object v14, v14, v26

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v33, v2

    aget-object v2, v12, v16

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v12, v12, v26

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    move/from16 v26, v3

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v3

    move-object/from16 v34, v15

    const/4 v15, 0x0

    iput v15, v3, Landroidx/constraintlayout/core/b;->b:F

    cmpl-float v18, v6, v15

    const/high16 v15, -0x40800000  # -1.0f

    if-eqz v18, :cond_406

    cmpl-float v18, v9, v4

    if-nez v18, :cond_3c1

    goto :goto_406

    :cond_3c1
    const/16 v18, 0x0

    cmpl-float v35, v9, v18

    if-nez v35, :cond_3d4

    iget-object v2, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-interface {v2, v0, v9}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v0, v14, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_3e4

    :cond_3d4
    const/high16 v15, 0x3f800000  # 1.0f

    if-nez v25, :cond_3e7

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v0, v2, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    const/high16 v2, -0x40800000  # -1.0f

    invoke-interface {v0, v12, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_3e4
    move/from16 v25, v4

    goto :goto_421

    :cond_3e7
    div-float/2addr v9, v6

    div-float v25, v4, v6

    div-float v9, v9, v25

    move/from16 v25, v4

    iget-object v4, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v4, v0, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    const/high16 v4, -0x40800000  # -1.0f

    invoke-interface {v0, v14, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v0, v12, v9}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    neg-float v4, v9

    invoke-interface {v0, v2, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_421

    :cond_406
    :goto_406
    move/from16 v25, v4

    move v4, v15

    const/high16 v15, 0x3f800000  # 1.0f

    const/16 v18, 0x0

    iget-object v9, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v9, v0, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v0, v14, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v0, v12, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v0, v2, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_421
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    goto :goto_42f

    :cond_425
    move-object/from16 v33, v2

    move/from16 v26, v3

    move/from16 v25, v4

    move-object/from16 v34, v15

    const/16 v18, 0x0

    :goto_42f
    move/from16 v9, v25

    move-object/from16 v14, v34

    :goto_433
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v26

    move-object/from16 v2, v33

    const/4 v4, 0x1

    const/4 v12, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_343

    :cond_43f
    if-eqz v8, :cond_4a5

    if-eq v8, v7, :cond_445

    if-eqz v5, :cond_4a5

    :cond_445
    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v16

    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_459

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    move-object v3, v0

    goto :goto_45b

    :cond_459
    move-object/from16 v3, v17

    :goto_45b
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_463

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    move-object v6, v0

    goto :goto_465

    :cond_463
    move-object/from16 v6, v17

    :goto_465
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v16

    if-eqz v7, :cond_46f

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_46f
    if-eqz v3, :cond_49b

    if-eqz v6, :cond_49b

    if-nez p3, :cond_47a

    move-object/from16 v2, v31

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    goto :goto_47e

    :cond_47a
    move-object/from16 v2, v31

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    :goto_47e
    move v5, v2

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v9

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v12, v7

    move-object v7, v0

    move-object v14, v8

    move v8, v9

    move/from16 v15, v22

    const/16 v18, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_4a1

    :cond_49b
    move-object v12, v7

    move-object v14, v8

    move/from16 v15, v22

    const/16 v18, 0x2

    :cond_4a1
    :goto_4a1
    move/from16 v26, v15

    goto/16 :goto_6b9

    :cond_4a5
    move-object v12, v7

    move-object v14, v8

    move/from16 v15, v22

    move-object/from16 v0, v32

    const/16 v18, 0x2

    if-eqz v23, :cond_5a5

    if-eqz v14, :cond_5a5

    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    if-lez v2, :cond_4bc

    iget v1, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    if-ne v1, v2, :cond_4bc

    const/16 v20, 0x1

    goto :goto_4be

    :cond_4bc
    const/16 v20, 0x0

    :goto_4be
    move-object v9, v14

    move-object v11, v9

    :goto_4c0
    if-eqz v11, :cond_4a1

    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_4c7
    if-eqz v8, :cond_4d4

    iget v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_4d6

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v8, v1, p3

    goto :goto_4c7

    :cond_4d4
    const/16 v7, 0x8

    :cond_4d6
    if-nez v8, :cond_4e4

    if-ne v11, v12, :cond_4db

    goto :goto_4e4

    :cond_4db
    move-object/from16 v19, v8

    move-object/from16 v22, v9

    move/from16 v26, v15

    move v15, v7

    goto/16 :goto_597

    :cond_4e4
    :goto_4e4
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4f1

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_4f3

    :cond_4f1
    move-object/from16 v3, v17

    :goto_4f3
    if-eq v9, v11, :cond_4fe

    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_50d

    :cond_4fe
    if-ne v11, v14, :cond_50d

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_50b

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_50d

    :cond_50b
    move-object/from16 v3, v17

    :cond_50d
    :goto_50d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    if-eqz v8, :cond_524

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_52e

    :cond_524
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_531

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    :goto_52e
    move-object/from16 v22, v8

    goto :goto_535

    :cond_531
    move-object/from16 v22, v8

    move-object/from16 v7, v17

    :goto_535
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v8, v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v6, :cond_542

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v6

    add-int/2addr v4, v6

    :cond_542
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v6

    add-int/2addr v6, v1

    if-eqz v2, :cond_58f

    if-eqz v3, :cond_58f

    if-eqz v7, :cond_58f

    if-eqz v8, :cond_58f

    if-ne v11, v14, :cond_55e

    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    move v6, v1

    :cond_55e
    if-ne v11, v12, :cond_56b

    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    move/from16 v24, v1

    goto :goto_56d

    :cond_56b
    move/from16 v24, v4

    :goto_56d
    if-eqz v20, :cond_572

    const/16 v25, 0x8

    goto :goto_574

    :cond_572
    const/16 v25, 0x5

    :goto_574
    const/high16 v5, 0x3f000000  # 0.5f

    move-object/from16 v1, p1

    const/4 v4, 0x5

    move/from16 v26, v15

    move v15, v4

    move v4, v6

    move-object v6, v7

    const/16 v19, 0x8

    move-object v7, v8

    move/from16 v15, v19

    move-object/from16 v19, v22

    move/from16 v8, v24

    move-object/from16 v22, v9

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_597

    :cond_58f
    move/from16 v26, v15

    move-object/from16 v19, v22

    const/16 v15, 0x8

    move-object/from16 v22, v9

    :goto_597
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v1, v15, :cond_59d

    move-object v9, v11

    goto :goto_59f

    :cond_59d
    move-object/from16 v9, v22

    :goto_59f
    move-object/from16 v11, v19

    move/from16 v15, v26

    goto/16 :goto_4c0

    :cond_5a5
    move/from16 v26, v15

    const/16 v15, 0x8

    if-eqz v21, :cond_6b9

    if-eqz v14, :cond_6b9

    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    if-lez v2, :cond_5b8

    iget v1, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    if-ne v1, v2, :cond_5b8

    const/16 v20, 0x1

    goto :goto_5ba

    :cond_5b8
    const/16 v20, 0x0

    :goto_5ba
    move-object v9, v14

    move-object v11, v9

    :goto_5bc
    if-eqz v11, :cond_667

    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    :goto_5c2
    if-eqz v1, :cond_5cd

    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-ne v2, v15, :cond_5cd

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    goto :goto_5c2

    :cond_5cd
    if-eq v11, v14, :cond_654

    if-eq v11, v12, :cond_654

    if-eqz v1, :cond_654

    if-ne v1, v12, :cond_5d8

    move-object/from16 v8, v17

    goto :goto_5d9

    :cond_5d8
    move-object v8, v1

    :goto_5d9
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v5

    if-eqz v8, :cond_605

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v15, :cond_602

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_616

    :cond_602
    move-object/from16 v15, v17

    goto :goto_616

    :cond_605
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    if-eqz v6, :cond_60e

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_610

    :cond_60e
    move-object/from16 v7, v17

    :goto_610
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v15, v15, v4

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    :goto_616
    if-eqz v6, :cond_620

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v22, v6

    goto :goto_622

    :cond_620
    move/from16 v22, v5

    :goto_622
    iget-object v5, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v20, :cond_630

    const/16 v24, 0x8

    goto :goto_632

    :cond_630
    const/16 v24, 0x4

    :goto_632
    if-eqz v2, :cond_64d

    if-eqz v3, :cond_64d

    if-eqz v7, :cond_64d

    if-eqz v15, :cond_64d

    const/high16 v5, 0x3f000000  # 0.5f

    move-object/from16 v1, p1

    const/16 v25, 0x4

    move-object v6, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v22

    move-object/from16 v22, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_652

    :cond_64d
    move-object v15, v8

    move-object/from16 v22, v9

    const/16 v25, 0x4

    :goto_652
    move-object v8, v15

    goto :goto_659

    :cond_654
    move-object/from16 v22, v9

    const/16 v25, 0x4

    move-object v8, v1

    :goto_659
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_661

    move-object v9, v11

    goto :goto_663

    :cond_661
    move-object/from16 v9, v22

    :goto_663
    move v15, v2

    move-object v11, v8

    goto/16 :goto_5bc

    :cond_667
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_6a8

    if-eq v14, v12, :cond_68e

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v0, v1, v3}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_6a8

    :cond_68e
    if-eqz v15, :cond_6a8

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    const/high16 v5, 0x3f000000  # 0.5f

    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_6a8
    :goto_6a8
    if-eqz v15, :cond_6b9

    if-eq v14, v12, :cond_6b9

    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v10, v0, v1, v2, v3}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_6b9
    :goto_6b9
    if-nez v23, :cond_6bd

    if-eqz v21, :cond_717

    :cond_6bd
    if-eqz v14, :cond_717

    if-eq v14, v12, :cond_717

    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v0, v16

    if-nez v12, :cond_6c9

    move-object v8, v14

    goto :goto_6ca

    :cond_6c9
    move-object v8, v12

    :goto_6ca
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_6d7

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_6d9

    :cond_6d7
    move-object/from16 v4, v17

    :goto_6d9
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_6e0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_6e2

    :cond_6e0
    move-object/from16 v5, v17

    :goto_6e2
    if-eq v13, v8, :cond_6f3

    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_6f0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v17, v5

    :cond_6f0
    move-object/from16 v6, v17

    goto :goto_6f4

    :cond_6f3
    move-object v6, v5

    :goto_6f4
    if-ne v14, v8, :cond_6f8

    aget-object v2, v0, v3

    :cond_6f8
    if-eqz v4, :cond_717

    if-eqz v6, :cond_717

    const/high16 v5, 0x3f000000  # 0.5f

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v0

    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v7, v3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v8

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_717
    :goto_717
    add-int/lit8 v9, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v12, v18

    move-object/from16 v15, v28

    move/from16 v14, v30

    goto/16 :goto_1b

    :cond_725
    return-void
.end method
