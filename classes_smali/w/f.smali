.class public final Lw/f;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field public static a:Lw/b$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lw/b$a;

    .line 3
    invoke-direct {v0}, Lw/b$a;-><init>()V

    .line 6
    sput-object v0, Lw/f;->a:Lw/b$a;

    .line 8
    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 6
    const/4 v3, 0x1

    .line 7
    aget-object v0, v0, v3

    .line 9
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 11
    if-eqz v4, :cond_f

    .line 13
    check-cast v4, Landroidx/constraintlayout/core/widgets/d;

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v4, 0x0

    .line 17
    :goto_10
    if-eqz v4, :cond_16

    .line 19
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 21
    aget-object v5, v5, v1

    .line 23
    :cond_16
    if-eqz v4, :cond_1c

    .line 25
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    aget-object v4, v4, v3

    .line 29
    :cond_1c
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eq v2, v4, :cond_52

    .line 34
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_52

    .line 40
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    if-eq v2, v6, :cond_52

    .line 44
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    if-ne v2, v6, :cond_3f

    .line 48
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 50
    if-nez v7, :cond_3f

    .line 52
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 54
    cmpl-float v7, v7, v5

    .line 56
    if-nez v7, :cond_3f

    .line 58
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_52

    .line 64
    :cond_3f
    if-ne v2, v6, :cond_50

    .line 66
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 68
    if-ne v2, v3, :cond_50

    .line 70
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 73
    move-result v2

    .line 74
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(II)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_50

    .line 80
    goto :goto_52

    .line 81
    :cond_50
    move v2, v1

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    :goto_52
    move v2, v3

    .line 84
    :goto_53
    if-eq v0, v4, :cond_86

    .line 86
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_86

    .line 92
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 94
    if-eq v0, v4, :cond_86

    .line 96
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 98
    if-ne v0, v4, :cond_73

    .line 100
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 102
    if-nez v6, :cond_73

    .line 104
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 106
    cmpl-float v6, v6, v5

    .line 108
    if-nez v6, :cond_73

    .line 110
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_86

    .line 116
    :cond_73
    if-ne v0, v4, :cond_84

    .line 118
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 120
    if-ne v0, v3, :cond_84

    .line 122
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 125
    move-result v0

    .line 126
    invoke-virtual {p0, v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(II)Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_84

    .line 132
    goto :goto_86

    .line 133
    :cond_84
    move v0, v1

    .line 134
    goto :goto_87

    .line 135
    :cond_86
    :goto_86
    move v0, v3

    .line 136
    :goto_87
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 138
    cmpl-float p0, p0, v5

    .line 140
    if-lez p0, :cond_92

    .line 142
    if-nez v2, :cond_91

    .line 144
    if-eqz v0, :cond_92

    .line 146
    :cond_91
    return v3

    .line 147
    :cond_92
    if-eqz v2, :cond_97

    .line 149
    if-eqz v0, :cond_97

    .line 151
    move v1, v3

    .line 152
    :cond_97
    return v1
.end method

.method public static b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    move/from16 v2, p3

    .line 7
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    .line 9
    if-eqz v3, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/d;

    .line 14
    if-nez v3, :cond_23

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_23

    .line 22
    invoke-static/range {p1 .. p1}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_23

    .line 28
    new-instance v3, Lw/b$a;

    .line 30
    invoke-direct {v3}, Lw/b$a;-><init>()V

    .line 33
    invoke-static {v0, v1, v3}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 36
    :cond_23
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 38
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 41
    move-result-object v3

    .line 42
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 44
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 51
    move-result v5

    .line 52
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 55
    move-result v6

    .line 56
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 58
    const/4 v8, 0x0

    .line 59
    const/16 v9, 0x8

    .line 61
    const/4 v10, 0x0

    .line 62
    if-eqz v7, :cond_10c

    .line 64
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 66
    if-eqz v3, :cond_10c

    .line 68
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v3

    .line 72
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_10c

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 84
    iget-object v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    add-int/lit8 v13, p0, 0x1

    .line 88
    invoke-static {v12}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 91
    move-result v14

    .line 92
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 95
    move-result v15

    .line 96
    if-eqz v15, :cond_6b

    .line 98
    if-eqz v14, :cond_6b

    .line 100
    new-instance v15, Lw/b$a;

    .line 102
    invoke-direct {v15}, Lw/b$a;-><init>()V

    .line 105
    invoke-static {v12, v1, v15}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 108
    :cond_6b
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 110
    if-ne v7, v15, :cond_79

    .line 112
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 114
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 116
    if-eqz v11, :cond_79

    .line 118
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 120
    if-nez v11, :cond_85

    .line 122
    :cond_79
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 124
    if-ne v7, v11, :cond_87

    .line 126
    iget-object v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 128
    if-eqz v11, :cond_87

    .line 130
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 132
    if-eqz v11, :cond_87

    .line 134
    :cond_85
    const/4 v11, 0x1

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move v11, v10

    .line 137
    :goto_88
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 139
    aget-object v15, v15, v10

    .line 141
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    if-ne v15, v10, :cond_c1

    .line 145
    if-eqz v14, :cond_93

    .line 147
    goto :goto_c1

    .line 148
    :cond_93
    if-ne v15, v10, :cond_109

    .line 150
    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 152
    if-ltz v7, :cond_109

    .line 154
    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 156
    if-ltz v7, :cond_109

    .line 158
    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 160
    if-eq v7, v9, :cond_ab

    .line 162
    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 164
    if-nez v7, :cond_109

    .line 166
    iget v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 168
    cmpl-float v7, v7, v8

    .line 170
    if-nez v7, :cond_109

    .line 172
    :cond_ab
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 175
    move-result v7

    .line 176
    if-nez v7, :cond_109

    .line 178
    iget-boolean v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 180
    if-nez v7, :cond_109

    .line 182
    if-eqz v11, :cond_109

    .line 184
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 187
    move-result v7

    .line 188
    if-nez v7, :cond_109

    .line 190
    invoke-static {v13, v0, v1, v12, v2}, Lw/f;->d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 193
    goto :goto_109

    .line 194
    :cond_c1
    :goto_c1
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_c8

    .line 200
    goto :goto_109

    .line 201
    :cond_c8
    iget-object v10, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 203
    if-ne v7, v10, :cond_e3

    .line 205
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 207
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 209
    if-nez v14, :cond_e3

    .line 211
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 214
    move-result v7

    .line 215
    add-int/2addr v7, v5

    .line 216
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 219
    move-result v10

    .line 220
    add-int/2addr v10, v7

    .line 221
    invoke-virtual {v12, v7, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 224
    invoke-static {v13, v12, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 227
    goto :goto_109

    .line 228
    :cond_e3
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 230
    if-ne v7, v14, :cond_fe

    .line 232
    iget-object v7, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 234
    if-nez v7, :cond_fe

    .line 236
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 239
    move-result v7

    .line 240
    sub-int v7, v5, v7

    .line 242
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 245
    move-result v10

    .line 246
    sub-int v10, v7, v10

    .line 248
    invoke-virtual {v12, v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 251
    invoke-static {v13, v12, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 254
    goto :goto_109

    .line 255
    :cond_fe
    if-eqz v11, :cond_109

    .line 257
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 260
    move-result v7

    .line 261
    if-nez v7, :cond_109

    .line 263
    invoke-static {v13, v12, v1, v2}, Lw/f;->c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 266
    :cond_109
    :goto_109
    const/4 v10, 0x0

    .line 267
    goto/16 :goto_47

    .line 269
    :cond_10c
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/e;

    .line 271
    if-eqz v3, :cond_111

    .line 273
    return-void

    .line 274
    :cond_111
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 276
    if-eqz v3, :cond_1e6

    .line 278
    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 280
    if-eqz v4, :cond_1e6

    .line 282
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 285
    move-result-object v3

    .line 286
    :cond_11d
    :goto_11d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_1e6

    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 298
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 300
    const/4 v7, 0x1

    .line 301
    add-int/lit8 v10, p0, 0x1

    .line 303
    invoke-static {v5}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 306
    move-result v7

    .line 307
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 310
    move-result v11

    .line 311
    if-eqz v11, :cond_142

    .line 313
    if-eqz v7, :cond_142

    .line 315
    new-instance v11, Lw/b$a;

    .line 317
    invoke-direct {v11}, Lw/b$a;-><init>()V

    .line 320
    invoke-static {v5, v1, v11}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 323
    :cond_142
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 325
    if-ne v4, v11, :cond_150

    .line 327
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 329
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 331
    if-eqz v12, :cond_150

    .line 333
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 335
    if-nez v12, :cond_15c

    .line 337
    :cond_150
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 339
    if-ne v4, v12, :cond_15e

    .line 341
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 343
    if-eqz v11, :cond_15e

    .line 345
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 347
    if-eqz v11, :cond_15e

    .line 349
    :cond_15c
    const/4 v11, 0x1

    .line 350
    goto :goto_15f

    .line 351
    :cond_15e
    const/4 v11, 0x0

    .line 352
    :goto_15f
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 354
    const/4 v13, 0x0

    .line 355
    aget-object v12, v12, v13

    .line 357
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 359
    if-ne v12, v14, :cond_199

    .line 361
    if-eqz v7, :cond_16b

    .line 363
    goto :goto_199

    .line 364
    :cond_16b
    if-ne v12, v14, :cond_11d

    .line 366
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 368
    if-ltz v4, :cond_11d

    .line 370
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 372
    if-ltz v4, :cond_11d

    .line 374
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 376
    if-eq v4, v9, :cond_183

    .line 378
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 380
    if-nez v4, :cond_11d

    .line 382
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 384
    cmpl-float v4, v4, v8

    .line 386
    if-nez v4, :cond_11d

    .line 388
    :cond_183
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 391
    move-result v4

    .line 392
    if-nez v4, :cond_11d

    .line 394
    iget-boolean v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 396
    if-nez v4, :cond_11d

    .line 398
    if-eqz v11, :cond_11d

    .line 400
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 403
    move-result v4

    .line 404
    if-nez v4, :cond_11d

    .line 406
    invoke-static {v10, v0, v1, v5, v2}, Lw/f;->d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 409
    goto :goto_11d

    .line 410
    :cond_199
    :goto_199
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 413
    move-result v7

    .line 414
    if-eqz v7, :cond_1a1

    .line 416
    goto/16 :goto_11d

    .line 418
    :cond_1a1
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 420
    if-ne v4, v7, :cond_1bd

    .line 422
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 424
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 426
    if-nez v12, :cond_1bd

    .line 428
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 431
    move-result v4

    .line 432
    add-int/2addr v4, v6

    .line 433
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 436
    move-result v7

    .line 437
    add-int/2addr v7, v4

    .line 438
    invoke-virtual {v5, v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 441
    invoke-static {v10, v5, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 444
    goto/16 :goto_11d

    .line 446
    :cond_1bd
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 448
    if-ne v4, v12, :cond_1d9

    .line 450
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 452
    if-nez v4, :cond_1d9

    .line 454
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 457
    move-result v4

    .line 458
    sub-int v4, v6, v4

    .line 460
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 463
    move-result v7

    .line 464
    sub-int v7, v4, v7

    .line 466
    invoke-virtual {v5, v7, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 469
    invoke-static {v10, v5, v1, v2}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 472
    goto/16 :goto_11d

    .line 474
    :cond_1d9
    if-eqz v11, :cond_11d

    .line 476
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 479
    move-result v4

    .line 480
    if-nez v4, :cond_11d

    .line 482
    invoke-static {v10, v5, v1, v2}, Lw/f;->c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 485
    goto/16 :goto_11d

    .line 487
    :cond_1e6
    const/4 v1, 0x1

    .line 488
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    .line 490
    return-void
.end method

.method public static c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V
    .registers 10

    .line 1
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 3
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 10
    move-result v1

    .line 11
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 24
    move-result v3

    .line 25
    add-int/2addr v3, v1

    .line 26
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 31
    move-result v4

    .line 32
    sub-int v4, v2, v4

    .line 34
    const/high16 v5, 0x3f000000  # 0.5f

    .line 36
    if-ne v1, v2, :cond_27

    .line 38
    move v0, v5

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    move v1, v3

    .line 41
    move v2, v4

    .line 42
    :goto_29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 45
    move-result v3

    .line 46
    sub-int v4, v2, v1

    .line 48
    sub-int/2addr v4, v3

    .line 49
    if-le v1, v2, :cond_35

    .line 51
    sub-int v4, v1, v2

    .line 53
    sub-int/2addr v4, v3

    .line 54
    :cond_35
    if-lez v4, :cond_3b

    .line 56
    int-to-float v4, v4

    .line 57
    mul-float/2addr v0, v4

    .line 58
    add-float/2addr v0, v5

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    int-to-float v4, v4

    .line 61
    mul-float/2addr v0, v4

    .line 62
    :goto_3d
    float-to-int v0, v0

    .line 63
    add-int/2addr v0, v1

    .line 64
    add-int v4, v0, v3

    .line 66
    if-le v1, v2, :cond_45

    .line 68
    sub-int v4, v0, v3

    .line 70
    :cond_45
    invoke-virtual {p1, v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 73
    add-int/lit8 p0, p0, 0x1

    .line 75
    invoke-static {p0, p1, p2, p3}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 78
    return-void
.end method

.method public static d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 12

    .line 1
    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 3
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 10
    move-result v1

    .line 11
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 25
    move-result v1

    .line 26
    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 31
    move-result v3

    .line 32
    sub-int/2addr v1, v3

    .line 33
    if-lt v1, v2, :cond_6b

    .line 35
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 38
    move-result v3

    .line 39
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 41
    const/16 v5, 0x8

    .line 43
    const/high16 v6, 0x3f000000  # 0.5f

    .line 45
    if-eq v4, v5, :cond_5b

    .line 47
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 49
    const/4 v5, 0x2

    .line 50
    if-ne v4, v5, :cond_49

    .line 52
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/d;

    .line 54
    if-eqz v3, :cond_3c

    .line 56
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 59
    move-result p1

    .line 60
    goto :goto_42

    .line 61
    :cond_3c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 63
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 66
    move-result p1

    .line 67
    :goto_42
    iget v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 69
    mul-float/2addr v3, v6

    .line 70
    int-to-float p1, p1

    .line 71
    mul-float/2addr v3, p1

    .line 72
    float-to-int v3, v3

    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    if-nez v4, :cond_4d

    .line 76
    sub-int v3, v1, v2

    .line 78
    :cond_4d
    :goto_4d
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 80
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 83
    move-result v3

    .line 84
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 86
    if-lez p1, :cond_5b

    .line 88
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 91
    move-result v3

    .line 92
    :cond_5b
    sub-int/2addr v1, v2

    .line 93
    sub-int/2addr v1, v3

    .line 94
    int-to-float p1, v1

    .line 95
    mul-float/2addr v0, p1

    .line 96
    add-float/2addr v0, v6

    .line 97
    float-to-int p1, v0

    .line 98
    add-int/2addr v2, p1

    .line 99
    add-int/2addr v3, v2

    .line 100
    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 103
    add-int/lit8 p0, p0, 0x1

    .line 105
    invoke-static {p0, p3, p2, p4}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 108
    :cond_6b
    return-void
.end method

.method public static e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V
    .registers 9

    .line 1
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 3
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 10
    move-result v1

    .line 11
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 24
    move-result v3

    .line 25
    add-int/2addr v3, v1

    .line 26
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 31
    move-result v4

    .line 32
    sub-int v4, v2, v4

    .line 34
    const/high16 v5, 0x3f000000  # 0.5f

    .line 36
    if-ne v1, v2, :cond_27

    .line 38
    move v0, v5

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    move v1, v3

    .line 41
    move v2, v4

    .line 42
    :goto_29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 45
    move-result v3

    .line 46
    sub-int v4, v2, v1

    .line 48
    sub-int/2addr v4, v3

    .line 49
    if-le v1, v2, :cond_35

    .line 51
    sub-int v4, v1, v2

    .line 53
    sub-int/2addr v4, v3

    .line 54
    :cond_35
    if-lez v4, :cond_3b

    .line 56
    int-to-float v4, v4

    .line 57
    mul-float/2addr v0, v4

    .line 58
    add-float/2addr v0, v5

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    int-to-float v4, v4

    .line 61
    mul-float/2addr v0, v4

    .line 62
    :goto_3d
    float-to-int v0, v0

    .line 63
    add-int v4, v1, v0

    .line 65
    add-int v5, v4, v3

    .line 67
    if-le v1, v2, :cond_48

    .line 69
    sub-int v4, v1, v0

    .line 71
    sub-int v5, v4, v3

    .line 73
    :cond_48
    invoke-virtual {p1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 76
    add-int/lit8 p0, p0, 0x1

    .line 78
    invoke-static {p0, p1, p2}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 81
    return-void
.end method

.method public static f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 11

    .line 1
    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 3
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 10
    move-result v1

    .line 11
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 25
    move-result v1

    .line 26
    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 31
    move-result v3

    .line 32
    sub-int/2addr v1, v3

    .line 33
    if-lt v1, v2, :cond_6a

    .line 35
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 38
    move-result v3

    .line 39
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 41
    const/16 v5, 0x8

    .line 43
    const/high16 v6, 0x3f000000  # 0.5f

    .line 45
    if-eq v4, v5, :cond_5a

    .line 47
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 49
    const/4 v5, 0x2

    .line 50
    if-ne v4, v5, :cond_48

    .line 52
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/d;

    .line 54
    if-eqz v3, :cond_3c

    .line 56
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 59
    move-result p1

    .line 60
    goto :goto_42

    .line 61
    :cond_3c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 63
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 66
    move-result p1

    .line 67
    :goto_42
    mul-float v3, v0, v6

    .line 69
    int-to-float p1, p1

    .line 70
    mul-float/2addr v3, p1

    .line 71
    float-to-int v3, v3

    .line 72
    goto :goto_4c

    .line 73
    :cond_48
    if-nez v4, :cond_4c

    .line 75
    sub-int v3, v1, v2

    .line 77
    :cond_4c
    :goto_4c
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 79
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result v3

    .line 83
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 85
    if-lez p1, :cond_5a

    .line 87
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result v3

    .line 91
    :cond_5a
    sub-int/2addr v1, v2

    .line 92
    sub-int/2addr v1, v3

    .line 93
    int-to-float p1, v1

    .line 94
    mul-float/2addr v0, p1

    .line 95
    add-float/2addr v0, v6

    .line 96
    float-to-int p1, v0

    .line 97
    add-int/2addr v2, p1

    .line 98
    add-int/2addr v3, v2

    .line 99
    invoke-virtual {p3, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 102
    add-int/lit8 p0, p0, 0x1

    .line 104
    invoke-static {p0, p3, p2}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 107
    :cond_6a
    return-void
.end method

.method public static g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V
    .registers 19

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    .line 7
    if-eqz v2, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/d;

    .line 12
    if-nez v2, :cond_21

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 20
    invoke-static/range {p1 .. p1}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_21

    .line 26
    new-instance v2, Lw/b$a;

    .line 28
    invoke-direct {v2}, Lw/b$a;-><init>()V

    .line 31
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 34
    :cond_21
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 36
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 39
    move-result-object v2

    .line 40
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 42
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 49
    move-result v5

    .line 50
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 53
    move-result v6

    .line 54
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 56
    const/4 v8, 0x0

    .line 57
    const/16 v9, 0x8

    .line 59
    const/4 v10, 0x1

    .line 60
    if-eqz v7, :cond_10c

    .line 62
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 64
    if-eqz v2, :cond_10c

    .line 66
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v2

    .line 70
    :cond_45
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_10c

    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 82
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    add-int/lit8 v12, p0, 0x1

    .line 86
    invoke-static {v11}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 89
    move-result v13

    .line 90
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 93
    move-result v14

    .line 94
    if-eqz v14, :cond_69

    .line 96
    if-eqz v13, :cond_69

    .line 98
    new-instance v14, Lw/b$a;

    .line 100
    invoke-direct {v14}, Lw/b$a;-><init>()V

    .line 103
    invoke-static {v11, v1, v14}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 106
    :cond_69
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 108
    if-ne v7, v14, :cond_77

    .line 110
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 112
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 114
    if-eqz v15, :cond_77

    .line 116
    iget-boolean v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 118
    if-nez v15, :cond_83

    .line 120
    :cond_77
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 122
    if-ne v7, v15, :cond_85

    .line 124
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 126
    if-eqz v14, :cond_85

    .line 128
    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 130
    if-eqz v14, :cond_85

    .line 132
    :cond_83
    move v14, v10

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    const/4 v14, 0x0

    .line 135
    :goto_86
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 137
    aget-object v15, v15, v10

    .line 139
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 141
    if-ne v15, v3, :cond_bf

    .line 143
    if-eqz v13, :cond_91

    .line 145
    goto :goto_bf

    .line 146
    :cond_91
    if-ne v15, v3, :cond_45

    .line 148
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 150
    if-ltz v3, :cond_45

    .line 152
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 154
    if-ltz v3, :cond_45

    .line 156
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 158
    if-eq v3, v9, :cond_a9

    .line 160
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 162
    if-nez v3, :cond_45

    .line 164
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 166
    cmpl-float v3, v3, v8

    .line 168
    if-nez v3, :cond_45

    .line 170
    :cond_a9
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_45

    .line 176
    iget-boolean v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 178
    if-nez v3, :cond_45

    .line 180
    if-eqz v14, :cond_45

    .line 182
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_45

    .line 188
    invoke-static {v12, v0, v1, v11}, Lw/f;->f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 191
    goto :goto_45

    .line 192
    :cond_bf
    :goto_bf
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_c7

    .line 198
    goto/16 :goto_45

    .line 200
    :cond_c7
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 202
    if-ne v7, v3, :cond_e3

    .line 204
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 206
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 208
    if-nez v13, :cond_e3

    .line 210
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 213
    move-result v3

    .line 214
    add-int/2addr v3, v5

    .line 215
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 218
    move-result v7

    .line 219
    add-int/2addr v7, v3

    .line 220
    invoke-virtual {v11, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 223
    invoke-static {v12, v11, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 226
    goto/16 :goto_45

    .line 228
    :cond_e3
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 230
    if-ne v7, v13, :cond_ff

    .line 232
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 234
    if-nez v3, :cond_ff

    .line 236
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 239
    move-result v3

    .line 240
    sub-int v3, v5, v3

    .line 242
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 245
    move-result v7

    .line 246
    sub-int v7, v3, v7

    .line 248
    invoke-virtual {v11, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 251
    invoke-static {v12, v11, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 254
    goto/16 :goto_45

    .line 256
    :cond_ff
    if-eqz v14, :cond_45

    .line 258
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 261
    move-result v3

    .line 262
    if-nez v3, :cond_45

    .line 264
    invoke-static {v12, v11, v1}, Lw/f;->e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 267
    goto/16 :goto_45

    .line 269
    :cond_10c
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/e;

    .line 271
    if-eqz v2, :cond_111

    .line 273
    return-void

    .line 274
    :cond_111
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 276
    if-eqz v2, :cond_1e4

    .line 278
    iget-boolean v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 280
    if-eqz v3, :cond_1e4

    .line 282
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 285
    move-result-object v2

    .line 286
    :cond_11d
    :goto_11d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_1e4

    .line 292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    move-result-object v3

    .line 296
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 298
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 300
    add-int/lit8 v5, p0, 0x1

    .line 302
    invoke-static {v4}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 305
    move-result v7

    .line 306
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 309
    move-result v11

    .line 310
    if-eqz v11, :cond_141

    .line 312
    if-eqz v7, :cond_141

    .line 314
    new-instance v11, Lw/b$a;

    .line 316
    invoke-direct {v11}, Lw/b$a;-><init>()V

    .line 319
    invoke-static {v4, v1, v11}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 322
    :cond_141
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 324
    if-ne v3, v11, :cond_14f

    .line 326
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 328
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 330
    if-eqz v12, :cond_14f

    .line 332
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 334
    if-nez v12, :cond_15b

    .line 336
    :cond_14f
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 338
    if-ne v3, v12, :cond_15d

    .line 340
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 342
    if-eqz v11, :cond_15d

    .line 344
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 346
    if-eqz v11, :cond_15d

    .line 348
    :cond_15b
    move v11, v10

    .line 349
    goto :goto_15e

    .line 350
    :cond_15d
    const/4 v11, 0x0

    .line 351
    :goto_15e
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 353
    aget-object v12, v12, v10

    .line 355
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 357
    if-ne v12, v13, :cond_197

    .line 359
    if-eqz v7, :cond_169

    .line 361
    goto :goto_197

    .line 362
    :cond_169
    if-ne v12, v13, :cond_11d

    .line 364
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 366
    if-ltz v3, :cond_11d

    .line 368
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 370
    if-ltz v3, :cond_11d

    .line 372
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 374
    if-eq v3, v9, :cond_181

    .line 376
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 378
    if-nez v3, :cond_11d

    .line 380
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 382
    cmpl-float v3, v3, v8

    .line 384
    if-nez v3, :cond_11d

    .line 386
    :cond_181
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 389
    move-result v3

    .line 390
    if-nez v3, :cond_11d

    .line 392
    iget-boolean v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 394
    if-nez v3, :cond_11d

    .line 396
    if-eqz v11, :cond_11d

    .line 398
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 401
    move-result v3

    .line 402
    if-nez v3, :cond_11d

    .line 404
    invoke-static {v5, v0, v1, v4}, Lw/f;->f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 407
    goto :goto_11d

    .line 408
    :cond_197
    :goto_197
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 411
    move-result v7

    .line 412
    if-eqz v7, :cond_19f

    .line 414
    goto/16 :goto_11d

    .line 416
    :cond_19f
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    if-ne v3, v7, :cond_1bb

    .line 420
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 422
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 424
    if-nez v12, :cond_1bb

    .line 426
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 429
    move-result v3

    .line 430
    add-int/2addr v3, v6

    .line 431
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 434
    move-result v7

    .line 435
    add-int/2addr v7, v3

    .line 436
    invoke-virtual {v4, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 439
    invoke-static {v5, v4, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 442
    goto/16 :goto_11d

    .line 444
    :cond_1bb
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 446
    if-ne v3, v12, :cond_1d7

    .line 448
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 450
    if-nez v3, :cond_1d7

    .line 452
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 455
    move-result v3

    .line 456
    sub-int v3, v6, v3

    .line 458
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 461
    move-result v7

    .line 462
    sub-int v7, v3, v7

    .line 464
    invoke-virtual {v4, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 467
    invoke-static {v5, v4, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 470
    goto/16 :goto_11d

    .line 472
    :cond_1d7
    if-eqz v11, :cond_11d

    .line 474
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 477
    move-result v3

    .line 478
    if-nez v3, :cond_11d

    .line 480
    invoke-static {v5, v4, v1}, Lw/f;->e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 483
    goto/16 :goto_11d

    .line 485
    :cond_1e4
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 487
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 490
    move-result-object v2

    .line 491
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 493
    if-eqz v3, :cond_25d

    .line 495
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 497
    if-eqz v3, :cond_25d

    .line 499
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 502
    move-result v3

    .line 503
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 505
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 508
    move-result-object v2

    .line 509
    :cond_1fc
    :goto_1fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 512
    move-result v4

    .line 513
    if-eqz v4, :cond_25d

    .line 515
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 518
    move-result-object v4

    .line 519
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 521
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 523
    add-int/lit8 v6, p0, 0x1

    .line 525
    invoke-static {v5}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 528
    move-result v7

    .line 529
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 532
    move-result v8

    .line 533
    if-eqz v8, :cond_220

    .line 535
    if-eqz v7, :cond_220

    .line 537
    new-instance v8, Lw/b$a;

    .line 539
    invoke-direct {v8}, Lw/b$a;-><init>()V

    .line 542
    invoke-static {v5, v1, v8}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 545
    :cond_220
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 547
    aget-object v8, v8, v10

    .line 549
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 551
    if-ne v8, v9, :cond_22a

    .line 553
    if-eqz v7, :cond_1fc

    .line 555
    :cond_22a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 558
    move-result v7

    .line 559
    if-eqz v7, :cond_231

    .line 561
    goto :goto_1fc

    .line 562
    :cond_231
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 564
    if-ne v4, v7, :cond_1fc

    .line 566
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 569
    move-result v4

    .line 570
    add-int/2addr v4, v3

    .line 571
    iget-boolean v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 573
    if-nez v7, :cond_23f

    .line 575
    goto :goto_259

    .line 576
    :cond_23f
    iget v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 578
    sub-int v7, v4, v7

    .line 580
    iget v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 582
    add-int/2addr v8, v7

    .line 583
    iput v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 585
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 587
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 590
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 592
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 595
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 597
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 600
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 602
    :goto_259
    invoke-static {v6, v5, v1}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 605
    goto :goto_1fc

    .line 606
    :cond_25d
    iput-boolean v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    .line 608
    return-void
.end method
