.class public final Landroidx/constraintlayout/core/widgets/analyzer/d;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "VerticalWidgetRun.java"


# instance fields
.field public k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

.field public l:Lw/a;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 16
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 18
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 22
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 24
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 26
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 28
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 30
    const/4 p1, 0x1

    .line 31
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lw/d;)V
    .registers 10

    .line 1
    sget-object p1, Landroidx/constraintlayout/core/widgets/analyzer/d$a;->a:[I

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    aget p1, p1, v0

    .line 11
    const/4 v0, 0x3

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq p1, v0, :cond_18e

    .line 15
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 17
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 19
    const/high16 v3, 0x3f000000  # 0.5f

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_6e

    .line 24
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 26
    if-nez v2, :cond_6e

    .line 28
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 30
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    if-ne v2, v5, :cond_6e

    .line 34
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 36
    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 38
    const/4 v6, 0x2

    .line 39
    if-eq v5, v6, :cond_57

    .line 41
    if-eq v5, v0, :cond_2b

    .line 43
    goto :goto_6e

    .line 44
    :cond_2b
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 46
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 48
    iget-boolean v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 50
    if-eqz v5, :cond_6e

    .line 52
    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 54
    const/4 v6, -0x1

    .line 55
    if-eq v5, v6, :cond_4b

    .line 57
    if-eqz v5, :cond_44

    .line 59
    if-eq v5, v1, :cond_3e

    .line 61
    move v0, v4

    .line 62
    goto :goto_53

    .line 63
    :cond_3e
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 65
    int-to-float v0, v0

    .line 66
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 68
    goto :goto_50

    .line 69
    :cond_44
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 71
    int-to-float v0, v0

    .line 72
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 74
    mul-float/2addr v0, v2

    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 78
    int-to-float v0, v0

    .line 79
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 81
    :goto_50
    div-float/2addr v0, v2

    .line 82
    :goto_51
    add-float/2addr v0, v3

    .line 83
    float-to-int v0, v0

    .line 84
    :goto_53
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 87
    goto :goto_6e

    .line 88
    :cond_57
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 90
    if-eqz v0, :cond_6e

    .line 92
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 94
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 96
    iget-boolean v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 98
    if-eqz v5, :cond_6e

    .line 100
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 102
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 104
    int-to-float v0, v0

    .line 105
    mul-float/2addr v0, v2

    .line 106
    add-float/2addr v0, v3

    .line 107
    float-to-int v0, v0

    .line 108
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 111
    :cond_6e
    :goto_6e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 113
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 115
    if-eqz v0, :cond_18d

    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 119
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 121
    if-nez v2, :cond_7c

    .line 123
    goto/16 :goto_18d

    .line 125
    :cond_7c
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 127
    if-eqz p1, :cond_8b

    .line 129
    iget-boolean p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 131
    if-eqz p1, :cond_8b

    .line 133
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 135
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 137
    if-eqz p1, :cond_8b

    .line 139
    return-void

    .line 140
    :cond_8b
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 142
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 144
    if-nez p1, :cond_d5

    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 148
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 150
    if-ne p1, v0, :cond_d5

    .line 152
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 154
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 156
    if-nez v0, :cond_d5

    .line 158
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_d5

    .line 164
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 166
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 176
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 184
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 186
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 188
    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 190
    add-int/2addr p1, v2

    .line 191
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 193
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 195
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 197
    add-int/2addr v0, v2

    .line 198
    sub-int v2, v0, p1

    .line 200
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 203
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 205
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 208
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 210
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 213
    return-void

    .line 214
    :cond_d5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 216
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 218
    if-nez p1, :cond_129

    .line 220
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 222
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 224
    if-ne p1, v0, :cond_129

    .line 226
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 228
    if-ne p1, v1, :cond_129

    .line 230
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 232
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 237
    move-result p1

    .line 238
    if-lez p1, :cond_129

    .line 240
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 242
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 247
    move-result p1

    .line 248
    if-lez p1, :cond_129

    .line 250
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 252
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    move-result-object p1

    .line 258
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 262
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 270
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 272
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 274
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 276
    add-int/2addr p1, v1

    .line 277
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 279
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 281
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 283
    add-int/2addr v0, v1

    .line 284
    sub-int/2addr v0, p1

    .line 285
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 287
    iget v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 289
    if-ge v0, v1, :cond_126

    .line 291
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 294
    goto :goto_129

    .line 295
    :cond_126
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 298
    :cond_129
    :goto_129
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 300
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 302
    if-nez p1, :cond_130

    .line 304
    return-void

    .line 305
    :cond_130
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 307
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 309
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 312
    move-result p1

    .line 313
    if-lez p1, :cond_18d

    .line 315
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 317
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 322
    move-result p1

    .line 323
    if-lez p1, :cond_18d

    .line 325
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 327
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 337
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 339
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 345
    iget v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 347
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 349
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 351
    add-int/2addr v4, v1

    .line 352
    iget v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 354
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 356
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 358
    add-int/2addr v6, v5

    .line 359
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 361
    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 363
    if-ne p1, v0, :cond_16e

    .line 365
    move v7, v3

    .line 366
    goto :goto_170

    .line 367
    :cond_16e
    move v1, v4

    .line 368
    move v5, v6

    .line 369
    :goto_170
    sub-int/2addr v5, v1

    .line 370
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 372
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 374
    sub-int/2addr v5, p1

    .line 375
    int-to-float p1, v1

    .line 376
    add-float/2addr p1, v3

    .line 377
    int-to-float v0, v5

    .line 378
    mul-float/2addr v0, v7

    .line 379
    add-float/2addr v0, p1

    .line 380
    float-to-int p1, v0

    .line 381
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 384
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 386
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 388
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 390
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 392
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 394
    add-int/2addr v0, v1

    .line 395
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 398
    :cond_18d
    :goto_18d
    return-void

    .line 399
    :cond_18e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 401
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 403
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 405
    invoke-virtual {p0, v0, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->l(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 408
    return-void
.end method

.method public final d()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 5
    if-eqz v1, :cond_f

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 18
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 20
    const/4 v1, 0x1

    .line 21
    if-nez v0, :cond_90

    .line 23
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 25
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    aget-object v2, v2, v1

    .line 29
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 33
    if-eqz v0, :cond_29

    .line 35
    new-instance v0, Lw/a;

    .line 37
    invoke-direct {v0, p0}, Lw/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 40
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 42
    :cond_29
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    if-eq v0, v2, :cond_c6

    .line 48
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 50
    if-ne v0, v2, :cond_80

    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 54
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    if-eqz v2, :cond_80

    .line 58
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 60
    aget-object v3, v3, v1

    .line 62
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 64
    if-ne v3, v4, :cond_80

    .line 66
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 72
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 74
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 77
    move-result v1

    .line 78
    sub-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 81
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 83
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 86
    move-result v1

    .line 87
    sub-int/2addr v0, v1

    .line 88
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 90
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 92
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 94
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 96
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 98
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 101
    move-result v4

    .line 102
    invoke-static {v1, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 105
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 107
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 109
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 111
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 113
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 115
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 118
    move-result v3

    .line 119
    neg-int v3, v3

    .line 120
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 123
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 125
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 128
    return-void

    .line 129
    :cond_80
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 131
    if-ne v0, v2, :cond_c6

    .line 133
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 135
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 137
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 140
    move-result v2

    .line 141
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 144
    goto :goto_c6

    .line 145
    :cond_90
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 147
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 149
    if-ne v0, v2, :cond_c6

    .line 151
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 153
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 155
    if-eqz v2, :cond_c6

    .line 157
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 159
    aget-object v3, v3, v1

    .line 161
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 163
    if-ne v3, v4, :cond_c6

    .line 165
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 167
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 169
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 171
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 173
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 176
    move-result v0

    .line 177
    invoke-static {v1, v3, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 182
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 184
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 188
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 190
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 193
    move-result v2

    .line 194
    neg-int v2, v2

    .line 195
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 198
    return-void

    .line 199
    :cond_c6
    :goto_c6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 201
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 203
    const/4 v3, 0x0

    .line 204
    const/4 v4, 0x4

    .line 205
    const/4 v5, 0x2

    .line 206
    const/4 v6, 0x3

    .line 207
    if-eqz v2, :cond_22d

    .line 209
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 211
    iget-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 213
    if-eqz v8, :cond_22d

    .line 215
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 217
    aget-object v2, v0, v5

    .line 219
    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 221
    if-eqz v8, :cond_158

    .line 223
    aget-object v9, v0, v6

    .line 225
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 227
    if-eqz v9, :cond_158

    .line 229
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_108

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 237
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 239
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 241
    aget-object v1, v1, v5

    .line 243
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 246
    move-result v1

    .line 247
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 249
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 251
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 253
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 255
    aget-object v1, v1, v6

    .line 257
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 260
    move-result v1

    .line 261
    neg-int v1, v1

    .line 262
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 264
    goto :goto_147

    .line 265
    :cond_108
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 267
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 269
    aget-object v0, v0, v5

    .line 271
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_123

    .line 277
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 279
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 281
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 283
    aget-object v3, v3, v5

    .line 285
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 288
    move-result v3

    .line 289
    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 292
    :cond_123
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 294
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 296
    aget-object v0, v0, v6

    .line 298
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_13f

    .line 304
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 306
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 308
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 310
    aget-object v3, v3, v6

    .line 312
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 315
    move-result v3

    .line 316
    neg-int v3, v3

    .line 317
    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 320
    :cond_13f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 322
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 324
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 326
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 328
    :goto_147
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 330
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 332
    if-eqz v1, :cond_42a

    .line 334
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 336
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 338
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 340
    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 343
    goto/16 :goto_42a

    .line 345
    :cond_158
    if-eqz v8, :cond_18b

    .line 347
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 350
    move-result-object v0

    .line 351
    if-eqz v0, :cond_42a

    .line 353
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 355
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 357
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 359
    aget-object v2, v2, v5

    .line 361
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 364
    move-result v2

    .line 365
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 368
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 370
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 372
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 374
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 376
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 381
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 383
    if-eqz v1, :cond_42a

    .line 385
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 387
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 389
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 391
    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 394
    goto/16 :goto_42a

    .line 396
    :cond_18b
    aget-object v1, v0, v6

    .line 398
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 400
    if-eqz v2, :cond_1c4

    .line 402
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 405
    move-result-object v0

    .line 406
    if-eqz v0, :cond_1b3

    .line 408
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 410
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 412
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 414
    aget-object v2, v2, v6

    .line 416
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 419
    move-result v2

    .line 420
    neg-int v2, v2

    .line 421
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 424
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 426
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 428
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 430
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 432
    neg-int v2, v2

    .line 433
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 436
    :cond_1b3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 438
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 440
    if-eqz v1, :cond_42a

    .line 442
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 444
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 446
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 448
    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 451
    goto/16 :goto_42a

    .line 453
    :cond_1c4
    aget-object v0, v0, v4

    .line 455
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 457
    if-eqz v1, :cond_1ee

    .line 459
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 462
    move-result-object v0

    .line 463
    if-eqz v0, :cond_42a

    .line 465
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 467
    invoke-static {v1, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 470
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 472
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 474
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 476
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 478
    neg-int v2, v2

    .line 479
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 482
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 484
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 486
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 488
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 490
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 493
    goto/16 :goto_42a

    .line 495
    :cond_1ee
    instance-of v0, v7, Lv/a;

    .line 497
    if-nez v0, :cond_42a

    .line 499
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 501
    if-eqz v0, :cond_42a

    .line 503
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 505
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 508
    move-result-object v0

    .line 509
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 511
    if-nez v0, :cond_42a

    .line 513
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 515
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 517
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 519
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 521
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 523
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 526
    move-result v0

    .line 527
    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 530
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 532
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 534
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 536
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 538
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 541
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 543
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 545
    if-eqz v1, :cond_42a

    .line 547
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 549
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 551
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 553
    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 556
    goto/16 :goto_42a

    .line 558
    :cond_22d
    if-nez v2, :cond_29c

    .line 560
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 562
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 564
    if-ne v2, v7, :cond_29c

    .line 566
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 568
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 570
    if-eq v7, v5, :cond_272

    .line 572
    if-eq v7, v6, :cond_23e

    .line 574
    goto :goto_29f

    .line 575
    :cond_23e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 578
    move-result v0

    .line 579
    if-nez v0, :cond_29f

    .line 581
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 583
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 585
    if-ne v2, v6, :cond_24b

    .line 587
    goto :goto_29f

    .line 588
    :cond_24b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 590
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 592
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 594
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 596
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 601
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 603
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 608
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 610
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 612
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 614
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 619
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 621
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 623
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    goto :goto_29f

    .line 627
    :cond_272
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 629
    if-nez v2, :cond_277

    .line 631
    goto :goto_29f

    .line 632
    :cond_277
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 634
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 636
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 638
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 643
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 645
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 650
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 652
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 654
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 656
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 661
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 663
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 665
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    goto :goto_29f

    .line 669
    :cond_29c
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b(Lw/d;)V

    .line 672
    :cond_29f
    :goto_29f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 674
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 676
    aget-object v7, v2, v5

    .line 678
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 680
    if-eqz v8, :cond_306

    .line 682
    aget-object v9, v2, v6

    .line 684
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 686
    if-eqz v9, :cond_306

    .line 688
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 691
    move-result v0

    .line 692
    if-eqz v0, :cond_2d3

    .line 694
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 696
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 698
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 700
    aget-object v2, v2, v5

    .line 702
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 705
    move-result v2

    .line 706
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 708
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 710
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 712
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 714
    aget-object v2, v2, v6

    .line 716
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 719
    move-result v2

    .line 720
    neg-int v2, v2

    .line 721
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 723
    goto :goto_2f5

    .line 724
    :cond_2d3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 726
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 728
    aget-object v0, v0, v5

    .line 730
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 733
    move-result-object v0

    .line 734
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 736
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 738
    aget-object v2, v2, v6

    .line 740
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 743
    move-result-object v2

    .line 744
    if-eqz v0, :cond_2ec

    .line 746
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b(Lw/d;)V

    .line 749
    :cond_2ec
    if-eqz v2, :cond_2f1

    .line 751
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b(Lw/d;)V

    .line 754
    :cond_2f1
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 756
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 758
    :goto_2f5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 760
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 762
    if-eqz v0, :cond_41c

    .line 764
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 766
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 768
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 770
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 773
    goto/16 :goto_41c

    .line 775
    :cond_306
    const/4 v9, 0x0

    .line 776
    if-eqz v8, :cond_366

    .line 778
    invoke-static {v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 781
    move-result-object v0

    .line 782
    if-eqz v0, :cond_41c

    .line 784
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 786
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 788
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 790
    aget-object v3, v3, v5

    .line 792
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 795
    move-result v3

    .line 796
    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 799
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 801
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 803
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 805
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 808
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 810
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 812
    if-eqz v0, :cond_336

    .line 814
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 816
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 818
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 820
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 823
    :cond_336
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 825
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 827
    if-ne v0, v2, :cond_41c

    .line 829
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 831
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 833
    cmpl-float v3, v3, v9

    .line 835
    if-lez v3, :cond_41c

    .line 837
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 839
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 841
    if-ne v3, v2, :cond_41c

    .line 843
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 845
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 847
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 849
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 854
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 856
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 858
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 860
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 862
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 867
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 869
    goto/16 :goto_41c

    .line 871
    :cond_366
    aget-object v5, v2, v6

    .line 873
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 875
    const/4 v8, -0x1

    .line 876
    if-eqz v7, :cond_39d

    .line 878
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 881
    move-result-object v0

    .line 882
    if-eqz v0, :cond_41c

    .line 884
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 886
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 888
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 890
    aget-object v3, v3, v6

    .line 892
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 895
    move-result v3

    .line 896
    neg-int v3, v3

    .line 897
    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 900
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 902
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 904
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 906
    invoke-virtual {p0, v0, v2, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 909
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 911
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 913
    if-eqz v0, :cond_41c

    .line 915
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 917
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 919
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 921
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 924
    goto/16 :goto_41c

    .line 926
    :cond_39d
    aget-object v2, v2, v4

    .line 928
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 930
    if-eqz v4, :cond_3c1

    .line 932
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 935
    move-result-object v0

    .line 936
    if-eqz v0, :cond_41c

    .line 938
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 940
    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 943
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 945
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 947
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 949
    invoke-virtual {p0, v0, v2, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 952
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 954
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 956
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 958
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 961
    goto :goto_41c

    .line 962
    :cond_3c1
    instance-of v2, v0, Lv/a;

    .line 964
    if-nez v2, :cond_41c

    .line 966
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 968
    if-eqz v2, :cond_41c

    .line 970
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 972
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 974
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 976
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 979
    move-result v0

    .line 980
    invoke-static {v3, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 983
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 985
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 987
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 989
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 992
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 994
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 996
    if-eqz v0, :cond_3ee

    .line 998
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1000
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1002
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 1004
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 1007
    :cond_3ee
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1009
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1011
    if-ne v0, v2, :cond_41c

    .line 1013
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1015
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 1017
    cmpl-float v3, v3, v9

    .line 1019
    if-lez v3, :cond_41c

    .line 1021
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 1023
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1025
    if-ne v3, v2, :cond_41c

    .line 1027
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1029
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 1031
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1033
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1038
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 1040
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1042
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 1044
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1046
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1051
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 1053
    :cond_41c
    :goto_41c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1055
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 1057
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1060
    move-result v0

    .line 1061
    if-nez v0, :cond_42a

    .line 1063
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1065
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 1067
    :cond_42a
    :goto_42a
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
    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

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
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 19
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 21
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 27
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
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

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

.method public final m()V
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
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c()V

    .line 27
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 29
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 31
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 33
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 35
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "VerticalRun "

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
