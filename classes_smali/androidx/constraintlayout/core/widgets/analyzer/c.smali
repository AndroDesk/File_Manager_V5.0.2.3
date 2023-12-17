.class public final Landroidx/constraintlayout/core/widgets/analyzer/c;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "HorizontalWidgetRun.java"


# static fields
.field public static k:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/c;->k:[I

    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 8
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 12
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 14
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 19
    return-void
.end method

.method public static m([IIIIIFI)V
    .registers 9

    .line 1
    sub-int/2addr p2, p1

    .line 2
    sub-int/2addr p4, p3

    .line 3
    const/4 p1, -0x1

    .line 4
    const/4 p3, 0x0

    .line 5
    const/high16 v0, 0x3f000000  # 0.5f

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p6, p1, :cond_20

    .line 10
    if-eqz p6, :cond_17

    .line 12
    if-eq p6, v1, :cond_e

    .line 14
    goto :goto_35

    .line 15
    :cond_e
    int-to-float p1, p2

    .line 16
    mul-float/2addr p1, p5

    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    aput p2, p0, p3

    .line 21
    aput p1, p0, v1

    .line 23
    goto :goto_35

    .line 24
    :cond_17
    int-to-float p1, p4

    .line 25
    mul-float/2addr p1, p5

    .line 26
    add-float/2addr p1, v0

    .line 27
    float-to-int p1, p1

    .line 28
    aput p1, p0, p3

    .line 30
    aput p4, p0, v1

    .line 32
    goto :goto_35

    .line 33
    :cond_20
    int-to-float p1, p4

    .line 34
    mul-float/2addr p1, p5

    .line 35
    add-float/2addr p1, v0

    .line 36
    float-to-int p1, p1

    .line 37
    int-to-float p6, p2

    .line 38
    div-float/2addr p6, p5

    .line 39
    add-float/2addr p6, v0

    .line 40
    float-to-int p5, p6

    .line 41
    if-gt p1, p2, :cond_2f

    .line 43
    aput p1, p0, p3

    .line 45
    aput p4, p0, v1

    .line 47
    goto :goto_35

    .line 48
    :cond_2f
    if-gt p5, p4, :cond_35

    .line 50
    aput p2, p0, p3

    .line 52
    aput p5, p0, v1

    .line 54
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public final a(Lw/d;)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/c$a;->a:[I

    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eq v1, v2, :cond_3f2

    .line 17
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 19
    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 21
    const/high16 v5, 0x3f000000  # 0.5f

    .line 23
    const/4 v6, 0x1

    .line 24
    if-nez v4, :cond_2d6

    .line 26
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 30
    if-ne v4, v7, :cond_2d6

    .line 32
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 36
    const/4 v8, 0x2

    .line 37
    if-eq v7, v8, :cond_2bf

    .line 39
    if-eq v7, v2, :cond_2a

    .line 41
    goto/16 :goto_2d6

    .line 43
    :cond_2a
    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 45
    const/4 v8, -0x1

    .line 46
    if-eqz v7, :cond_62

    .line 48
    if-ne v7, v2, :cond_32

    .line 50
    goto :goto_62

    .line 51
    :cond_32
    iget v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 53
    if-eq v2, v8, :cond_51

    .line 55
    if-eqz v2, :cond_46

    .line 57
    if-eq v2, v6, :cond_3c

    .line 59
    move v2, v3

    .line 60
    goto :goto_5d

    .line 61
    :cond_3c
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 63
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 65
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 67
    int-to-float v2, v2

    .line 68
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 70
    goto :goto_5a

    .line 71
    :cond_46
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 73
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 75
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 77
    int-to-float v2, v2

    .line 78
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 80
    div-float/2addr v2, v4

    .line 81
    goto :goto_5b

    .line 82
    :cond_51
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 84
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 86
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 88
    int-to-float v2, v2

    .line 89
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 91
    :goto_5a
    mul-float/2addr v2, v4

    .line 92
    :goto_5b
    add-float/2addr v2, v5

    .line 93
    float-to-int v2, v2

    .line 94
    :goto_5d
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 97
    goto/16 :goto_2d6

    .line 99
    :cond_62
    :goto_62
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 101
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 103
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 105
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 107
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 109
    if-eqz v7, :cond_70

    .line 111
    move v7, v6

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move v7, v3

    .line 114
    :goto_71
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 116
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 118
    if-eqz v9, :cond_79

    .line 120
    move v9, v6

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move v9, v3

    .line 123
    :goto_7a
    iget-object v10, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 125
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 127
    if-eqz v10, :cond_82

    .line 129
    move v10, v6

    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move v10, v3

    .line 132
    :goto_83
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 134
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 136
    if-eqz v11, :cond_8b

    .line 138
    move v11, v6

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    move v11, v3

    .line 141
    :goto_8c
    iget v15, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 143
    if-eqz v7, :cond_1c7

    .line 145
    if-eqz v9, :cond_1c7

    .line 147
    if-eqz v10, :cond_1c7

    .line 149
    if-eqz v11, :cond_1c7

    .line 151
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 153
    iget-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 155
    if-eqz v7, :cond_f9

    .line 157
    iget-boolean v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 159
    if-eqz v7, :cond_f9

    .line 161
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 163
    iget-boolean v7, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 165
    if-eqz v7, :cond_f8

    .line 167
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 169
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 171
    if-nez v7, :cond_ad

    .line 173
    goto :goto_f8

    .line 174
    :cond_ad
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 182
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 184
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 186
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 188
    add-int v13, v5, v7

    .line 190
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 192
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 200
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 202
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 204
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 206
    sub-int v14, v5, v7

    .line 208
    iget v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 210
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 212
    add-int/2addr v2, v5

    .line 213
    iget v5, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 215
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 217
    sub-int v16, v5, v1

    .line 219
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/c;->k:[I

    .line 221
    move-object v12, v1

    .line 222
    move v7, v15

    .line 223
    move v15, v2

    .line 224
    move/from16 v17, v4

    .line 226
    move/from16 v18, v7

    .line 228
    invoke-static/range {v12 .. v18}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m([IIIIIFI)V

    .line 231
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 233
    aget v3, v1, v3

    .line 235
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 238
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 240
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 242
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 244
    aget v1, v1, v6

    .line 246
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 249
    :cond_f8
    :goto_f8
    return-void

    .line 250
    :cond_f9
    move v7, v15

    .line 251
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 253
    iget-boolean v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 255
    if-eqz v9, :cond_155

    .line 257
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 259
    iget-boolean v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 261
    if-eqz v10, :cond_155

    .line 263
    iget-boolean v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 265
    if-eqz v10, :cond_154

    .line 267
    iget-boolean v10, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 269
    if-nez v10, :cond_10f

    .line 271
    goto :goto_154

    .line 272
    :cond_10f
    iget v10, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 274
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 276
    add-int v13, v10, v8

    .line 278
    iget v8, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 280
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 282
    sub-int v14, v8, v9

    .line 284
    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v8

    .line 290
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 292
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 294
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 296
    add-int v15, v8, v9

    .line 298
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v8

    .line 304
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 306
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 308
    iget v9, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 310
    sub-int v16, v8, v9

    .line 312
    sget-object v8, Landroidx/constraintlayout/core/widgets/analyzer/c;->k:[I

    .line 314
    move-object v12, v8

    .line 315
    move/from16 v17, v4

    .line 317
    move/from16 v18, v7

    .line 319
    invoke-static/range {v12 .. v18}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m([IIIIIFI)V

    .line 322
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 324
    aget v10, v8, v3

    .line 326
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 329
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 331
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 333
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 335
    aget v8, v8, v6

    .line 337
    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 340
    goto :goto_155

    .line 341
    :cond_154
    :goto_154
    return-void

    .line 342
    :cond_155
    :goto_155
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 344
    iget-boolean v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 346
    if-eqz v9, :cond_1c6

    .line 348
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 350
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 352
    if-eqz v9, :cond_1c6

    .line 354
    iget-boolean v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 356
    if-eqz v9, :cond_1c6

    .line 358
    iget-boolean v9, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 360
    if-nez v9, :cond_16a

    .line 362
    goto :goto_1c6

    .line 363
    :cond_16a
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    move-result-object v8

    .line 369
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 371
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 373
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 375
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 377
    add-int v13, v8, v9

    .line 379
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 381
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 383
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    move-result-object v8

    .line 387
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 389
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 391
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 393
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 395
    sub-int v14, v8, v9

    .line 397
    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 399
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    move-result-object v8

    .line 403
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 405
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 407
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 409
    add-int v15, v8, v2

    .line 411
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 413
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 416
    move-result-object v2

    .line 417
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 419
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 421
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 423
    sub-int v16, v2, v1

    .line 425
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/c;->k:[I

    .line 427
    move-object v12, v1

    .line 428
    move/from16 v17, v4

    .line 430
    move/from16 v18, v7

    .line 432
    invoke-static/range {v12 .. v18}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m([IIIIIFI)V

    .line 435
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 437
    aget v4, v1, v3

    .line 439
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 442
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 444
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 446
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 448
    aget v1, v1, v6

    .line 450
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 453
    goto/16 :goto_2d6

    .line 455
    :cond_1c6
    :goto_1c6
    return-void

    .line 456
    :cond_1c7
    move v12, v15

    .line 457
    if-eqz v7, :cond_24a

    .line 459
    if-eqz v10, :cond_24a

    .line 461
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 463
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 465
    if-eqz v2, :cond_249

    .line 467
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 469
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 471
    if-nez v2, :cond_1d9

    .line 473
    goto :goto_249

    .line 474
    :cond_1d9
    iget v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 476
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 478
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    move-result-object v1

    .line 482
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 484
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 486
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 488
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 490
    add-int/2addr v1, v4

    .line 491
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 493
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 495
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    move-result-object v4

    .line 499
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 501
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 503
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 505
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 507
    sub-int/2addr v4, v7

    .line 508
    if-eq v12, v8, :cond_226

    .line 510
    if-eqz v12, :cond_226

    .line 512
    if-eq v12, v6, :cond_203

    .line 514
    goto/16 :goto_2d6

    .line 516
    :cond_203
    sub-int/2addr v4, v1

    .line 517
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 520
    move-result v1

    .line 521
    int-to-float v4, v1

    .line 522
    div-float/2addr v4, v2

    .line 523
    add-float/2addr v4, v5

    .line 524
    float-to-int v4, v4

    .line 525
    invoke-virtual {v0, v4, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 528
    move-result v7

    .line 529
    if-eq v4, v7, :cond_216

    .line 531
    int-to-float v1, v7

    .line 532
    mul-float/2addr v1, v2

    .line 533
    add-float/2addr v1, v5

    .line 534
    float-to-int v1, v1

    .line 535
    :cond_216
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 537
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 540
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 542
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 544
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 546
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 549
    goto/16 :goto_2d6

    .line 551
    :cond_226
    sub-int/2addr v4, v1

    .line 552
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 555
    move-result v1

    .line 556
    int-to-float v4, v1

    .line 557
    mul-float/2addr v4, v2

    .line 558
    add-float/2addr v4, v5

    .line 559
    float-to-int v4, v4

    .line 560
    invoke-virtual {v0, v4, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 563
    move-result v7

    .line 564
    if-eq v4, v7, :cond_239

    .line 566
    int-to-float v1, v7

    .line 567
    div-float/2addr v1, v2

    .line 568
    add-float/2addr v1, v5

    .line 569
    float-to-int v1, v1

    .line 570
    :cond_239
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 572
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 575
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 577
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 579
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 581
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 584
    goto/16 :goto_2d6

    .line 586
    :cond_249
    :goto_249
    return-void

    .line 587
    :cond_24a
    if-eqz v9, :cond_2d6

    .line 589
    if-eqz v11, :cond_2d6

    .line 591
    iget-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 593
    if-eqz v7, :cond_2be

    .line 595
    iget-boolean v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 597
    if-nez v7, :cond_257

    .line 599
    goto :goto_2be

    .line 600
    :cond_257
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 602
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 604
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 607
    move-result-object v7

    .line 608
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 610
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 612
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 614
    add-int/2addr v7, v2

    .line 615
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 617
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 620
    move-result-object v2

    .line 621
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 623
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 625
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 627
    sub-int/2addr v2, v1

    .line 628
    if-eq v12, v8, :cond_29c

    .line 630
    if-eqz v12, :cond_27a

    .line 632
    if-eq v12, v6, :cond_29c

    .line 634
    goto :goto_2d6

    .line 635
    :cond_27a
    sub-int/2addr v2, v7

    .line 636
    invoke-virtual {v0, v2, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 639
    move-result v1

    .line 640
    int-to-float v2, v1

    .line 641
    mul-float/2addr v2, v4

    .line 642
    add-float/2addr v2, v5

    .line 643
    float-to-int v2, v2

    .line 644
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 647
    move-result v7

    .line 648
    if-eq v2, v7, :cond_28d

    .line 650
    int-to-float v1, v7

    .line 651
    div-float/2addr v1, v4

    .line 652
    add-float/2addr v1, v5

    .line 653
    float-to-int v1, v1

    .line 654
    :cond_28d
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 656
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 659
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 661
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 663
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 665
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 668
    goto :goto_2d6

    .line 669
    :cond_29c
    sub-int/2addr v2, v7

    .line 670
    invoke-virtual {v0, v2, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 673
    move-result v1

    .line 674
    int-to-float v2, v1

    .line 675
    div-float/2addr v2, v4

    .line 676
    add-float/2addr v2, v5

    .line 677
    float-to-int v2, v2

    .line 678
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 681
    move-result v7

    .line 682
    if-eq v2, v7, :cond_2af

    .line 684
    int-to-float v1, v7

    .line 685
    mul-float/2addr v1, v4

    .line 686
    add-float/2addr v1, v5

    .line 687
    float-to-int v1, v1

    .line 688
    :cond_2af
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 690
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 693
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 695
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 697
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 699
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 702
    goto :goto_2d6

    .line 703
    :cond_2be
    :goto_2be
    return-void

    .line 704
    :cond_2bf
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 706
    if-eqz v2, :cond_2d6

    .line 708
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 710
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 712
    iget-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 714
    if-eqz v7, :cond_2d6

    .line 716
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 718
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 720
    int-to-float v2, v2

    .line 721
    mul-float/2addr v2, v4

    .line 722
    add-float/2addr v2, v5

    .line 723
    float-to-int v2, v2

    .line 724
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 727
    :cond_2d6
    :goto_2d6
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 729
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 731
    if-eqz v2, :cond_3f1

    .line 733
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 735
    iget-boolean v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 737
    if-nez v4, :cond_2e4

    .line 739
    goto/16 :goto_3f1

    .line 741
    :cond_2e4
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 743
    if-eqz v1, :cond_2f3

    .line 745
    iget-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 747
    if-eqz v1, :cond_2f3

    .line 749
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 751
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 753
    if-eqz v1, :cond_2f3

    .line 755
    return-void

    .line 756
    :cond_2f3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 758
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 760
    if-nez v1, :cond_33d

    .line 762
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 764
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 766
    if-ne v1, v2, :cond_33d

    .line 768
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 770
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 772
    if-nez v2, :cond_33d

    .line 774
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 777
    move-result v1

    .line 778
    if-nez v1, :cond_33d

    .line 780
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 782
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 784
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 787
    move-result-object v1

    .line 788
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 790
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 792
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 794
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 797
    move-result-object v2

    .line 798
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 800
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 802
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 804
    iget v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 806
    add-int/2addr v1, v4

    .line 807
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 809
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 811
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 813
    add-int/2addr v2, v4

    .line 814
    sub-int v4, v2, v1

    .line 816
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 819
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 821
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 824
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 826
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 829
    return-void

    .line 830
    :cond_33d
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 832
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 834
    if-nez v1, :cond_3a1

    .line 836
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 838
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 840
    if-ne v1, v2, :cond_3a1

    .line 842
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 844
    if-ne v1, v6, :cond_3a1

    .line 846
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 848
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 850
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 853
    move-result v1

    .line 854
    if-lez v1, :cond_3a1

    .line 856
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 858
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 860
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 863
    move-result v1

    .line 864
    if-lez v1, :cond_3a1

    .line 866
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 868
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 870
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 873
    move-result-object v1

    .line 874
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 876
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 878
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 880
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 883
    move-result-object v2

    .line 884
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 886
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 888
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 890
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 892
    add-int/2addr v1, v4

    .line 893
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 895
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 897
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 899
    add-int/2addr v2, v4

    .line 900
    sub-int/2addr v2, v1

    .line 901
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 903
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 905
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 908
    move-result v1

    .line 909
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 911
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 913
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 915
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 918
    move-result v1

    .line 919
    if-lez v4, :cond_39c

    .line 921
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 924
    move-result v1

    .line 925
    :cond_39c
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 927
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 930
    :cond_3a1
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 932
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 934
    if-nez v1, :cond_3a8

    .line 936
    return-void

    .line 937
    :cond_3a8
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 939
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 941
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 944
    move-result-object v1

    .line 945
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 947
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 949
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 951
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 954
    move-result-object v2

    .line 955
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 957
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 959
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 961
    iget v6, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 963
    add-int/2addr v6, v3

    .line 964
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 966
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 968
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 970
    add-int/2addr v8, v7

    .line 971
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 973
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 975
    if-ne v1, v2, :cond_3d2

    .line 977
    move v9, v5

    .line 978
    goto :goto_3d4

    .line 979
    :cond_3d2
    move v3, v6

    .line 980
    move v7, v8

    .line 981
    :goto_3d4
    sub-int/2addr v7, v3

    .line 982
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 984
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 986
    sub-int/2addr v7, v1

    .line 987
    int-to-float v1, v3

    .line 988
    add-float/2addr v1, v5

    .line 989
    int-to-float v2, v7

    .line 990
    mul-float/2addr v2, v9

    .line 991
    add-float/2addr v2, v1

    .line 992
    float-to-int v1, v2

    .line 993
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 996
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 998
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1000
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1002
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1004
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1006
    add-int/2addr v2, v3

    .line 1007
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 1010
    :cond_3f1
    :goto_3f1
    return-void

    .line 1011
    :cond_3f2
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1013
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1015
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1017
    invoke-virtual {v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->l(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1020
    return-void
.end method

.method public final d()V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 5
    if-eqz v1, :cond_f

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 18
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_7f

    .line 23
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 25
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    aget-object v3, v3, v2

    .line 29
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 33
    if-eq v3, v4, :cond_b7

    .line 35
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    if-ne v3, v4, :cond_73

    .line 39
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 41
    if-eqz v5, :cond_73

    .line 43
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    aget-object v6, v6, v2

    .line 47
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 49
    if-eq v6, v7, :cond_34

    .line 51
    if-ne v6, v4, :cond_73

    .line 53
    :cond_34
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 59
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 61
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 64
    move-result v1

    .line 65
    sub-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 70
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 73
    move-result v1

    .line 74
    sub-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 77
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 79
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 81
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 83
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 85
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 88
    move-result v3

    .line 89
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 92
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 94
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 96
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 98
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 100
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 102
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 105
    move-result v3

    .line 106
    neg-int v3, v3

    .line 107
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 110
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 112
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 115
    return-void

    .line 116
    :cond_73
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 118
    if-ne v3, v4, :cond_b7

    .line 120
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 127
    goto :goto_b7

    .line 128
    :cond_7f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 130
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 132
    if-ne v0, v1, :cond_b7

    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 136
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 138
    if-eqz v3, :cond_b7

    .line 140
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 142
    aget-object v4, v4, v2

    .line 144
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    if-eq v4, v5, :cond_95

    .line 148
    if-ne v4, v1, :cond_b7

    .line 150
    :cond_95
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 152
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 154
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 156
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 161
    move-result v0

    .line 162
    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 165
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 167
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 169
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 171
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 173
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 175
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 178
    move-result v2

    .line 179
    neg-int v2, v2

    .line 180
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 183
    return-void

    .line 184
    :cond_b7
    :goto_b7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 186
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 188
    const/4 v3, 0x1

    .line 189
    if-eqz v1, :cond_1b6

    .line 191
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 193
    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 195
    if-eqz v4, :cond_1b6

    .line 197
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 199
    aget-object v4, v0, v2

    .line 201
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 203
    if-eqz v5, :cond_138

    .line 205
    aget-object v6, v0, v3

    .line 207
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 209
    if-eqz v6, :cond_138

    .line 211
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_f7

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 219
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 221
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 223
    aget-object v1, v1, v2

    .line 225
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 228
    move-result v1

    .line 229
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 231
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 233
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 235
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 237
    aget-object v1, v1, v3

    .line 239
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 242
    move-result v1

    .line 243
    neg-int v1, v1

    .line 244
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 246
    goto/16 :goto_3a5

    .line 248
    :cond_f7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 250
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 252
    aget-object v0, v0, v2

    .line 254
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_112

    .line 260
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 262
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 264
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 266
    aget-object v2, v4, v2

    .line 268
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 271
    move-result v2

    .line 272
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 275
    :cond_112
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 277
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 279
    aget-object v0, v0, v3

    .line 281
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_12e

    .line 287
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 289
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 291
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 293
    aget-object v2, v2, v3

    .line 295
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 298
    move-result v2

    .line 299
    neg-int v2, v2

    .line 300
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 303
    :cond_12e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 305
    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 307
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 309
    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 311
    goto/16 :goto_3a5

    .line 313
    :cond_138
    if-eqz v5, :cond_15c

    .line 315
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 318
    move-result-object v0

    .line 319
    if-eqz v0, :cond_3a5

    .line 321
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 323
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 325
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 327
    aget-object v2, v3, v2

    .line 329
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 332
    move-result v2

    .line 333
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 336
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 340
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 342
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 344
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 347
    goto/16 :goto_3a5

    .line 349
    :cond_15c
    aget-object v0, v0, v3

    .line 351
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 353
    if-eqz v2, :cond_186

    .line 355
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 358
    move-result-object v0

    .line 359
    if-eqz v0, :cond_3a5

    .line 361
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 363
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 365
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 367
    aget-object v2, v2, v3

    .line 369
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 372
    move-result v2

    .line 373
    neg-int v2, v2

    .line 374
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 377
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 379
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 381
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 383
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 385
    neg-int v2, v2

    .line 386
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 389
    goto/16 :goto_3a5

    .line 391
    :cond_186
    instance-of v0, v1, Lv/a;

    .line 393
    if-nez v0, :cond_3a5

    .line 395
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 397
    if-eqz v0, :cond_3a5

    .line 399
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 401
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 404
    move-result-object v0

    .line 405
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 407
    if-nez v0, :cond_3a5

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 411
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 413
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 415
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 417
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 419
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 422
    move-result v0

    .line 423
    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 426
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 428
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 430
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 432
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 434
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 437
    goto/16 :goto_3a5

    .line 439
    :cond_1b6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 441
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 443
    if-ne v1, v4, :cond_2e7

    .line 445
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 447
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 449
    const/4 v5, 0x2

    .line 450
    if-eq v4, v5, :cond_2be

    .line 452
    const/4 v5, 0x3

    .line 453
    if-eq v4, v5, :cond_1c8

    .line 455
    goto/16 :goto_2e7

    .line 457
    :cond_1c8
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 459
    if-ne v4, v5, :cond_26d

    .line 461
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 463
    iput-object p0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 465
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 467
    iput-object p0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 469
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 471
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 473
    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 475
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 477
    iput-object p0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 479
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 481
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 484
    move-result v0

    .line 485
    if-eqz v0, :cond_23a

    .line 487
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 489
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 491
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 493
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 495
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 497
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 502
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 504
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 506
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 508
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 510
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 515
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 517
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 519
    iput-object p0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 521
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 523
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 525
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 527
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 532
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 534
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 536
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 538
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 540
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 545
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 547
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 549
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 551
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 553
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 558
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 560
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 562
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 564
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 566
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    goto/16 :goto_2e7

    .line 571
    :cond_23a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 573
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_25e

    .line 579
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 581
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 583
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 585
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 587
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 589
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 594
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 596
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 598
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 600
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 602
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    goto/16 :goto_2e7

    .line 607
    :cond_25e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 609
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 611
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 613
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 615
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 617
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    goto/16 :goto_2e7

    .line 622
    :cond_26d
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 624
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 626
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 628
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 633
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 635
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 640
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 642
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 644
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 646
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 648
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 653
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 655
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 657
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 659
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 661
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 666
    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 668
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 670
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 672
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 677
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 679
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 681
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 686
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 688
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 690
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 695
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 697
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 699
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    goto :goto_2e7

    .line 703
    :cond_2be
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 705
    if-nez v1, :cond_2c3

    .line 707
    goto :goto_2e7

    .line 708
    :cond_2c3
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 710
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 712
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 714
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 719
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 721
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 726
    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 728
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 730
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 732
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 737
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 739
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 741
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_2e7
    :goto_2e7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 746
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 748
    aget-object v4, v1, v2

    .line 750
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 752
    if-eqz v5, :cond_33f

    .line 754
    aget-object v6, v1, v3

    .line 756
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 758
    if-eqz v6, :cond_33f

    .line 760
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 763
    move-result v0

    .line 764
    if-eqz v0, :cond_31c

    .line 766
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 768
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 770
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 772
    aget-object v1, v1, v2

    .line 774
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 777
    move-result v1

    .line 778
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 780
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 782
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 784
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 786
    aget-object v1, v1, v3

    .line 788
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 791
    move-result v1

    .line 792
    neg-int v1, v1

    .line 793
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 795
    goto/16 :goto_3a5

    .line 797
    :cond_31c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 799
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 801
    aget-object v0, v0, v2

    .line 803
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 806
    move-result-object v0

    .line 807
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 809
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 811
    aget-object v1, v1, v3

    .line 813
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 816
    move-result-object v1

    .line 817
    if-eqz v0, :cond_335

    .line 819
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b(Lw/d;)V

    .line 822
    :cond_335
    if-eqz v1, :cond_33a

    .line 824
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b(Lw/d;)V

    .line 827
    :cond_33a
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 829
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 831
    goto :goto_3a5

    .line 832
    :cond_33f
    if-eqz v5, :cond_360

    .line 834
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 837
    move-result-object v0

    .line 838
    if-eqz v0, :cond_3a5

    .line 840
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 842
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 844
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 846
    aget-object v2, v4, v2

    .line 848
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 851
    move-result v2

    .line 852
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 855
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 857
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 859
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 861
    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 864
    goto :goto_3a5

    .line 865
    :cond_360
    aget-object v1, v1, v3

    .line 867
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 869
    if-eqz v2, :cond_387

    .line 871
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 874
    move-result-object v0

    .line 875
    if-eqz v0, :cond_3a5

    .line 877
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 879
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 881
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 883
    aget-object v2, v2, v3

    .line 885
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 888
    move-result v2

    .line 889
    neg-int v2, v2

    .line 890
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 893
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 895
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 897
    const/4 v2, -0x1

    .line 898
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 900
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 903
    goto :goto_3a5

    .line 904
    :cond_387
    instance-of v1, v0, Lv/a;

    .line 906
    if-nez v1, :cond_3a5

    .line 908
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 910
    if-eqz v1, :cond_3a5

    .line 912
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 914
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 916
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 918
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 921
    move-result v0

    .line 922
    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 925
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 927
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 929
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 931
    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 934
    :cond_3a5
    :goto_3a5
    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 5
    if-eqz v1, :cond_c

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 11
    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 13
    :cond_c
    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Lw/i;

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 22
    return-void
.end method

.method public final k()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_10

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 12
    if-nez v0, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_10
    return v2
.end method

.method public final n()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 15
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 18
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 20
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 24
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 26
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "HorizontalRun "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
