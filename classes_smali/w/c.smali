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
.method public constructor <init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 7

    .line 1
    invoke-direct {p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 11
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 13
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 15
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 18
    move-result-object p1

    .line 19
    :goto_12
    if-eqz p1, :cond_1e

    .line 21
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 23
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 26
    move-result-object p2

    .line 27
    move-object v3, p2

    .line 28
    move-object p2, p1

    .line 29
    move-object p1, v3

    .line 30
    goto :goto_12

    .line 31
    :cond_1e
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 33
    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 35
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez v0, :cond_2b

    .line 41
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 43
    goto :goto_31

    .line 44
    :cond_2b
    if-ne v0, v2, :cond_30

    .line 46
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move-object v0, v1

    .line 50
    :goto_31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 55
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    move-result-object p1

    .line 59
    :goto_3a
    if-eqz p1, :cond_55

    .line 61
    iget-object p2, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 63
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 65
    if-nez v0, :cond_45

    .line 67
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 69
    goto :goto_4b

    .line 70
    :cond_45
    if-ne v0, v2, :cond_4a

    .line 72
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move-object v0, v1

    .line 76
    :goto_4b
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 81
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    move-result-object p1

    .line 85
    goto :goto_3a

    .line 86
    :cond_55
    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object p1

    .line 92
    :cond_5b
    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_77

    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 104
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 106
    if-nez v0, :cond_70

    .line 108
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 110
    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Lw/c;

    .line 112
    goto :goto_5b

    .line 113
    :cond_70
    if-ne v0, v2, :cond_5b

    .line 115
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 117
    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Lw/c;

    .line 119
    goto :goto_5b

    .line 120
    :cond_77
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 122
    if-nez p1, :cond_87

    .line 124
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 128
    check-cast p1, Landroidx/constraintlayout/core/widgets/d;

    .line 130
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 132
    if-eqz p1, :cond_87

    .line 134
    move p1, v2

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    const/4 p1, 0x0

    .line 137
    :goto_88
    if-eqz p1, :cond_a3

    .line 139
    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result p1

    .line 145
    if-le p1, v2, :cond_a3

    .line 147
    iget-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 152
    move-result p2

    .line 153
    sub-int/2addr p2, v2

    .line 154
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 160
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 162
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 164
    :cond_a3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 166
    if-nez p1, :cond_ac

    .line 168
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 170
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    .line 172
    goto :goto_b0

    .line 173
    :cond_ac
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 175
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 177
    :goto_b0
    iput p1, p0, Lw/c;->l:I

    .line 179
    return-void
.end method


# virtual methods
.method public final a(Lw/d;)V
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 5
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 7
    if-eqz v2, :cond_3f5

    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 13
    if-nez v3, :cond_10

    .line 15
    goto/16 :goto_3f5

    .line 17
    :cond_10
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/d;

    .line 23
    if-eqz v4, :cond_1d

    .line 25
    check-cast v3, Landroidx/constraintlayout/core/widgets/d;

    .line 27
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v3, 0x0

    .line 31
    :goto_1e
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 33
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 35
    sub-int/2addr v2, v1

    .line 36
    iget-object v1, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v1

    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_2a
    const/4 v6, -0x1

    .line 44
    const/16 v7, 0x8

    .line 46
    if-ge v4, v1, :cond_40

    .line 48
    iget-object v8, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 56
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 60
    if-ne v8, v7, :cond_41

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_2a

    .line 65
    :cond_40
    move v4, v6

    .line 66
    :cond_41
    add-int/lit8 v8, v1, -0x1

    .line 68
    move v9, v8

    .line 69
    :goto_44
    if-ltz v9, :cond_58

    .line 71
    iget-object v10, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v10

    .line 77
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 79
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 81
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 83
    if-ne v10, v7, :cond_57

    .line 85
    add-int/lit8 v9, v9, -0x1

    .line 87
    goto :goto_44

    .line 88
    :cond_57
    move v6, v9

    .line 89
    :cond_58
    const/4 v9, 0x0

    .line 90
    :goto_59
    const/4 v11, 0x2

    .line 91
    if-ge v9, v11, :cond_f8

    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x0

    .line 98
    const/16 v17, 0x0

    .line 100
    :goto_63
    if-ge v13, v1, :cond_ea

    .line 102
    iget-object v5, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 110
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 112
    iget v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 114
    if-ne v10, v7, :cond_75

    .line 116
    goto/16 :goto_e3

    .line 118
    :cond_75
    add-int/lit8 v16, v16, 0x1

    .line 120
    if-lez v13, :cond_80

    .line 122
    if-lt v13, v4, :cond_80

    .line 124
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 126
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 128
    add-int/2addr v14, v10

    .line 129
    :cond_80
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 131
    iget v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 133
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 135
    move/from16 v19, v7

    .line 137
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 139
    if-eq v12, v7, :cond_8e

    .line 141
    const/4 v7, 0x1

    .line 142
    goto :goto_8f

    .line 143
    :cond_8e
    const/4 v7, 0x0

    .line 144
    :goto_8f
    if-eqz v7, :cond_ad

    .line 146
    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 148
    if-nez v10, :cond_9e

    .line 150
    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 152
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 154
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 156
    if-nez v12, :cond_9e

    .line 158
    return-void

    .line 159
    :cond_9e
    const/4 v12, 0x1

    .line 160
    if-ne v10, v12, :cond_aa

    .line 162
    iget-object v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 164
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 166
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 168
    if-nez v10, :cond_aa

    .line 170
    return-void

    .line 171
    :cond_aa
    move/from16 v20, v7

    .line 173
    goto :goto_c4

    .line 174
    :cond_ad
    move/from16 v20, v7

    .line 176
    const/4 v12, 0x1

    .line 177
    iget v7, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 179
    if-ne v7, v12, :cond_bb

    .line 181
    if-nez v9, :cond_bb

    .line 183
    iget v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 185
    add-int/lit8 v15, v15, 0x1

    .line 187
    goto :goto_c1

    .line 188
    :cond_bb
    iget-boolean v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 190
    if-eqz v7, :cond_c4

    .line 192
    move/from16 v7, v19

    .line 194
    :goto_c1
    const/16 v20, 0x1

    .line 196
    goto :goto_c6

    .line 197
    :cond_c4
    :goto_c4
    move/from16 v7, v19

    .line 199
    :goto_c6
    if-nez v20, :cond_d8

    .line 201
    add-int/lit8 v15, v15, 0x1

    .line 203
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 205
    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 207
    aget v7, v7, v10

    .line 209
    const/4 v10, 0x0

    .line 210
    cmpl-float v11, v7, v10

    .line 212
    if-ltz v11, :cond_d9

    .line 214
    add-float v17, v17, v7

    .line 216
    goto :goto_d9

    .line 217
    :cond_d8
    add-int/2addr v14, v7

    .line 218
    :cond_d9
    :goto_d9
    if-ge v13, v8, :cond_e3

    .line 220
    if-ge v13, v6, :cond_e3

    .line 222
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 224
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 226
    neg-int v5, v5

    .line 227
    add-int/2addr v14, v5

    .line 228
    :cond_e3
    :goto_e3
    add-int/lit8 v13, v13, 0x1

    .line 230
    const/16 v7, 0x8

    .line 232
    const/4 v11, 0x2

    .line 233
    goto/16 :goto_63

    .line 235
    :cond_ea
    if-lt v14, v2, :cond_f5

    .line 237
    if-nez v15, :cond_ef

    .line 239
    goto :goto_f5

    .line 240
    :cond_ef
    add-int/lit8 v9, v9, 0x1

    .line 242
    const/16 v7, 0x8

    .line 244
    goto/16 :goto_59

    .line 246
    :cond_f5
    :goto_f5
    move/from16 v5, v16

    .line 248
    goto :goto_fd

    .line 249
    :cond_f8
    const/4 v5, 0x0

    .line 250
    const/4 v14, 0x0

    .line 251
    const/4 v15, 0x0

    .line 252
    const/16 v17, 0x0

    .line 254
    :goto_fd
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 256
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 258
    if-eqz v3, :cond_107

    .line 260
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 262
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 264
    :cond_107
    const/high16 v9, 0x3f000000  # 0.5f

    .line 266
    if-le v14, v2, :cond_11e

    .line 268
    const/high16 v10, 0x40000000  # 2.0f

    .line 270
    if-eqz v3, :cond_117

    .line 272
    sub-int v11, v14, v2

    .line 274
    int-to-float v11, v11

    .line 275
    div-float/2addr v11, v10

    .line 276
    add-float/2addr v11, v9

    .line 277
    float-to-int v10, v11

    .line 278
    add-int/2addr v7, v10

    .line 279
    goto :goto_11e

    .line 280
    :cond_117
    sub-int v11, v14, v2

    .line 282
    int-to-float v11, v11

    .line 283
    div-float/2addr v11, v10

    .line 284
    add-float/2addr v11, v9

    .line 285
    float-to-int v10, v11

    .line 286
    sub-int/2addr v7, v10

    .line 287
    :cond_11e
    :goto_11e
    if-lez v15, :cond_1ff

    .line 289
    sub-int v10, v2, v14

    .line 291
    int-to-float v10, v10

    .line 292
    int-to-float v11, v15

    .line 293
    div-float v11, v10, v11

    .line 295
    add-float/2addr v11, v9

    .line 296
    float-to-int v11, v11

    .line 297
    const/4 v12, 0x0

    .line 298
    const/4 v13, 0x0

    .line 299
    :goto_12a
    if-ge v12, v1, :cond_1b3

    .line 301
    iget-object v9, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    move-result-object v9

    .line 307
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 309
    move/from16 v19, v11

    .line 311
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 313
    move/from16 v20, v14

    .line 315
    iget v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 317
    move/from16 v21, v7

    .line 319
    const/16 v7, 0x8

    .line 321
    if-ne v14, v7, :cond_143

    .line 323
    goto :goto_19b

    .line 324
    :cond_143
    iget-object v7, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 326
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 328
    if-ne v7, v14, :cond_19b

    .line 330
    iget-object v7, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 332
    iget-boolean v14, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 334
    if-nez v14, :cond_19b

    .line 336
    const/4 v14, 0x0

    .line 337
    cmpl-float v18, v17, v14

    .line 339
    if-lez v18, :cond_164

    .line 341
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 343
    move/from16 v22, v3

    .line 345
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 347
    aget v3, v14, v3

    .line 349
    mul-float/2addr v3, v10

    .line 350
    div-float v3, v3, v17

    .line 352
    const/high16 v14, 0x3f000000  # 0.5f

    .line 354
    add-float/2addr v3, v14

    .line 355
    float-to-int v3, v3

    .line 356
    goto :goto_168

    .line 357
    :cond_164
    move/from16 v22, v3

    .line 359
    move/from16 v3, v19

    .line 361
    :goto_168
    iget v14, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 363
    if-nez v14, :cond_171

    .line 365
    iget v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 367
    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 369
    goto :goto_175

    .line 370
    :cond_171
    iget v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 372
    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 374
    :goto_175
    move/from16 v23, v10

    .line 376
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 378
    move/from16 v24, v5

    .line 380
    const/4 v5, 0x1

    .line 381
    if-ne v10, v5, :cond_185

    .line 383
    iget v5, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 385
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 388
    move-result v5

    .line 389
    goto :goto_186

    .line 390
    :cond_185
    move v5, v3

    .line 391
    :goto_186
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    .line 394
    move-result v5

    .line 395
    if-lez v14, :cond_190

    .line 397
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    .line 400
    move-result v5

    .line 401
    :cond_190
    if-eq v5, v3, :cond_195

    .line 403
    add-int/lit8 v13, v13, 0x1

    .line 405
    move v3, v5

    .line 406
    :cond_195
    iget-object v5, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 408
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 411
    goto :goto_1a1

    .line 412
    :cond_19b
    :goto_19b
    move/from16 v22, v3

    .line 414
    move/from16 v24, v5

    .line 416
    move/from16 v23, v10

    .line 418
    :goto_1a1
    add-int/lit8 v12, v12, 0x1

    .line 420
    move/from16 v11, v19

    .line 422
    move/from16 v14, v20

    .line 424
    move/from16 v7, v21

    .line 426
    move/from16 v3, v22

    .line 428
    move/from16 v10, v23

    .line 430
    move/from16 v5, v24

    .line 432
    const/high16 v9, 0x3f000000  # 0.5f

    .line 434
    goto/16 :goto_12a

    .line 436
    :cond_1b3
    move/from16 v22, v3

    .line 438
    move/from16 v24, v5

    .line 440
    move/from16 v21, v7

    .line 442
    move/from16 v20, v14

    .line 444
    if-lez v13, :cond_1f0

    .line 446
    sub-int/2addr v15, v13

    .line 447
    const/4 v3, 0x0

    .line 448
    const/4 v5, 0x0

    .line 449
    :goto_1c0
    if-ge v3, v1, :cond_1ee

    .line 451
    iget-object v7, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 453
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    move-result-object v7

    .line 457
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 459
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 461
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 463
    const/16 v10, 0x8

    .line 465
    if-ne v9, v10, :cond_1d3

    .line 467
    goto :goto_1eb

    .line 468
    :cond_1d3
    if-lez v3, :cond_1dc

    .line 470
    if-lt v3, v4, :cond_1dc

    .line 472
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 474
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 476
    add-int/2addr v5, v9

    .line 477
    :cond_1dc
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 479
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 481
    add-int/2addr v5, v9

    .line 482
    if-ge v3, v8, :cond_1eb

    .line 484
    if-ge v3, v6, :cond_1eb

    .line 486
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 488
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 490
    neg-int v7, v7

    .line 491
    add-int/2addr v5, v7

    .line 492
    :cond_1eb
    :goto_1eb
    add-int/lit8 v3, v3, 0x1

    .line 494
    goto :goto_1c0

    .line 495
    :cond_1ee
    move v14, v5

    .line 496
    goto :goto_1f2

    .line 497
    :cond_1f0
    move/from16 v14, v20

    .line 499
    :goto_1f2
    iget v3, v0, Lw/c;->l:I

    .line 501
    const/4 v5, 0x2

    .line 502
    if-ne v3, v5, :cond_1fd

    .line 504
    if-nez v13, :cond_1fd

    .line 506
    const/4 v3, 0x0

    .line 507
    iput v3, v0, Lw/c;->l:I

    .line 509
    goto :goto_209

    .line 510
    :cond_1fd
    const/4 v3, 0x0

    .line 511
    goto :goto_209

    .line 512
    :cond_1ff
    move/from16 v22, v3

    .line 514
    move/from16 v24, v5

    .line 516
    move/from16 v21, v7

    .line 518
    move/from16 v20, v14

    .line 520
    const/4 v3, 0x0

    .line 521
    const/4 v5, 0x2

    .line 522
    :goto_209
    if-le v14, v2, :cond_20d

    .line 524
    iput v5, v0, Lw/c;->l:I

    .line 526
    :cond_20d
    if-lez v24, :cond_215

    .line 528
    if-nez v15, :cond_215

    .line 530
    if-ne v4, v6, :cond_215

    .line 532
    iput v5, v0, Lw/c;->l:I

    .line 534
    :cond_215
    iget v5, v0, Lw/c;->l:I

    .line 536
    const/4 v7, 0x1

    .line 537
    if-ne v5, v7, :cond_2b7

    .line 539
    move/from16 v9, v24

    .line 541
    if-le v9, v7, :cond_223

    .line 543
    sub-int/2addr v2, v14

    .line 544
    add-int/lit8 v5, v9, -0x1

    .line 546
    div-int/2addr v2, v5

    .line 547
    goto :goto_22a

    .line 548
    :cond_223
    if-ne v9, v7, :cond_229

    .line 550
    sub-int/2addr v2, v14

    .line 551
    const/4 v5, 0x2

    .line 552
    div-int/2addr v2, v5

    .line 553
    goto :goto_22a

    .line 554
    :cond_229
    move v2, v3

    .line 555
    :goto_22a
    if-lez v15, :cond_22d

    .line 557
    move v2, v3

    .line 558
    :cond_22d
    move v5, v3

    .line 559
    move/from16 v7, v21

    .line 561
    :goto_230
    if-ge v5, v1, :cond_3f5

    .line 563
    if-eqz v22, :cond_239

    .line 565
    add-int/lit8 v3, v5, 0x1

    .line 567
    sub-int v3, v1, v3

    .line 569
    goto :goto_23a

    .line 570
    :cond_239
    move v3, v5

    .line 571
    :goto_23a
    iget-object v9, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 573
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    move-result-object v3

    .line 577
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 579
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 581
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 583
    const/16 v10, 0x8

    .line 585
    if-ne v9, v10, :cond_255

    .line 587
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 589
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 592
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 594
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 597
    goto :goto_2b3

    .line 598
    :cond_255
    if-lez v5, :cond_25c

    .line 600
    if-eqz v22, :cond_25b

    .line 602
    sub-int/2addr v7, v2

    .line 603
    goto :goto_25c

    .line 604
    :cond_25b
    add-int/2addr v7, v2

    .line 605
    :cond_25c
    :goto_25c
    if-lez v5, :cond_26d

    .line 607
    if-lt v5, v4, :cond_26d

    .line 609
    if-eqz v22, :cond_268

    .line 611
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 613
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 615
    sub-int/2addr v7, v9

    .line 616
    goto :goto_26d

    .line 617
    :cond_268
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 619
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 621
    add-int/2addr v7, v9

    .line 622
    :cond_26d
    :goto_26d
    if-eqz v22, :cond_275

    .line 624
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 626
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 629
    goto :goto_27a

    .line 630
    :cond_275
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 632
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 635
    :goto_27a
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 637
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 639
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 641
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 643
    if-ne v11, v12, :cond_28b

    .line 645
    iget v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 647
    const/4 v12, 0x1

    .line 648
    if-ne v11, v12, :cond_28b

    .line 650
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 652
    :cond_28b
    if-eqz v22, :cond_28f

    .line 654
    sub-int/2addr v7, v10

    .line 655
    goto :goto_290

    .line 656
    :cond_28f
    add-int/2addr v7, v10

    .line 657
    :goto_290
    if-eqz v22, :cond_298

    .line 659
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 661
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 664
    goto :goto_29d

    .line 665
    :cond_298
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 667
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 670
    :goto_29d
    const/4 v9, 0x1

    .line 671
    iput-boolean v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 673
    if-ge v5, v8, :cond_2b3

    .line 675
    if-ge v5, v6, :cond_2b3

    .line 677
    if-eqz v22, :cond_2ad

    .line 679
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 681
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 683
    neg-int v3, v3

    .line 684
    sub-int/2addr v7, v3

    .line 685
    goto :goto_2b3

    .line 686
    :cond_2ad
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 688
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 690
    neg-int v3, v3

    .line 691
    add-int/2addr v7, v3

    .line 692
    :cond_2b3
    :goto_2b3
    add-int/lit8 v5, v5, 0x1

    .line 694
    goto/16 :goto_230

    .line 696
    :cond_2b7
    move/from16 v9, v24

    .line 698
    if-nez v5, :cond_34c

    .line 700
    sub-int/2addr v2, v14

    .line 701
    const/4 v5, 0x1

    .line 702
    add-int/lit8 v7, v9, 0x1

    .line 704
    div-int/2addr v2, v7

    .line 705
    if-lez v15, :cond_2c3

    .line 707
    move v2, v3

    .line 708
    :cond_2c3
    move v5, v3

    .line 709
    move/from16 v7, v21

    .line 711
    :goto_2c6
    if-ge v5, v1, :cond_3f5

    .line 713
    if-eqz v22, :cond_2cf

    .line 715
    add-int/lit8 v3, v5, 0x1

    .line 717
    sub-int v3, v1, v3

    .line 719
    goto :goto_2d0

    .line 720
    :cond_2cf
    move v3, v5

    .line 721
    :goto_2d0
    iget-object v9, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 723
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 726
    move-result-object v3

    .line 727
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 729
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 731
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 733
    const/16 v10, 0x8

    .line 735
    if-ne v9, v10, :cond_2eb

    .line 737
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 739
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 742
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 744
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 747
    goto :goto_348

    .line 748
    :cond_2eb
    if-eqz v22, :cond_2ef

    .line 750
    sub-int/2addr v7, v2

    .line 751
    goto :goto_2f0

    .line 752
    :cond_2ef
    add-int/2addr v7, v2

    .line 753
    :goto_2f0
    if-lez v5, :cond_301

    .line 755
    if-lt v5, v4, :cond_301

    .line 757
    if-eqz v22, :cond_2fc

    .line 759
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 761
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 763
    sub-int/2addr v7, v9

    .line 764
    goto :goto_301

    .line 765
    :cond_2fc
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 767
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 769
    add-int/2addr v7, v9

    .line 770
    :cond_301
    :goto_301
    if-eqz v22, :cond_309

    .line 772
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 774
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 777
    goto :goto_30e

    .line 778
    :cond_309
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 780
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 783
    :goto_30e
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 785
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 787
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 789
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 791
    if-ne v11, v12, :cond_323

    .line 793
    iget v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 795
    const/4 v12, 0x1

    .line 796
    if-ne v11, v12, :cond_323

    .line 798
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 800
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 803
    move-result v10

    .line 804
    :cond_323
    if-eqz v22, :cond_327

    .line 806
    sub-int/2addr v7, v10

    .line 807
    goto :goto_328

    .line 808
    :cond_327
    add-int/2addr v7, v10

    .line 809
    :goto_328
    if-eqz v22, :cond_330

    .line 811
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 813
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 816
    goto :goto_335

    .line 817
    :cond_330
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 819
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 822
    :goto_335
    if-ge v5, v8, :cond_348

    .line 824
    if-ge v5, v6, :cond_348

    .line 826
    if-eqz v22, :cond_342

    .line 828
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 830
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 832
    neg-int v3, v3

    .line 833
    sub-int/2addr v7, v3

    .line 834
    goto :goto_348

    .line 835
    :cond_342
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 837
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 839
    neg-int v3, v3

    .line 840
    add-int/2addr v7, v3

    .line 841
    :cond_348
    :goto_348
    add-int/lit8 v5, v5, 0x1

    .line 843
    goto/16 :goto_2c6

    .line 845
    :cond_34c
    const/4 v7, 0x2

    .line 846
    if-ne v5, v7, :cond_3f5

    .line 848
    iget v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 850
    if-nez v5, :cond_358

    .line 852
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 854
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 856
    goto :goto_35c

    .line 857
    :cond_358
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 859
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 861
    :goto_35c
    if-eqz v22, :cond_362

    .line 863
    const/high16 v7, 0x3f800000  # 1.0f

    .line 865
    sub-float v5, v7, v5

    .line 867
    :cond_362
    sub-int/2addr v2, v14

    .line 868
    int-to-float v2, v2

    .line 869
    mul-float/2addr v2, v5

    .line 870
    const/high16 v5, 0x3f000000  # 0.5f

    .line 872
    add-float/2addr v2, v5

    .line 873
    float-to-int v2, v2

    .line 874
    if-ltz v2, :cond_36d

    .line 876
    if-lez v15, :cond_36e

    .line 878
    :cond_36d
    move v2, v3

    .line 879
    :cond_36e
    if-eqz v22, :cond_373

    .line 881
    sub-int v7, v21, v2

    .line 883
    goto :goto_375

    .line 884
    :cond_373
    add-int v7, v21, v2

    .line 886
    :goto_375
    move v5, v3

    .line 887
    :goto_376
    if-ge v5, v1, :cond_3f5

    .line 889
    if-eqz v22, :cond_37f

    .line 891
    add-int/lit8 v2, v5, 0x1

    .line 893
    sub-int v2, v1, v2

    .line 895
    goto :goto_380

    .line 896
    :cond_37f
    move v2, v5

    .line 897
    :goto_380
    iget-object v3, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 899
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 902
    move-result-object v2

    .line 903
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 905
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 907
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 909
    const/16 v9, 0x8

    .line 911
    if-ne v3, v9, :cond_39c

    .line 913
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 915
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 918
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 920
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 923
    const/4 v12, 0x1

    .line 924
    goto :goto_3f2

    .line 925
    :cond_39c
    if-lez v5, :cond_3ad

    .line 927
    if-lt v5, v4, :cond_3ad

    .line 929
    if-eqz v22, :cond_3a8

    .line 931
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 933
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 935
    sub-int/2addr v7, v3

    .line 936
    goto :goto_3ad

    .line 937
    :cond_3a8
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 939
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 941
    add-int/2addr v7, v3

    .line 942
    :cond_3ad
    :goto_3ad
    if-eqz v22, :cond_3b5

    .line 944
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 946
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 949
    goto :goto_3ba

    .line 950
    :cond_3b5
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 952
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 955
    :goto_3ba
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 957
    iget v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 959
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 961
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 963
    if-ne v11, v12, :cond_3cc

    .line 965
    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 967
    const/4 v12, 0x1

    .line 968
    if-ne v11, v12, :cond_3cd

    .line 970
    iget v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 972
    goto :goto_3cd

    .line 973
    :cond_3cc
    const/4 v12, 0x1

    .line 974
    :cond_3cd
    :goto_3cd
    if-eqz v22, :cond_3d1

    .line 976
    sub-int/2addr v7, v10

    .line 977
    goto :goto_3d2

    .line 978
    :cond_3d1
    add-int/2addr v7, v10

    .line 979
    :goto_3d2
    if-eqz v22, :cond_3da

    .line 981
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 983
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 986
    goto :goto_3df

    .line 987
    :cond_3da
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 989
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 992
    :goto_3df
    if-ge v5, v8, :cond_3f2

    .line 994
    if-ge v5, v6, :cond_3f2

    .line 996
    if-eqz v22, :cond_3ec

    .line 998
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1000
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 1002
    neg-int v2, v2

    .line 1003
    sub-int/2addr v7, v2

    .line 1004
    goto :goto_3f2

    .line 1005
    :cond_3ec
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1007
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 1009
    neg-int v2, v2

    .line 1010
    add-int/2addr v7, v2

    .line 1011
    :cond_3f2
    :goto_3f2
    add-int/lit8 v5, v5, 0x1

    .line 1013
    goto :goto_376

    .line 1014
    :cond_3f5
    :goto_3f5
    return-void
.end method

.method public final d()V
    .registers 6

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ge v0, v1, :cond_20

    .line 32
    return-void

    .line 33
    :cond_20
    iget-object v2, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 42
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    iget-object v4, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 53
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 55
    iget v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 57
    if-nez v4, :cond_76

    .line 59
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 61
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 63
    invoke-static {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {p0}, Lw/c;->m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_52

    .line 77
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 79
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 82
    move-result v1

    .line 83
    :cond_52
    if-eqz v2, :cond_59

    .line 85
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 87
    invoke-static {v4, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 90
    :cond_59
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 97
    move-result v0

    .line 98
    invoke-virtual {p0}, Lw/c;->n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_6d

    .line 104
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 106
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 109
    move-result v0

    .line 110
    :cond_6d
    if-eqz v1, :cond_b1

    .line 112
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 114
    neg-int v0, v0

    .line 115
    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 118
    goto :goto_b1

    .line 119
    :cond_76
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 121
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 123
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 130
    move-result v2

    .line 131
    invoke-virtual {p0}, Lw/c;->m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_8e

    .line 137
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 139
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 142
    move-result v2

    .line 143
    :cond_8e
    if-eqz v3, :cond_95

    .line 145
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 147
    invoke-static {v4, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 150
    :cond_95
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 157
    move-result v0

    .line 158
    invoke-virtual {p0}, Lw/c;->n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_a9

    .line 164
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 166
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 169
    move-result v0

    .line 170
    :cond_a9
    if-eqz v1, :cond_b1

    .line 172
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 174
    neg-int v0, v0

    .line 175
    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 178
    :cond_b1
    :goto_b1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 180
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 182
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 184
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 186
    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_17

    .line 10
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_17
    return-void
.end method

.method public final f()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Lw/i;

    .line 4
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f()V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public final j()J
    .registers 8

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_9
    if-ge v3, v0, :cond_27

    .line 12
    iget-object v4, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 20
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 22
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 24
    int-to-long v5, v5

    .line 25
    add-long/2addr v1, v5

    .line 26
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 29
    move-result-wide v5

    .line 30
    add-long/2addr v5, v1

    .line 31
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 33
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 35
    int-to-long v1, v1

    .line 36
    add-long/2addr v1, v5

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_9

    .line 40
    :cond_27
    return-wide v1
.end method

.method public final k()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_1c

    .line 11
    iget-object v3, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 19
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public final m()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1d

    .line 10
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 22
    const/16 v3, 0x8

    .line 24
    if-eq v2, v3, :cond_1a

    .line 26
    return-object v1

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public final n()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 5

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_1e

    .line 11
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 19
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 23
    const/16 v3, 0x8

    .line 25
    if-eq v2, v3, :cond_1b

    .line 27
    return-object v1

    .line 28
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    .line 30
    goto :goto_8

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ChainRun "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 10
    if-nez v1, :cond_e

    .line 12
    const-string v1, "horizontal : "

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const-string v1, "vertical : "

    .line 17
    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_33

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 38
    const-string v3, "<"

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, "> "

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_19

    .line 52
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
