.class public final Lw/e;
.super Ljava/lang/Object;
.source "DependencyGraph.java"


# instance fields
.field public a:Landroidx/constraintlayout/core/widgets/d;

.field public b:Z

.field public c:Z

.field public d:Landroidx/constraintlayout/core/widgets/d;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lw/b$b;

.field public g:Lw/b$a;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/d;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lw/e;->b:Z

    .line 7
    iput-boolean v0, p0, Lw/e;->c:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lw/e;->e:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lw/e;->f:Lw/b$b;

    .line 24
    new-instance v0, Lw/b$a;

    .line 26
    invoke-direct {v0}, Lw/b$a;-><init>()V

    .line 29
    iput-object v0, p0, Lw/e;->g:Lw/b$a;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object v0, p0, Lw/e;->h:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 40
    iput-object p1, p0, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V
    .registers 13

    .line 1
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Lw/i;

    .line 5
    if-nez p3, :cond_fb

    .line 7
    iget-object p3, p0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 9
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 11
    if-eq p1, v0, :cond_fb

    .line 13
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 15
    if-ne p1, p3, :cond_12

    .line 17
    goto/16 :goto_fb

    .line 19
    :cond_12
    if-nez p5, :cond_1c

    .line 21
    new-instance p5, Lw/i;

    .line 23
    invoke-direct {p5, p1}, Lw/i;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 26
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1c
    iput-object p5, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Lw/i;

    .line 31
    iget-object p3, p5, Lw/i;->b:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 38
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p3

    .line 44
    :cond_2b
    :goto_2b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_47

    .line 50
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lw/d;

    .line 56
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 58
    if-eqz v1, :cond_2b

    .line 60
    move-object v1, v0

    .line 61
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 63
    const/4 v3, 0x0

    .line 64
    move-object v0, p0

    .line 65
    move v2, p2

    .line 66
    move-object v4, p4

    .line 67
    move-object v5, p5

    .line 68
    invoke-virtual/range {v0 .. v5}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 71
    goto :goto_2b

    .line 72
    :cond_47
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 74
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p3

    .line 80
    :cond_4f
    :goto_4f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6b

    .line 86
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lw/d;

    .line 92
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 94
    if-eqz v1, :cond_4f

    .line 96
    move-object v1, v0

    .line 97
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 99
    const/4 v3, 0x1

    .line 100
    move-object v0, p0

    .line 101
    move v2, p2

    .line 102
    move-object v4, p4

    .line 103
    move-object v5, p5

    .line 104
    invoke-virtual/range {v0 .. v5}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 107
    goto :goto_4f

    .line 108
    :cond_6b
    const/4 p3, 0x1

    .line 109
    if-ne p2, p3, :cond_99

    .line 111
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 113
    if-eqz v0, :cond_99

    .line 115
    move-object v0, p1

    .line 116
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 118
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 120
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v6

    .line 126
    :cond_7d
    :goto_7d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_99

    .line 132
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lw/d;

    .line 138
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 140
    if-eqz v1, :cond_7d

    .line 142
    move-object v1, v0

    .line 143
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 145
    const/4 v3, 0x2

    .line 146
    move-object v0, p0

    .line 147
    move v2, p2

    .line 148
    move-object v4, p4

    .line 149
    move-object v5, p5

    .line 150
    invoke-virtual/range {v0 .. v5}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 153
    goto :goto_7d

    .line 154
    :cond_99
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 156
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v6

    .line 162
    :goto_a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_b7

    .line 168
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    move-object v1, v0

    .line 173
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 175
    const/4 v3, 0x0

    .line 176
    move-object v0, p0

    .line 177
    move v2, p2

    .line 178
    move-object v4, p4

    .line 179
    move-object v5, p5

    .line 180
    invoke-virtual/range {v0 .. v5}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 183
    goto :goto_a1

    .line 184
    :cond_b7
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 186
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    move-result-object v6

    .line 192
    :goto_bf
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_d5

    .line 198
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    move-result-object v0

    .line 202
    move-object v1, v0

    .line 203
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 205
    const/4 v3, 0x1

    .line 206
    move-object v0, p0

    .line 207
    move v2, p2

    .line 208
    move-object v4, p4

    .line 209
    move-object v5, p5

    .line 210
    invoke-virtual/range {v0 .. v5}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 213
    goto :goto_bf

    .line 214
    :cond_d5
    if-ne p2, p3, :cond_fb

    .line 216
    instance-of p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 218
    if-eqz p3, :cond_fb

    .line 220
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 222
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 224
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object p1

    .line 230
    :goto_e5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_fb

    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object p3

    .line 240
    move-object v1, p3

    .line 241
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 243
    const/4 v3, 0x2

    .line 244
    move-object v0, p0

    .line 245
    move v2, p2

    .line 246
    move-object v4, p4

    .line 247
    move-object v5, p5

    .line 248
    invoke-virtual/range {v0 .. v5}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 251
    goto :goto_e5

    .line 252
    :cond_fb
    :goto_fb
    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/widgets/d;)V
    .registers 19

    .line 1
    move-object/from16 v0, p1

    .line 3
    iget-object v1, v0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 9
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_337

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    const/4 v4, 0x0

    .line 24
    aget-object v5, v3, v4

    .line 26
    const/4 v9, 0x1

    .line 27
    aget-object v3, v3, v9

    .line 29
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 31
    const/16 v7, 0x8

    .line 33
    if-ne v6, v7, :cond_25

    .line 35
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 37
    goto :goto_8

    .line 38
    :cond_25
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 40
    const/high16 v10, 0x3f800000  # 1.0f

    .line 42
    cmpg-float v7, v6, v10

    .line 44
    const/4 v8, 0x2

    .line 45
    if-gez v7, :cond_34

    .line 47
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 49
    if-ne v5, v7, :cond_34

    .line 51
    iput v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 53
    :cond_34
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 55
    cmpg-float v11, v7, v10

    .line 57
    if-gez v11, :cond_40

    .line 59
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 61
    if-ne v3, v11, :cond_40

    .line 63
    iput v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 65
    :cond_40
    iget v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 67
    const/4 v12, 0x0

    .line 68
    cmpl-float v11, v11, v12

    .line 70
    const/4 v12, 0x3

    .line 71
    if-lez v11, :cond_74

    .line 73
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    if-ne v5, v11, :cond_57

    .line 77
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    if-eq v3, v13, :cond_54

    .line 81
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 83
    if-ne v3, v13, :cond_57

    .line 85
    :cond_54
    iput v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 87
    goto :goto_74

    .line 88
    :cond_57
    if-ne v3, v11, :cond_64

    .line 90
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 92
    if-eq v5, v13, :cond_61

    .line 94
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 96
    if-ne v5, v13, :cond_64

    .line 98
    :cond_61
    iput v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 100
    goto :goto_74

    .line 101
    :cond_64
    if-ne v5, v11, :cond_74

    .line 103
    if-ne v3, v11, :cond_74

    .line 105
    iget v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 107
    if-nez v11, :cond_6e

    .line 109
    iput v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 111
    :cond_6e
    iget v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 113
    if-nez v11, :cond_74

    .line 115
    iput v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 117
    :cond_74
    :goto_74
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 119
    if-ne v5, v11, :cond_8a

    .line 121
    iget v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 123
    if-ne v13, v9, :cond_8a

    .line 125
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 127
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 129
    if-eqz v13, :cond_88

    .line 131
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 133
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 135
    if-nez v13, :cond_8a

    .line 137
    :cond_88
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 139
    :cond_8a
    if-ne v3, v11, :cond_9e

    .line 141
    iget v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 143
    if-ne v13, v9, :cond_9e

    .line 145
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 147
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 149
    if-eqz v13, :cond_9c

    .line 151
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 153
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 155
    if-nez v13, :cond_9e

    .line 157
    :cond_9c
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 159
    :cond_9e
    move-object v13, v3

    .line 160
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 162
    iput-object v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 164
    iget v14, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 166
    iput v14, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 168
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 170
    iput-object v13, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 172
    iget v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 174
    iput v15, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 176
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 178
    if-eq v5, v3, :cond_bb

    .line 180
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 182
    if-eq v5, v10, :cond_bb

    .line 184
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 186
    if-ne v5, v10, :cond_c7

    .line 188
    :cond_bb
    if-eq v13, v3, :cond_2e5

    .line 190
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 192
    if-eq v13, v10, :cond_2e5

    .line 194
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 196
    if-ne v13, v10, :cond_c7

    .line 198
    goto/16 :goto_2e5

    .line 200
    :cond_c7
    const/high16 v10, 0x3f000000  # 0.5f

    .line 202
    if-ne v5, v11, :cond_19a

    .line 204
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 206
    if-eq v13, v8, :cond_d3

    .line 208
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 210
    if-ne v13, v4, :cond_19a

    .line 212
    :cond_d3
    if-ne v14, v12, :cond_10f

    .line 214
    if-ne v13, v8, :cond_e2

    .line 216
    const/4 v6, 0x0

    .line 217
    const/4 v11, 0x0

    .line 218
    move-object/from16 v3, p0

    .line 220
    move-object v4, v2

    .line 221
    move-object v5, v8

    .line 222
    move-object v7, v8

    .line 223
    move v8, v11

    .line 224
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 227
    :cond_e2
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 230
    move-result v8

    .line 231
    int-to-float v3, v8

    .line 232
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 234
    mul-float/2addr v3, v4

    .line 235
    add-float/2addr v3, v10

    .line 236
    float-to-int v6, v3

    .line 237
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 239
    move-object/from16 v3, p0

    .line 241
    move-object v4, v2

    .line 242
    move-object v5, v7

    .line 243
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 246
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 248
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 250
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 253
    move-result v4

    .line 254
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 257
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 259
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 261
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 264
    move-result v4

    .line 265
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 268
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 270
    goto/16 :goto_8

    .line 272
    :cond_10f
    if-ne v14, v9, :cond_128

    .line 274
    const/4 v6, 0x0

    .line 275
    const/4 v9, 0x0

    .line 276
    move-object/from16 v3, p0

    .line 278
    move-object v4, v2

    .line 279
    move-object v5, v8

    .line 280
    move-object v7, v13

    .line 281
    move v8, v9

    .line 282
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 285
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 287
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 289
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 292
    move-result v2

    .line 293
    iput v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 295
    goto/16 :goto_8

    .line 297
    :cond_128
    const/4 v4, 0x2

    .line 298
    if-ne v14, v4, :cond_165

    .line 300
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 302
    const/4 v8, 0x0

    .line 303
    aget-object v4, v4, v8

    .line 305
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 307
    if-eq v4, v8, :cond_136

    .line 309
    if-ne v4, v3, :cond_19a

    .line 311
    :cond_136
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 314
    move-result v3

    .line 315
    int-to-float v3, v3

    .line 316
    mul-float/2addr v6, v3

    .line 317
    add-float/2addr v6, v10

    .line 318
    float-to-int v6, v6

    .line 319
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 322
    move-result v10

    .line 323
    move-object/from16 v3, p0

    .line 325
    move-object v4, v2

    .line 326
    move-object v5, v8

    .line 327
    move-object v7, v13

    .line 328
    move v8, v10

    .line 329
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 332
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 334
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 336
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 339
    move-result v4

    .line 340
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 343
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 345
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 347
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 350
    move-result v4

    .line 351
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 354
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 356
    goto/16 :goto_8

    .line 358
    :cond_165
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    const/16 v16, 0x0

    .line 362
    aget-object v10, v4, v16

    .line 364
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 366
    if-eqz v10, :cond_175

    .line 368
    aget-object v4, v4, v9

    .line 370
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 372
    if-nez v4, :cond_19a

    .line 374
    :cond_175
    const/4 v6, 0x0

    .line 375
    const/4 v10, 0x0

    .line 376
    move-object/from16 v3, p0

    .line 378
    move-object v4, v2

    .line 379
    move-object v5, v8

    .line 380
    move-object v7, v13

    .line 381
    move v8, v10

    .line 382
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 385
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 387
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 389
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 392
    move-result v4

    .line 393
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 396
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 398
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 400
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 403
    move-result v4

    .line 404
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 407
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 409
    goto/16 :goto_8

    .line 411
    :cond_19a
    if-ne v13, v11, :cond_274

    .line 413
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 415
    if-eq v5, v8, :cond_1a4

    .line 417
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 419
    if-ne v5, v4, :cond_274

    .line 421
    :cond_1a4
    if-ne v15, v12, :cond_1eb

    .line 423
    if-ne v5, v8, :cond_1b3

    .line 425
    const/4 v6, 0x0

    .line 426
    const/4 v10, 0x0

    .line 427
    move-object/from16 v3, p0

    .line 429
    move-object v4, v2

    .line 430
    move-object v5, v8

    .line 431
    move-object v7, v8

    .line 432
    move v8, v10

    .line 433
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 436
    :cond_1b3
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 439
    move-result v6

    .line 440
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 442
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 444
    const/4 v5, -0x1

    .line 445
    if-ne v4, v5, :cond_1c2

    .line 447
    const/high16 v4, 0x3f800000  # 1.0f

    .line 449
    div-float v3, v4, v3

    .line 451
    :cond_1c2
    int-to-float v4, v6

    .line 452
    mul-float/2addr v4, v3

    .line 453
    const/high16 v3, 0x3f000000  # 0.5f

    .line 455
    add-float/2addr v4, v3

    .line 456
    float-to-int v8, v4

    .line 457
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 459
    move-object/from16 v3, p0

    .line 461
    move-object v4, v2

    .line 462
    move-object v5, v7

    .line 463
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 466
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 468
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 470
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 473
    move-result v4

    .line 474
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 477
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 479
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 481
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 484
    move-result v4

    .line 485
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 488
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 490
    goto/16 :goto_8

    .line 492
    :cond_1eb
    if-ne v15, v9, :cond_203

    .line 494
    const/4 v6, 0x0

    .line 495
    const/4 v9, 0x0

    .line 496
    move-object/from16 v3, p0

    .line 498
    move-object v4, v2

    .line 499
    move-object v7, v8

    .line 500
    move v8, v9

    .line 501
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 504
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 506
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 508
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 511
    move-result v2

    .line 512
    iput v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 514
    goto/16 :goto_8

    .line 516
    :cond_203
    const/4 v4, 0x2

    .line 517
    if-ne v15, v4, :cond_240

    .line 519
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 521
    aget-object v4, v4, v9

    .line 523
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 525
    if-eq v4, v8, :cond_210

    .line 527
    if-ne v4, v3, :cond_274

    .line 529
    :cond_210
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 532
    move-result v6

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 536
    move-result v3

    .line 537
    int-to-float v3, v3

    .line 538
    mul-float/2addr v7, v3

    .line 539
    const/high16 v3, 0x3f000000  # 0.5f

    .line 541
    add-float/2addr v7, v3

    .line 542
    float-to-int v10, v7

    .line 543
    move-object/from16 v3, p0

    .line 545
    move-object v4, v2

    .line 546
    move-object v7, v8

    .line 547
    move v8, v10

    .line 548
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 551
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 553
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 555
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 558
    move-result v4

    .line 559
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 562
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 564
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 566
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 569
    move-result v4

    .line 570
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 573
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 575
    goto/16 :goto_8

    .line 577
    :cond_240
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 579
    const/4 v4, 0x2

    .line 580
    aget-object v10, v3, v4

    .line 582
    iget-object v4, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 584
    if-eqz v4, :cond_24f

    .line 586
    aget-object v3, v3, v12

    .line 588
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 590
    if-nez v3, :cond_274

    .line 592
    :cond_24f
    const/4 v6, 0x0

    .line 593
    const/4 v10, 0x0

    .line 594
    move-object/from16 v3, p0

    .line 596
    move-object v4, v2

    .line 597
    move-object v5, v8

    .line 598
    move-object v7, v13

    .line 599
    move v8, v10

    .line 600
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 603
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 605
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 607
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 610
    move-result v4

    .line 611
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 614
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 616
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 618
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 621
    move-result v4

    .line 622
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 625
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 627
    goto/16 :goto_8

    .line 629
    :cond_274
    if-ne v5, v11, :cond_8

    .line 631
    if-ne v13, v11, :cond_8

    .line 633
    if-eq v14, v9, :cond_2c4

    .line 635
    if-ne v15, v9, :cond_27d

    .line 637
    goto :goto_2c4

    .line 638
    :cond_27d
    const/4 v3, 0x2

    .line 639
    if-ne v15, v3, :cond_8

    .line 641
    if-ne v14, v3, :cond_8

    .line 643
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 645
    const/4 v4, 0x0

    .line 646
    aget-object v4, v3, v4

    .line 648
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 650
    if-ne v4, v8, :cond_8

    .line 652
    aget-object v3, v3, v9

    .line 654
    if-ne v3, v8, :cond_8

    .line 656
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 659
    move-result v3

    .line 660
    int-to-float v3, v3

    .line 661
    mul-float/2addr v6, v3

    .line 662
    const/high16 v3, 0x3f000000  # 0.5f

    .line 664
    add-float/2addr v6, v3

    .line 665
    float-to-int v6, v6

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 669
    move-result v4

    .line 670
    int-to-float v4, v4

    .line 671
    mul-float/2addr v7, v4

    .line 672
    add-float/2addr v7, v3

    .line 673
    float-to-int v10, v7

    .line 674
    move-object/from16 v3, p0

    .line 676
    move-object v4, v2

    .line 677
    move-object v5, v8

    .line 678
    move-object v7, v8

    .line 679
    move v8, v10

    .line 680
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 683
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 685
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 687
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 690
    move-result v4

    .line 691
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 694
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 696
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 698
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 701
    move-result v4

    .line 702
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 705
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 707
    goto/16 :goto_8

    .line 709
    :cond_2c4
    :goto_2c4
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 711
    const/4 v6, 0x0

    .line 712
    const/4 v8, 0x0

    .line 713
    move-object/from16 v3, p0

    .line 715
    move-object v4, v2

    .line 716
    move-object v5, v7

    .line 717
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 720
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 722
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 724
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 727
    move-result v4

    .line 728
    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 730
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 732
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 734
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 737
    move-result v2

    .line 738
    iput v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 740
    goto/16 :goto_8

    .line 742
    :cond_2e5
    :goto_2e5
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 745
    move-result v4

    .line 746
    if-ne v5, v3, :cond_2fb

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 751
    move-result v4

    .line 752
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 754
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 756
    sub-int/2addr v4, v5

    .line 757
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 759
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 761
    sub-int/2addr v4, v5

    .line 762
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 764
    :cond_2fb
    move v6, v4

    .line 765
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 768
    move-result v4

    .line 769
    if-ne v13, v3, :cond_315

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 774
    move-result v3

    .line 775
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 777
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 779
    sub-int/2addr v3, v4

    .line 780
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 782
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 784
    sub-int/2addr v3, v4

    .line 785
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 787
    move v8, v3

    .line 788
    move-object v7, v4

    .line 789
    goto :goto_317

    .line 790
    :cond_315
    move v8, v4

    .line 791
    move-object v7, v13

    .line 792
    :goto_317
    move-object/from16 v3, p0

    .line 794
    move-object v4, v2

    .line 795
    invoke-virtual/range {v3 .. v8}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 798
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 800
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 802
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 805
    move-result v4

    .line 806
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 809
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 811
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 813
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 816
    move-result v4

    .line 817
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 820
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 822
    goto/16 :goto_8

    .line 824
    :cond_337
    return-void
.end method

.method public final c()V
    .registers 8

    .line 1
    iget-object v0, p0, Lw/e;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v1, p0, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 10
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/c;->f()V

    .line 13
    iget-object v1, p0, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 15
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 17
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/d;->f()V

    .line 20
    iget-object v1, p0, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 22
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, p0, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 29
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 36
    iget-object v1, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v3, :cond_98

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 57
    instance-of v6, v3, Landroidx/constraintlayout/core/widgets/e;

    .line 59
    if-eqz v6, :cond_45

    .line 61
    new-instance v4, Lw/h;

    .line 63
    invoke-direct {v4, v3}, Lw/h;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 66
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_2a

    .line 70
    :cond_45
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_63

    .line 76
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Lw/c;

    .line 78
    if-nez v6, :cond_56

    .line 80
    new-instance v6, Lw/c;

    .line 82
    invoke-direct {v6, v5, v3}, Lw/c;-><init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 85
    iput-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Lw/c;

    .line 87
    :cond_56
    if-nez v2, :cond_5d

    .line 89
    new-instance v2, Ljava/util/HashSet;

    .line 91
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 94
    :cond_5d
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Lw/c;

    .line 96
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_68

    .line 100
    :cond_63
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_68
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_86

    .line 111
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Lw/c;

    .line 113
    if-nez v5, :cond_79

    .line 115
    new-instance v5, Lw/c;

    .line 117
    invoke-direct {v5, v4, v3}, Lw/c;-><init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 120
    iput-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Lw/c;

    .line 122
    :cond_79
    if-nez v2, :cond_80

    .line 124
    new-instance v2, Ljava/util/HashSet;

    .line 126
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 129
    :cond_80
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Lw/c;

    .line 131
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_8b

    .line 135
    :cond_86
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 137
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_8b
    instance-of v4, v3, Lv/b;

    .line 142
    if-eqz v4, :cond_2a

    .line 144
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 146
    invoke-direct {v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 149
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    goto :goto_2a

    .line 153
    :cond_98
    if-eqz v2, :cond_9d

    .line 155
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v1

    .line 162
    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_b1

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 174
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f()V

    .line 177
    goto :goto_a1

    .line 178
    :cond_b1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    move-result-object v0

    .line 182
    :goto_b5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_cc

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 194
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 196
    iget-object v3, p0, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 198
    if-ne v2, v3, :cond_c8

    .line 200
    goto :goto_b5

    .line 201
    :cond_c8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d()V

    .line 204
    goto :goto_b5

    .line 205
    :cond_cc
    iget-object v0, p0, Lw/e;->h:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v0, p0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 212
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 214
    iget-object v1, p0, Lw/e;->h:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {p0, v0, v5, v1}, Lw/e;->e(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 219
    iget-object v0, p0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 221
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 223
    iget-object v1, p0, Lw/e;->h:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {p0, v0, v4, v1}, Lw/e;->e(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 228
    iput-boolean v5, p0, Lw/e;->b:Z

    .line 230
    return-void
.end method

.method public final d(Landroidx/constraintlayout/core/widgets/d;I)I
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    iget-object v3, v0, Lw/e;->h:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v3

    .line 13
    const-wide/16 v4, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move v8, v6

    .line 17
    move-wide v6, v4

    .line 18
    :goto_11
    if-ge v8, v3, :cond_12c

    .line 20
    iget-object v9, v0, Lw/e;->h:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Lw/i;

    .line 28
    iget-object v10, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 30
    instance-of v11, v10, Lw/c;

    .line 32
    if-eqz v11, :cond_2a

    .line 34
    move-object v11, v10

    .line 35
    check-cast v11, Lw/c;

    .line 37
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 39
    if-eq v11, v2, :cond_38

    .line 41
    goto/16 :goto_11e

    .line 43
    :cond_2a
    if-nez v2, :cond_32

    .line 45
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 47
    if-nez v11, :cond_38

    .line 49
    goto/16 :goto_11e

    .line 51
    :cond_32
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 53
    if-nez v11, :cond_38

    .line 55
    goto/16 :goto_11e

    .line 57
    :cond_38
    if-nez v2, :cond_3d

    .line 59
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 64
    :goto_3f
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 66
    if-nez v2, :cond_46

    .line 68
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 73
    :goto_48
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 75
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 77
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v10

    .line 83
    iget-object v11, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 85
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 87
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 92
    move-result v11

    .line 93
    iget-object v12, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 95
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 98
    move-result-wide v12

    .line 99
    if-eqz v10, :cond_d3

    .line 101
    if-eqz v11, :cond_d3

    .line 103
    iget-object v10, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 105
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 107
    invoke-static {v10, v6, v7}, Lw/i;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 110
    move-result-wide v10

    .line 111
    iget-object v14, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 113
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 115
    invoke-static {v14, v6, v7}, Lw/i;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 118
    move-result-wide v6

    .line 119
    sub-long/2addr v10, v12

    .line 120
    iget-object v14, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 122
    iget-object v15, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 124
    iget v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 126
    neg-int v0, v15

    .line 127
    int-to-long v0, v0

    .line 128
    cmp-long v0, v10, v0

    .line 130
    if-ltz v0, :cond_85

    .line 132
    int-to-long v0, v15

    .line 133
    add-long/2addr v10, v0

    .line 134
    :cond_85
    neg-long v0, v6

    .line 135
    sub-long/2addr v0, v12

    .line 136
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 138
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 140
    int-to-long v6, v6

    .line 141
    sub-long/2addr v0, v6

    .line 142
    cmp-long v15, v0, v6

    .line 144
    if-ltz v15, :cond_92

    .line 146
    sub-long/2addr v0, v6

    .line 147
    :cond_92
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 149
    if-nez v2, :cond_99

    .line 151
    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 153
    goto :goto_a4

    .line 154
    :cond_99
    const/4 v7, 0x1

    .line 155
    if-ne v2, v7, :cond_9f

    .line 157
    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 159
    goto :goto_a4

    .line 160
    :cond_9f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    const/high16 v6, -0x40800000  # -1.0f

    .line 165
    :goto_a4
    const/4 v7, 0x0

    .line 166
    cmpl-float v7, v6, v7

    .line 168
    const/high16 v14, 0x3f800000  # 1.0f

    .line 170
    if-lez v7, :cond_b4

    .line 172
    long-to-float v0, v0

    .line 173
    div-float/2addr v0, v6

    .line 174
    long-to-float v1, v10

    .line 175
    sub-float v7, v14, v6

    .line 177
    div-float/2addr v1, v7

    .line 178
    add-float/2addr v1, v0

    .line 179
    float-to-long v0, v1

    .line 180
    goto :goto_b6

    .line 181
    :cond_b4
    const-wide/16 v0, 0x0

    .line 183
    :goto_b6
    long-to-float v0, v0

    .line 184
    mul-float v1, v0, v6

    .line 186
    const/high16 v7, 0x3f000000  # 0.5f

    .line 188
    add-float/2addr v1, v7

    .line 189
    float-to-long v10, v1

    .line 190
    invoke-static {v14, v6, v0, v7}, Lf0/e;->a(FFFF)F

    .line 193
    move-result v0

    .line 194
    float-to-long v0, v0

    .line 195
    add-long/2addr v10, v12

    .line 196
    add-long/2addr v10, v0

    .line 197
    iget-object v0, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 199
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 201
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 203
    int-to-long v6, v1

    .line 204
    add-long/2addr v6, v10

    .line 205
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 207
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 209
    int-to-long v0, v0

    .line 210
    sub-long/2addr v6, v0

    .line 211
    goto :goto_11e

    .line 212
    :cond_d3
    if-eqz v10, :cond_ed

    .line 214
    iget-object v0, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 216
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 218
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 220
    int-to-long v6, v1

    .line 221
    invoke-static {v0, v6, v7}, Lw/i;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 224
    move-result-wide v0

    .line 225
    iget-object v6, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 227
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 229
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 231
    int-to-long v6, v6

    .line 232
    add-long/2addr v6, v12

    .line 233
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 236
    move-result-wide v6

    .line 237
    goto :goto_11e

    .line 238
    :cond_ed
    if-eqz v11, :cond_109

    .line 240
    iget-object v0, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 242
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 244
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 246
    int-to-long v6, v1

    .line 247
    invoke-static {v0, v6, v7}, Lw/i;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 250
    move-result-wide v0

    .line 251
    iget-object v6, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 253
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 255
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 257
    neg-int v6, v6

    .line 258
    int-to-long v6, v6

    .line 259
    add-long/2addr v6, v12

    .line 260
    neg-long v0, v0

    .line 261
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 264
    move-result-wide v6

    .line 265
    goto :goto_11e

    .line 266
    :cond_109
    iget-object v0, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 268
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 270
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 272
    int-to-long v6, v1

    .line 273
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 276
    move-result-wide v0

    .line 277
    add-long/2addr v0, v6

    .line 278
    iget-object v6, v9, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 280
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 282
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 284
    int-to-long v6, v6

    .line 285
    sub-long v6, v0, v6

    .line 287
    :goto_11e
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 290
    move-result-wide v4

    .line 291
    add-int/lit8 v8, v8, 0x1

    .line 293
    const-wide/16 v6, 0x0

    .line 295
    move-object/from16 v0, p0

    .line 297
    move-object/from16 v1, p1

    .line 299
    goto/16 :goto_11

    .line 301
    :cond_12c
    long-to-int v0, v4

    .line 302
    return v0
.end method

.method public final e(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            "I",
            "Ljava/util/ArrayList<",
            "Lw/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_35

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lw/d;

    .line 21
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 23
    if-eqz v2, :cond_24

    .line 25
    move-object v4, v1

    .line 26
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    move-object v3, p0

    .line 31
    move v5, p2

    .line 32
    move-object v7, p3

    .line 33
    invoke-virtual/range {v3 .. v8}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 36
    goto :goto_8

    .line 37
    :cond_24
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 39
    if-eqz v2, :cond_8

    .line 41
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 43
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v2, p0

    .line 48
    move v4, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-virtual/range {v2 .. v7}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 53
    goto :goto_8

    .line 54
    :cond_35
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 56
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6a

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lw/d;

    .line 74
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 76
    if-eqz v2, :cond_59

    .line 78
    move-object v4, v1

    .line 79
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 81
    const/4 v6, 0x1

    .line 82
    const/4 v8, 0x0

    .line 83
    move-object v3, p0

    .line 84
    move v5, p2

    .line 85
    move-object v7, p3

    .line 86
    invoke-virtual/range {v3 .. v8}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 89
    goto :goto_3d

    .line 90
    :cond_59
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 92
    if-eqz v2, :cond_3d

    .line 94
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 96
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 98
    const/4 v5, 0x1

    .line 99
    const/4 v7, 0x0

    .line 100
    move-object v2, p0

    .line 101
    move v4, p2

    .line 102
    move-object v6, p3

    .line 103
    invoke-virtual/range {v2 .. v7}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 106
    goto :goto_3d

    .line 107
    :cond_6a
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_93

    .line 110
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 112
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 114
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object p1

    .line 120
    :cond_77
    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_93

    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lw/d;

    .line 132
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 134
    if-eqz v1, :cond_77

    .line 136
    move-object v3, v0

    .line 137
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 139
    const/4 v5, 0x2

    .line 140
    const/4 v7, 0x0

    .line 141
    move-object v2, p0

    .line 142
    move v4, p2

    .line 143
    move-object v6, p3

    .line 144
    invoke-virtual/range {v2 .. v7}, Lw/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Lw/i;)V

    .line 147
    goto :goto_77

    .line 148
    :cond_93
    return-void
.end method

.method public final f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lw/e;->g:Lw/b$a;

    .line 3
    iput-object p2, v0, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    iput-object p4, v0, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 7
    iput p3, v0, Lw/b$a;->c:I

    .line 9
    iput p5, v0, Lw/b$a;->d:I

    .line 11
    iget-object p2, p0, Lw/e;->f:Lw/b$b;

    .line 13
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 15
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    .line 18
    iget-object p2, p0, Lw/e;->g:Lw/b$a;

    .line 20
    iget p2, p2, Lw/b$a;->e:I

    .line 22
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 25
    iget-object p2, p0, Lw/e;->g:Lw/b$a;

    .line 27
    iget p2, p2, Lw/b$a;->f:I

    .line 29
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 32
    iget-object p2, p0, Lw/e;->g:Lw/b$a;

    .line 34
    iget-boolean p3, p2, Lw/b$a;->h:Z

    .line 36
    iput-boolean p3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 38
    iget p2, p2, Lw/b$a;->g:I

    .line 40
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 42
    if-lez p2, :cond_2d

    .line 44
    const/4 p2, 0x1

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 p2, 0x0

    .line 47
    :goto_2e
    iput-boolean p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 49
    return-void
.end method

.method public final g()V
    .registers 13

    .line 1
    iget-object v0, p0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 3
    iget-object v0, v0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_c7

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 23
    if-eqz v2, :cond_19

    .line 25
    goto :goto_8

    .line 26
    :cond_19
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    const/4 v3, 0x0

    .line 29
    aget-object v8, v2, v3

    .line 31
    const/4 v9, 0x1

    .line 32
    aget-object v10, v2, v9

    .line 34
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 36
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 38
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 40
    if-eq v8, v6, :cond_32

    .line 42
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    if-ne v8, v5, :cond_30

    .line 46
    if-ne v2, v9, :cond_30

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    move v2, v3

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    :goto_32
    move v2, v9

    .line 52
    :goto_33
    if-eq v10, v6, :cond_3b

    .line 54
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 56
    if-ne v10, v5, :cond_3c

    .line 58
    if-ne v4, v9, :cond_3c

    .line 60
    :cond_3b
    move v3, v9

    .line 61
    :cond_3c
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 63
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 65
    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 67
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 69
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 71
    iget-boolean v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 73
    if-eqz v5, :cond_5b

    .line 75
    if-eqz v11, :cond_5b

    .line 77
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 81
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 83
    move-object v2, p0

    .line 84
    move-object v3, v1

    .line 85
    move-object v4, v6

    .line 86
    invoke-virtual/range {v2 .. v7}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 89
    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 91
    goto :goto_b6

    .line 92
    :cond_5b
    if-eqz v5, :cond_89

    .line 94
    if-eqz v3, :cond_89

    .line 96
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 98
    iget v8, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 100
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 102
    move-object v2, p0

    .line 103
    move-object v3, v1

    .line 104
    move-object v4, v5

    .line 105
    move v5, v8

    .line 106
    invoke-virtual/range {v2 .. v7}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 109
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 111
    if-ne v10, v2, :cond_7b

    .line 113
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 115
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 117
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 120
    move-result v3

    .line 121
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 123
    goto :goto_b6

    .line 124
    :cond_7b
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 126
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 128
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 131
    move-result v3

    .line 132
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 135
    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 137
    goto :goto_b6

    .line 138
    :cond_89
    if-eqz v11, :cond_b6

    .line 140
    if-eqz v2, :cond_b6

    .line 142
    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 144
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 148
    move-object v2, p0

    .line 149
    move-object v3, v1

    .line 150
    move-object v4, v6

    .line 151
    move-object v6, v10

    .line 152
    invoke-virtual/range {v2 .. v7}, Lw/e;->f(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 155
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 157
    if-ne v8, v2, :cond_a9

    .line 159
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 161
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 163
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 166
    move-result v3

    .line 167
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 169
    goto :goto_b6

    .line 170
    :cond_a9
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 172
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 174
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 177
    move-result v3

    .line 178
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 181
    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 183
    :cond_b6
    :goto_b6
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 185
    if-eqz v2, :cond_8

    .line 187
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 189
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/d;->l:Lw/a;

    .line 191
    if-eqz v2, :cond_8

    .line 193
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 195
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 198
    goto/16 :goto_8

    .line 200
    :cond_c7
    return-void
.end method
